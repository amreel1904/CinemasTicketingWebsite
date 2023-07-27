/**
 * 
 */
function toggleTab(tabId) {
  // Hide all tab contents
  const tabContents = document.getElementsByClassName('tab-content');
  for (let i = 0; i < tabContents.length; i++) {
    tabContents[i].style.display = 'none';
  }
  
  // Deactivate all tab buttons
  const tabButtons = document.getElementsByClassName('tab-button');
  for (let i = 0; i < tabButtons.length; i++) {
    tabButtons[i].classList.remove('active');
    tabButtons[i].classList.add('not-active');
  }
  
  // Show the selected tab content
  const selectedTab = document.getElementById(tabId);
  selectedTab.style.display = 'grid';
  
  // Activate the selected tab button
  const selectedButton = document.querySelector(`[onclick="toggleTab('${tabId}')"]`);
  selectedButton.classList.add('active');
  selectedButton.classList.remove('not-active');
}