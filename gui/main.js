const Tabs = {
    OVERVIEW: 0,
    RULES: 1,
    SUBJECTS: 2,
    TEACHERS: 3,
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

        showOverviewTab()
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

        showRulesTab()
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

        showSubjectsTab()
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

        showTeachersTab()
    }
}
function onSettingsClick() {
    console.log("onSettingsClick()")
}


function showOverviewTab() {
    console.log("showOverviewTab()")
}
function showRulesTab() {
    console.log("showRulesTab()")
}
function showSubjectsTab() {
    console.log("showSubjectsTab()")
}
function showTeachersTab() {
    console.log("showTeachersTab()")
}
