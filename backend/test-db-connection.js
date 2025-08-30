// Test Database Connection Script
const mongoose = require('mongoose');
require('dotenv').config();

const MONGODB_URI = 'mongodb+srv://ayush13dp_db_user:Parganih1210%40@cluster0.wnkuptn.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0';

console.log('🔗 Testing database connection...');
console.log('Database URI:', MONGODB_URI.replace(/:[^:@]*@/, ':****@')); // Hide password in logs

mongoose.connect(MONGODB_URI, {
  useNewUrlParser: true,
  useUnifiedTopology: true,
})
.then(() => {
  console.log('✅ MongoDB Atlas connection successful!');
  console.log('🎉 Database is ready for production deployment!');
  process.exit(0);
})
.catch(err => {
  console.error('❌ MongoDB connection error:', err.message);
  console.error('🚨 Please check your connection string and database credentials');
  process.exit(1);
});
