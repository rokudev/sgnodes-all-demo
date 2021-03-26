
function init()
    'The following LabelList is identifable in the "sgnodes all" command under the name "list"'
    'Notice that the osref count for m.list in this case is 1 which is referring to the MainScene which is the parent of m.list'
    'Notice that the bscref count for m.list int his case is also 1 which is referring to the variable m that references it'
    'If we are to remove the reference from m and rename our "m.list" variable to "list", it will drop our bscref count to 0 as we have removed the reference from m'
    m.list = m.top.FindNode("list")
    m.list.observeField("itemSelected", "onItemSelected")


    'The following content node is identifiable in "sgnodes all" command under the title "parentContentNode"'
    'Notice that the osref count for this content node is 1 which is referring to the parent LabelList'
    'Notice that the bscref count for this content node is also 1 which is referring to the variable m that references it'
    'If we are to remove the reference from m and rename 
    m.content = createObject("RoSGNode", "ContentNode")
    m.content.title = ("parentContentNode")
    
    '------------------------------------------------'
    'Change "count" to create specified number of items in list'
    count = 4
    for i = 0 to count
        addListItem("List Item " + Str(i))
    end for
    m.list.content = m.content
    m.list.setFocus(true)
end function

function addListItem(label as string)
    item = createObject("RoSGNode", "ContentNode")
    item.title = label
    m.content.AppendChild(item)
end function

function onItemSelected() as void
    print "Item Selected"
    print "Foo"
end function
