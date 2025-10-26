const Tabs = {
    OVERVIEW: 0,
    SUBJECTS: 1,
    TEACHERS: 2,
    CLASSES: 3,
    RULES: 4,
}
let currentTab = Tabs.OVERVIEW


function onOverviewClick() {
    console.log("Switching to OVERVIEW tab")

    if(currentTab != Tabs.OVERVIEW) {
        currentTab = Tabs.OVERVIEW

        navbutton_overview.checked = true
        navbutton_subjects.checked = false
        navbutton_teachers.checked = false
        navbutton_classes.checked = false
        navbutton_rules.checked = false
    }
}
function onRulesClick() {
    console.log("Switching to RULES tab")

    if(currentTab != Tabs.RULES) {
        currentTab = Tabs.RULES

        navbutton_overview.checked = false
        navbutton_subjects.checked = false
        navbutton_teachers.checked = false
        navbutton_classes.checked = false
        navbutton_rules.checked = true
    }
}
function onSubjectsClick() {
    console.log("Switching to SUBJECTS tab")

    if(currentTab != Tabs.SUBJECTS) {
        currentTab = Tabs.SUBJECTS

        navbutton_overview.checked = false
        navbutton_subjects.checked = true
        navbutton_teachers.checked = false
        navbutton_classes.checked = false
        navbutton_rules.checked = false
    }
}
function onTeachersClick() {
    console.log("Switching to TEACHERS tab")

    if(currentTab != Tabs.TEACHERS) {
        currentTab = Tabs.TEACHERS

        navbutton_overview.checked = false
        navbutton_subjects.checked = false
        navbutton_teachers.checked = true
        navbutton_classes.checked = false
        navbutton_rules.checked = false
    }
}
function onClassesClick() {
    console.log("Switching to CLASSES tab")

    if(currentTab != Tabs.CLASSES) {
        currentTab = Tabs.CLASSES

        navbutton_overview.checked = false
        navbutton_subjects.checked = false
        navbutton_teachers.checked = false
        navbutton_classes.checked = true
        navbutton_rules.checked = false
    }
}
function onSettingsClick() {
    console.log("onSettingsClick()")
}
