require("dotenv").config();
const mongoose = require("mongoose");
const express =require("express");
const cors = require("cors");
const helmet = require("helmet");
const cookieParser = require("cookie-parser");
const authRouter = require("./routes/authRouter")
const postsRouter = require("./routes/postsRouter")

const app = express();

app.use(express.json());
app.use(cors());
app.use(helmet());
app.use(cookieParser());
app.use(express.urlencoded({extended:true}));

mongoose.connect(process.env.MONGO_URI).then(()=>{
    console.log("Database Connected")
}).catch((err) =>{
    console.log(err);
}
)

app.use('/api/auth', authRouter);
app.use('/api/posts', postsRouter);

app.get('/',(req,res) => {
    res.json({message: "Hello world"});
});

app.listen(process.env.PORT, ()=>{
    console.log("Listening ...")
})

