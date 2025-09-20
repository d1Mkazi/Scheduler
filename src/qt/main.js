const Tabs = {
    OVERVIEW: 0,
    RULES: 1,
}

let currentTab = Tabs.OVERVIEW


function onOverviewClick() {
    console.log("Switching to OVERVIEW tab")

    if(currentTab != Tabs.OVERVIEW) {
        currentTab = Tabs.OVERVIEW
        navbutton_overview.checked = true
        navbutton_rules.checked = false

        showOverviewTab()
    } else {
        navbutton_overview.checked = true
    }
}
function onRulesClick() {
    console.log("Switching to RULES tab")

    if(currentTab != Tabs.RULES) {
        currentTab = Tabs.RULES
        navbutton_overview.checked = false
        navbutton_rules.checked = true

        showRulesTab()
    } else {
        navbutton_rules.checked = true
    }
}


function showOverviewTab() {
    console.log("showOverviewTab()")
}
function showRulesTab() {
    console.log("showRulesTab()")
}
