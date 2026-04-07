<!DOCTYPE html>
<html>
<head>
<title>Manish Devops World Its Works </title>

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<style>
body{margin:0;background:black;color:white;font-family:sans-serif}

/* NAV */
.nav{
display:flex;justify-content:space-between;
padding:15px;position:fixed;width:100%;
background:rgba(0,0,0,0.6);
backdrop-filter:blur(10px);
z-index:10
}
.logo{color:red;font-size:20px;font-weight:bold}
.btn{
background:red;color:white;padding:6px 12px;
border:none;border-radius:4px;cursor:pointer
}

/* HERO */
.hero{
height:80vh;
background:
linear-gradient(to top, black, transparent),
url('https://image.tmdb.org/t/p/original/49WJfeN0moxb9IPfGn8AIqMGskD.jpg') center/cover;
display:flex;align-items:flex-end;padding:20px
}
.hero h1{font-size:30px;margin:0}

/* ROW */
.row{padding:15px}
.cards{
display:flex;overflow-x:auto;gap:10px;
scroll-snap-type:x mandatory
}
.cards::-webkit-scrollbar{display:none}

/* CARD */
.card{
min-width:140px;height:200px;border-radius:8px;
background-size:cover;
scroll-snap-align:start;
transition:.3s;cursor:pointer;
position:relative
}
.card:hover{transform:scale(1.1)}

/* CARD OVERLAY */
.card::after{
content:"▶";
position:absolute;
top:50%;left:50%;
transform:translate(-50%,-50%);
font-size:30px;
opacity:0;transition:.3s
}
.card:hover::after{opacity:1}

/* MODAL */
.modal{
display:none;
position:fixed;
top:0;left:0;width:100%;height:100%;
background:rgba(0,0,0,0.9);
justify-content:center;
align-items:center;
z-index:100
}
.modal-content{
background:#111;padding:20px;
border-radius:10px;text-align:center;
width:90%;max-width:400px
}
.close{
float:right;cursor:pointer;font-size:20px
}

/* FOOTER */
.footer{text-align:center;color:gray;padding:20px;font-size:12px}
</style>
</head>

<body>

<div class="nav">
<div class="logo">Manish Devops</div>
<button class="btn">Login</button>
</div>

<div class="hero">
<div>
<h1>Stranger Things</h1>
<p>Welcome To Manish Devops World</p>
<button class="btn" onclick="playMovie()">▶ Play</button>
<button class="btn" onclick="addList()">+ My List</button>
</div>
</div>

<!-- TRENDING -->
<div class="row">
<h2>🔥 Trending Now</h2>
<div class="cards">
<div class="card" onclick="openModal()" style="background-image:url('https://image.tmdb.org/t/p/w500/qJxzjUjCpTPvDHldNnlbRC4OqEh.jpg')"></div>
<div class="card" onclick="openModal()" style="background-image:url('https://image.tmdb.org/t/p/w500/8WUVHemHFH2ZIP6NWkwlHWsyrEL.jpg')"></div>
<div class="card" onclick="openModal()" style="background-image:url('https://image.tmdb.org/t/p/w500/7WUHnWGx5OO145IRxPDUkQSh4C7.jpg')"></div>
</div>
</div>

<!-- MODAL -->
<div id="modal" class="modal">
<div class="modal-content">
<span class="close" onclick="closeModal()">✖</span>
<h2>Movie Preview</h2>
<p>This is demo preview (you can add video here)</p>
<button class="btn" onclick="playMovie()">▶ Play</button>
</div>
</div>

<div class="footer">
<p>© 2026 Manish Devops World</p>
</div>

<script>
function openModal(){
document.getElementById("modal").style.display="flex";
}

function closeModal(){
document.getElementById("modal").style.display="none";
}

function playMovie(){
alert("Playing movie...");
}

function addList(){
alert("Added to My List ❤️");
}
</script>

</body>
</html>
