const mongoose = require('mongoose');
require('dotenv').config({ path: '.env.production' });

console.log('🔗 Testing PRODUCTION database connection...');
console.log('Database URI:', process.env.MONGODB_URI.replace(/:([^@]+)@/, ':****@'));

mongoose.connect(process.env.MONGODB_URI)
.then(() => {
  console.log('✅ MongoDB Atlas PRODUCTION connection successful!');
  console.log('🎉 Production database is ready!');
  process.exit(0);
})
.catch(err => {
  console.error('❌ MongoDB connection error:', err.message);
  process.exit(1);
});
