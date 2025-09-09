const Tabs = {
    MAIN: 0,
    SECONDARY: 1,
}

let currentTab = Tabs.MAIN


function onPrimaryClick() {
    console.log("Switching to MAIN tab")

    if(currentTab != Tabs.MAIN) {
        currentTab = Tabs.MAIN
        navbutton_main.checked = true
        navbutton_secondary.checked = false

        showMainTab()
    } else {
        navbutton_main.checked = true
    }
}
function onSecondaryClick() {
    console.log("Switching to SECONDARY tab")

    if(currentTab != Tabs.SECONDARY) {
        currentTab = Tabs.SECONDARY
        navbutton_main.checked = false
        navbutton_secondary.checked = true

        showSecondaryTab()
    } else {
        navbutton_secondary.checked = true
    }
}


function showMainTab() {
    console.log("showMainTab()")
}
function showSecondaryTab() {
    console.log("showSecondaryTab()")
}
