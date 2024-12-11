from lxml import etree

# Load the XML and XSLT files
xml_file = 'recepta.xml'    
xslt_file = 'recepta.xslt'

# Parse the XML and XSLT files
xml = etree.parse(xml_file)
xslt = etree.parse(xslt_file)
transform = etree.XSLT(xslt)

# Check if the XML has recipe elements
recipes = xml.xpath('//receta')
print(f"Found {len(recipes)} recipes in the XML.")

# Apply the transformation for each recipe
for recipe in recipes:
    recipe_id = recipe.get('id')
    recipe_name = recipe.find('name').text

    print(f"Processing recipe: {recipe_name} - ID: {recipe_id}")

    # Perform the transformation on the individual recipe
    # Wrap the single recipe in a root element to make it a valid XML document
    recipe_xml_str = etree.tostring(recipe)
    single_recipe_xml = etree.fromstring(f"<recetas>{recipe_xml_str.decode()}</recetas>")
    
    output = transform(single_recipe_xml)

    # Check if the transformation produced output
    if output is not None:
        # Generate the output HTML filename based on the recipe ID
        filename = f"recipe_{recipe_id}.html"
        
        # Write the output to the respective file
        with open(filename, 'wb') as f:
            f.write(etree.tostring(output, pretty_print=True))
        
        print(f"Generated: {filename}")
    else:
        print(f"Transformation failed for recipe {recipe_id}")