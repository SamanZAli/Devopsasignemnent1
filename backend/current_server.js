import dotenv from 'dotenv';
import express from 'express';
const app = express();

dotenv.config();
const PORT = process.env.PORT || 5000;

app.use(express.json());

app.get('/', (req, res) => {
    res.send('Task Management Backend Running');
});

app.listen(PORT, () => console.log(`Server running on port ${PORT}`));
