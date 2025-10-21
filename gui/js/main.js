const Tabs = {
    OVERVIEW: 0,
    RULES: 1,
    SUBJECTS: 2,
    TEACHERS: 3,
    CLASSES: 4,
}
let currentTab = Tabs.OVERVIEW


function onOverviewClick() {
    console.log("Switching to OVERVIEW tab")

    if(currentTab != Tabs.OVERVIEW) {
        currentTab = Tabs.OVERVIEW

        navbutton_overview.checked = true
        navbutton_rules.checked = false
        navbutton_subjects.checked = false
        navbutton_teachers.checked = false
        navbutton_classes.checked = false
    }
}
function onRulesClick() {
    console.log("Switching to RULES tab")

    if(currentTab != Tabs.RULES) {
        currentTab = Tabs.RULES

        navbutton_overview.checked = false
        navbutton_rules.checked = true
        navbutton_subjects.checked = false
        navbutton_teachers.checked = false
        navbutton_classes.checked = false
    }
}
function onSubjectsClick() {
    console.log("Switching to SUBJECTS tab")

    if(currentTab != Tabs.SUBJECTS) {
        currentTab = Tabs.SUBJECTS

        navbutton_overview.checked = false
        navbutton_rules.checked = false
        navbutton_subjects.checked = true
        navbutton_teachers.checked = false
        navbutton_classes.checked = false
    }
}
function onTeachersClick() {
    console.log("Switching to TEACHERS tab")

    if(currentTab != Tabs.TEACHERS) {
        currentTab = Tabs.TEACHERS

        navbutton_overview.checked = false
        navbutton_rules.checked = false
        navbutton_subjects.checked = false
        navbutton_teachers.checked = true
        navbutton_classes.checked = false
    }
}
function onClassesClick() {
    console.log("Switching to CLASSES tab")

    if(currentTab != Tabs.CLASSES) {
        currentTab = Tabs.CLASSES

        navbutton_overview.checked = false
        navbutton_rules.checked = false
        navbutton_subjects.checked = false
        navbutton_teachers.checked = false
        navbutton_classes.checked = true
    }
}
function onSettingsClick() {
    console.log("onSettingsClick()")
}
