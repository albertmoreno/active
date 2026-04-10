
document.querySelectorAll('.nav-link').forEach(link=>{
  link.addEventListener('click',e=>{
    document.querySelectorAll('.nav-link').forEach(l=>l.classList.remove('active'));
    e.target.classList.add('active');
  });
});
