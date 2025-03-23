// Function to filter papers by tag
document.addEventListener('DOMContentLoaded', function() {
  // Get all paper tags
  const tags = document.querySelectorAll('.paper-tag');
  
  // Remove pointer cursor from tags - they're now just for display
  const style = document.createElement('style');
  style.textContent = `
    .paper-tag {
      cursor: default;
    }
  `;
  document.head.appendChild(style);
  
  // Add tag display information
  const firstList = document.querySelector('.main-content > ul');
  if (firstList) {
    const instructions = document.createElement('p');
    instructions.innerHTML = '<small>Tags indicate research areas and topics.</small>';
    instructions.style.marginTop = '10px';
    instructions.style.marginBottom = '20px';
    firstList.parentNode.insertBefore(instructions, firstList);
  }
}); 