var lastId = 0

const colors = {
    0: "red",
    1: "blue",
    2: "green"
}


function loadComponent(url) {
    let comp = Qt.createComponent(url)

    if(comp.status == Component.Error) {
        console.log("Error while loading component '${url}':", comp.errorString())
        return null
    } else {
        while(comp.status != Component.Ready);
        return comp
    }
}

function addTeacher(surname, firstname, secondname) {
    if(surname == "" || firstname == "" || secondname == "") {
        return
    }

    let element = loadComponent("TeacherListElement.qml", teacherList)

    if(!element) {
        return
    }

    let obj = element.createObject(teacherList)

    obj.surnameField.text = surname
    obj.firstnameField.text = firstname
    obj.secondnameField.text = secondname

    field_surname.text = ""
    field_firstname.text = ""
    field_secondname.text = ""

    lastId++;
}

function removeTeacher(obj) {
    obj.destroy()
}
