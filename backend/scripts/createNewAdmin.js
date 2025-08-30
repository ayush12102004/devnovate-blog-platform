const mongoose = require('mongoose');
const User = require('../models/User');
const dotenv = require('dotenv');

dotenv.config({ path: '.env.production' });

async function createNewAdmin() {
  try {
    // Connect to MongoDB
    await mongoose.connect(process.env.MONGODB_URI, {
      useNewUrlParser: true,
      useUnifiedTopology: true,
    });
    
    console.log('Connected to production MongoDB');

    // Create a new admin user with your credentials
    const newAdmin = new User({
      username: 'ayushAdmin',
      email: 'lakshyaparmar1282@gmail.com', // Using different email to avoid conflicts
      password: 'Admin@123', // You can change this to whatever you want
      role: 'admin'
    });

    await newAdmin.save();
    console.log('✅ New admin user created successfully!');
    console.log('👤 Username: ayushAdmin');
    console.log('📧 Email: lakshyaparmar1282@gmail.com');
    console.log('🔐 Password: Admin@123');
    console.log('🛡️  Role: admin');
    console.log('');
    console.log('🚀 You can now login to your app with these credentials!');

  } catch (error) {
    if (error.code === 11000) {
      console.log('❌ User with this username or email already exists');
      console.log('✨ Try using the existing admin account:');
      console.log('👤 Username: admin');
      console.log('📧 Email: admin@example.com');
      console.log('🔐 Password: admin123 (default password from seed data)');
    } else {
      console.error('❌ Error creating admin user:', error.message);
    }
  } finally {
    mongoose.connection.close();
  }
}

createNewAdmin();
