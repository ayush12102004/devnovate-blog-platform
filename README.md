# 🚀 DevNovate Blog Platform

[![MERN Stack](https://img.shields.io/badge/MERN-Stack-61DAFB?style=for-the-badge&logo=react&logoColor=white)](https://reactjs.org/)
[![MongoDB](https://img.shields.io/badge/MongoDB-4EA94B?style=for-the-badge&logo=mongodb&logoColor=white)](https://mongodb.com/)
[![Express.js](https://img.shields.io/badge/Express.js-404D59?style=for-the-badge&logo=express&logoColor=white)](https://expressjs.com/)
[![React](https://img.shields.io/badge/React-20232A?style=for-the-badge&logo=react&logoColor=61DAFB)](https://reactjs.org/)
[![Node.js](https://img.shields.io/badge/Node.js-43853D?style=for-the-badge&logo=node.js&logoColor=white)](https://nodejs.org/)
[![TailwindCSS](https://img.shields.io/badge/Tailwind_CSS-38B2AC?style=for-the-badge&logo=tailwind-css&logoColor=white)](https://tailwindcss.com/)

> **A modern, feature-rich blog platform built for developers by developers**

DevNovate is a cutting-edge blog platform designed to empower the developer community with a space to share knowledge, insights, and innovations. Built with the MERN stack and featuring a beautiful, responsive design, it offers both users and administrators a seamless blogging experience.

## 📋 Table of Contents

- [🌟 Features](#-features)
- [🛠️ Tech Stack](#️-tech-stack)
- [📦 Prerequisites](#-prerequisites)
- [🚀 Quick Start](#-quick-start)
- [📁 Project Structure](#-project-structure)
- [🔧 Configuration](#-configuration)
- [💻 Development](#-development)
- [🎯 Usage Guide](#-usage-guide)
- [👨‍💼 Admin Features](#-admin-features)
- [🔐 Authentication](#-authentication)
- [📱 Responsive Design](#-responsive-design)
- [🎨 Styling](#-styling)
- [🧪 Testing](#-testing)
- [🚢 Deployment](#-deployment)
- [🤝 Contributing](#-contributing)
- [📄 License](#-license)

## 🌟 Features

### 🎨 **Modern UI/UX**
- **Beautiful Design**: Clean, modern interface with glassmorphism effects
- **Responsive Layout**: Fully responsive design that works on all devices
- **Dark/Light Theme**: Elegant color schemes with smooth transitions
- **Interactive Animations**: Smooth hover effects, loading states, and transitions
- **Professional Typography**: Custom fonts (Inter + Poppins) for optimal readability

### 📖 **Content Management**
- **Rich Blog Editor**: Create and edit blog posts with markdown-style formatting
- **Category System**: Organize content with predefined categories
- **Tagging System**: Tag articles for better discoverability
- **Featured Images**: Add beautiful cover images to articles
- **Excerpt Generation**: Automatic or manual excerpt creation
- **Draft System**: Save drafts and publish when ready

### 🔥 **Trending & Discovery**
- **Trending Page**: Discover the most popular articles based on engagement
- **Advanced Search**: Search by title, content, tags, and categories
- **Category Filtering**: Filter articles by technology categories
- **Popular Content**: Algorithm-based trending content discovery
- **Clickable Articles**: Full article preview with detailed information

### 👤 **User Experience**
- **User Profiles**: Personalized profiles with stats and activity tracking
- **Author Pages**: View all articles by specific authors
- **Engagement Metrics**: Track likes, views, and comments
- **Personal Dashboard**: Manage your own articles and track performance
- **Reading Progress**: Visual indicators for reading progress

### 🛡️ **Security & Admin**
- **JWT Authentication**: Secure token-based authentication
- **Role-Based Access**: User and Admin role management
- **Content Moderation**: Admin approval system for new articles
- **User Management**: Complete user administration tools
- **Activity Monitoring**: Track platform usage and engagement

### 📊 **Analytics & Insights**
- **Real-time Stats**: Live dashboard with platform metrics
- **Engagement Analytics**: Track article performance
- **User Analytics**: Monitor user activity and growth
- **Admin Dashboard**: Comprehensive administrative overview

## 🛠️ Tech Stack

### **Frontend**
- **React 19.1.1** - Modern React with hooks and context
- **TailwindCSS 3.4.17** - Utility-first CSS framework
- **Lucide React** - Beautiful, customizable icons
- **Axios** - HTTP client for API requests
- **React Router DOM** - Client-side routing

### **Backend**
- **Node.js** - JavaScript runtime environment
- **Express.js 4.21.2** - Fast, minimalist web framework
- **MongoDB** - NoSQL database for data storage
- **Mongoose 7.8.7** - MongoDB object modeling
- **JWT** - JSON Web Token for authentication
- **Bcrypt.js** - Password hashing

### **Development Tools**
- **Nodemon** - Auto-restart development server
- **Jest** - Testing framework
- **ESLint** - Code linting and formatting
- **Autoprefixer** - CSS vendor prefixing
- **PostCSS** - CSS post-processing

## 📦 Prerequisites

Before running this project, make sure you have the following installed:

### **Required Software**
- **Node.js** (v16.0.0 or higher) - [Download](https://nodejs.org/)
- **npm** (v8.0.0 or higher) - Comes with Node.js
- **MongoDB** (v5.0 or higher) - [Download](https://www.mongodb.com/try/download/community)
- **Git** - For version control - [Download](https://git-scm.com/)

### **Optional but Recommended**
- **MongoDB Compass** - GUI for MongoDB - [Download](https://www.mongodb.com/products/compass)
- **Postman** - API testing - [Download](https://www.postman.com/)
- **VS Code** - Code editor - [Download](https://code.visualstudio.com/)

## 🚀 Quick Start

### **1. Clone the Repository**
```bash
git clone https://github.com/yourusername/devnovate-blog.git
cd devnovate-blog
```

### **2. Backend Setup**
```bash
# Navigate to backend directory
cd backend

# Install dependencies
npm install

# Create environment file
cp .env.example .env

# Start MongoDB service (if not running)
# Windows: Start MongoDB service from Services
# macOS: brew services start mongodb/brew/mongodb-community
# Linux: sudo systemctl start mongod

# Start the backend server
npm run dev
```

### **3. Frontend Setup**
```bash
# Open a new terminal and navigate to frontend directory
cd frontend

# Install dependencies
npm install

# Start the development server
npm start
```

### **4. Access the Application**
- **Frontend**: http://localhost:3000
- **Backend API**: http://localhost:5000
- **MongoDB**: mongodb://localhost:27017

## 📁 Project Structure

```
devnovate-blog/
├── 📁 backend/                 # Node.js/Express backend
│   ├── 📁 middleware/          # Custom middleware
│   │   └── auth.js            # JWT authentication middleware
│   ├── 📁 models/             # MongoDB schemas
│   │   ├── blog.js           # Blog post model
│   │   └── user.js           # User model
│   ├── 📁 routes/             # API endpoints
│   │   ├── admin.js          # Admin management routes
│   │   ├── auth.js           # Authentication routes
│   │   └── blogs.js          # Blog CRUD operations
│   ├── .env                  # Environment variables
│   ├── package.json          # Backend dependencies
│   ├── server.js             # Main server file
│   └── setup_database.js     # Database initialization
├── 📁 frontend/               # React frontend
│   ├── 📁 public/            # Static assets
│   ├── 📁 src/               # Source code
│   │   ├── App.js           # Main React component
│   │   ├── App.css          # Component styles
│   │   ├── index.js         # React entry point
│   │   └── index.css        # Global styles & Tailwind
│   ├── package.json         # Frontend dependencies
│   ├── tailwind.config.js   # Tailwind configuration
│   └── postcss.config.js    # PostCSS configuration
├── README.md                # Project documentation
└── .gitignore              # Git ignore rules
```

## 🔧 Configuration

### **Backend Environment Variables**
Create a `.env` file in the `backend` directory:

```env
# Server Configuration
PORT=5000
NODE_ENV=development

# Database Configuration
MONGODB_URI=mongodb://localhost:27017/devnovate-blog

# Authentication
JWT_SECRET=your-super-secure-jwt-secret-key-here

# Email Configuration (Optional)
EMAIL_HOST=smtp.gmail.com
EMAIL_PORT=587
EMAIL_USER=your-email@gmail.com
EMAIL_PASS=your-app-password

# Frontend URL
FRONTEND_URL=http://localhost:3000
```

### **Frontend Configuration**
The frontend automatically connects to `http://localhost:5000` for the backend API. This can be modified in `src/App.js`:

```javascript
const API_BASE = 'http://localhost:5000/api';
```

## 💻 Development

### **Development Commands**

#### **Backend Commands**
```bash
cd backend

# Start development server with auto-reload
npm run dev

# Start production server
npm start

# Run tests
npm test

# Seed database with sample data
npm run seed
```

#### **Frontend Commands**
```bash
cd frontend

# Start development server
npm start

# Build for production
npm run build

# Run tests
npm test

# Eject webpack configuration (irreversible)
npm run eject
```

### **Key Development Scripts**

#### **Start Both Servers Simultaneously**
```bash
# Terminal 1 - Backend
cd backend && npm run dev

# Terminal 2 - Frontend
cd frontend && npm start
```

## 🎯 Usage Guide

### **🔐 Default Login Credentials**

The application includes demo accounts for testing:

#### **Admin Account**
- **Email**: `admin@devnovate.com`
- **Password**: `admin123`
- **Features**: Full admin dashboard, content moderation, user management

#### **Regular User Account**
- **Email**: `user@example.com`
- **Password**: `user123`
- **Features**: Create posts, manage profile, engage with content

#### **Demo Account**
- **Email**: `demo@devnovate.com`
- **Password**: `demo123`
- **Features**: Standard user features for demonstration

### **📝 Creating Your First Blog Post**

1. **Sign In**: Use any of the demo accounts or create a new account
2. **Navigate to Write**: Click the "Write" button in the navigation
3. **Fill in Details**:
   - **Title**: Your blog post title
   - **Excerpt**: Brief description (optional)
   - **Content**: Full article content
   - **Category**: Choose from available categories
   - **Tags**: Comma-separated tags
   - **Featured Image**: URL to cover image (optional)
4. **Publish**: Click "Publish Blog" to submit for review

### **🔥 Exploring Trending Content**

1. **Visit Trending Page**: Click "Trending" in the navigation
2. **Browse Popular Articles**: Articles are ranked by engagement metrics
3. **Read Articles**: Click any article card to view full content
4. **Interact**: Like articles and view engagement stats
5. **Filter by Category**: Use category badges to filter content

### **👤 Managing Your Profile**

1. **Access Profile**: Click "Profile" in the navigation
2. **View Stats**: See your article count, likes, and publishing stats
3. **Manage Content**: Edit or delete your published articles
4. **Track Performance**: Monitor views, likes, and comments on your posts

## 👨‍💼 Admin Features

### **📊 Admin Dashboard**
- **Platform Statistics**: Total articles, users, and engagement metrics
- **Content Moderation**: Review and approve/reject pending articles
- **User Management**: Monitor user activity and manage accounts
- **Quick Actions**: Fast access to common administrative tasks

### **📝 Content Management**
- **Approve Articles**: Review and approve user-submitted content
- **Reject with Feedback**: Provide constructive feedback to authors
- **Hide/Show Content**: Control article visibility
- **Delete Content**: Remove inappropriate or outdated articles

### **👥 User Administration**
- **User Overview**: View all registered users
- **Account Management**: Enable/disable user accounts
- **Role Management**: Assign admin privileges
- **Activity Monitoring**: Track user engagement and contributions

## 🔐 Authentication

### **JWT Token System**
- **Secure Authentication**: JWT tokens for stateless authentication
- **Auto-expiration**: Tokens automatically expire for security
- **Role-based Access**: Different permissions for users and admins
- **Persistent Login**: Remember user sessions across browser sessions

### **Password Security**
- **Bcrypt Hashing**: Industry-standard password hashing
- **Salt Rounds**: Additional security with random salt generation
- **Secure Storage**: Passwords never stored in plain text

## 📱 Responsive Design

### **Mobile-First Approach**
- **Touch-Friendly**: Optimized for mobile interactions
- **Responsive Grid**: Adaptive layouts for all screen sizes
- **Mobile Navigation**: Collapsible menu for mobile devices
- **Touch Gestures**: Support for swipe and touch interactions

### **Breakpoints**
- **Mobile**: 320px - 768px
- **Tablet**: 768px - 1024px
- **Desktop**: 1024px - 1440px
- **Large Desktop**: 1440px+

## 🎨 Styling

### **Design System**
- **Color Palette**: Carefully curated colors with accessibility in mind
- **Typography**: Professional font hierarchy with Inter and Poppins
- **Component Library**: Reusable UI components with consistent styling
- **Animation System**: Smooth, performant animations and transitions

### **TailwindCSS Features**
- **Custom Colors**: Extended color palette for brand consistency
- **Custom Animations**: Smooth fade-ins, slide-ups, and scale effects
- **Responsive Utilities**: Mobile-first responsive design utilities
- **Component Classes**: Pre-built component classes for consistency

### **Custom CSS Classes**
```css
.btn-primary          /* Primary action buttons */
.btn-secondary        /* Secondary action buttons */
.card-enhanced        /* Enhanced card components */
.input-enhanced       /* Styled form inputs */
.glass-effect         /* Glassmorphism effects */
.gradient-text        /* Gradient text effects */
.hover-lift           /* Hover lift animations */
```

## 🧪 Testing

### **Frontend Testing**
```bash
cd frontend

# Run all tests
npm test

# Run tests with coverage
npm test -- --coverage

# Run tests in watch mode
npm test -- --watch
```

### **Backend Testing**
```bash
cd backend

# Run API tests
npm test

# Run tests with coverage
npm test -- --coverage
```

### **Testing Features**
- **Unit Tests**: Component and function testing
- **Integration Tests**: API endpoint testing
- **Authentication Tests**: Login/logout functionality
- **CRUD Tests**: Blog creation, reading, updating, deletion

## 🚢 Deployment

### **Frontend Deployment (Netlify/Vercel)**
```bash
cd frontend

# Build for production
npm run build

# The build folder contains static files ready for deployment
```

### **Backend Deployment (Heroku/Railway)**
```bash
cd backend

# Set environment variables in production
# Deploy using your preferred platform

# Make sure to set:
# - PORT (automatically set by most platforms)
# - MONGODB_URI (MongoDB Atlas connection string)
# - JWT_SECRET (secure random string)
# - NODE_ENV=production
```

### **Environment Setup for Production**
1. **Database**: Set up MongoDB Atlas or your preferred MongoDB hosting
2. **Environment Variables**: Configure all required environment variables
3. **CORS**: Update CORS settings for your production domains
4. **Security**: Enable additional security headers and rate limiting

## 🔗 API Endpoints

### **Authentication Routes** (`/api/auth`)
```http
POST /register          # Register new user
POST /login             # User login
GET  /profile           # Get user profile
PUT  /profile           # Update user profile
```

### **Blog Routes** (`/api/blogs`)
```http
GET    /                # Get all approved blogs (with pagination)
GET    /trending        # Get trending blogs
GET    /:id             # Get specific blog post
POST   /                # Create new blog post (auth required)
PUT    /:id             # Update blog post (auth required)
DELETE /:id             # Delete blog post (auth required)
GET    /user/my-blogs   # Get current user's blogs (auth required)
```

### **Admin Routes** (`/api/admin`)
```http
GET  /dashboard         # Admin dashboard stats (admin only)
GET  /blogs             # Get all blogs including pending (admin only)
PUT  /blogs/:id/approve # Approve blog post (admin only)
PUT  /blogs/:id/reject  # Reject blog post (admin only)
GET  /users             # Get all users (admin only)
PUT  /users/:id/role    # Update user role (admin only)
```

## 📊 Database Schema

### **User Model**
```javascript
{
  username: String (required, unique),
  email: String (required, unique),
  password: String (required, hashed),
  role: String (default: 'user'), // 'user' or 'admin'
  profilePicture: String,
  bio: String,
  socialLinks: Object,
  isActive: Boolean (default: true),
  createdAt: Date,
  updatedAt: Date
}
```

### **Blog Model**
```javascript
{
  title: String (required),
  content: String (required),
  excerpt: String,
  author: ObjectId (ref: 'User'),
  category: String (required),
  tags: [String],
  featuredImage: String,
  status: String (default: 'pending'), // 'pending', 'approved', 'rejected', 'hidden'
  adminFeedback: String,
  likes: [ObjectId] (ref: 'User'),
  comments: [Object],
  views: Number (default: 0),
  isPublished: Boolean (default: false),
  publishedAt: Date,
  createdAt: Date,
  updatedAt: Date
}
```

## ⚡ Performance Features

### **Frontend Optimizations**
- **Code Splitting**: Lazy loading for better performance
- **Image Optimization**: Automatic image optimization and lazy loading
- **Bundle Optimization**: Webpack optimizations for smaller bundle size
- **Caching**: Efficient caching strategies for static assets

### **Backend Optimizations**
- **Database Indexing**: Optimized database queries with proper indexing
- **API Rate Limiting**: Prevent abuse with rate limiting
- **Compression**: Gzip compression for API responses
- **Connection Pooling**: Efficient database connection management

## 🔒 Security Features

### **Frontend Security**
- **XSS Protection**: Input sanitization and validation
- **CSRF Protection**: Cross-site request forgery prevention
- **Secure Headers**: Security headers for enhanced protection

### **Backend Security**
- **Helmet.js**: Security headers and protection
- **Input Validation**: Comprehensive input validation and sanitization
- **Rate Limiting**: API rate limiting to prevent abuse
- **CORS Configuration**: Proper cross-origin resource sharing setup

## 🎯 Key Features Implemented

### ✅ **Recently Added: Functional Trending Page**
- **Clickable Articles**: All trending articles now open when clicked
- **Enhanced UI**: Improved visual feedback and animations
- **Interactive Elements**: Working like, comment, and view buttons
- **Detailed Previews**: Rich article previews with full content access
- **Engagement Tracking**: Real-time stats for trending articles

### ✅ **Core Features**
- ✅ User Authentication (Login/Register/JWT)
- ✅ Blog Creation and Management
- ✅ Category and Tag System
- ✅ Admin Dashboard and Content Moderation
- ✅ Responsive Design
- ✅ Search and Filtering
- ✅ Trending Algorithm
- ✅ User Profiles and Statistics
- ✅ Real-time Connection Status
- ✅ Mock Data System for Offline Demo

## 🚀 Running the Project

### **Development Mode**

1. **Start Backend Server**:
   ```bash
   cd backend
   npm run dev
   ```
   Server will run on: `http://localhost:5000`

2. **Start Frontend Application** (in a new terminal):
   ```bash
   cd frontend
   npm start
   ```
   Application will open at: `http://localhost:3000`

3. **Start MongoDB** (if not already running):
   ```bash
   # Windows (if MongoDB is installed as service)
   net start MongoDB

   # macOS
   brew services start mongodb/brew/mongodb-community

   # Linux
   sudo systemctl start mongod
   ```

### **Production Mode**

1. **Build Frontend**:
   ```bash
   cd frontend
   npm run build
   ```

2. **Start Backend**:
   ```bash
   cd backend
   npm start
   ```

## 🎮 Demo Mode

The application includes a comprehensive demo mode that works without a backend connection:

- **Mock Data**: Pre-loaded with sample blog posts and users
- **Full Functionality**: All features work with simulated data
- **Offline Mode**: Complete offline experience for demonstrations
- **Auto-Fallback**: Automatically switches to demo mode if backend is unavailable

## 🛠️ Troubleshooting

### **Common Issues**

#### **MongoDB Connection Issues**
```bash
# Check if MongoDB is running
# Windows
sc query MongoDB

# macOS/Linux
brew services list | grep mongodb
systemctl status mongod
```

#### **Port Already in Use**
```bash
# Kill process on port 3000 (frontend)
npx kill-port 3000

# Kill process on port 5000 (backend)
npx kill-port 5000
```

#### **Module Not Found Errors**
```bash
# Clear npm cache and reinstall
rm -rf node_modules package-lock.json
npm install
```

#### **CORS Issues**
- Check that frontend URL is correctly configured in backend CORS settings
- Verify API_BASE URL in frontend matches backend server address

## 📋 Development Checklist

### **Before Committing**
- [ ] Run frontend tests: `cd frontend && npm test`
- [ ] Run backend tests: `cd backend && npm test`
- [ ] Check code formatting: Ensure ESLint passes
- [ ] Test in different browsers: Chrome, Firefox, Safari
- [ ] Test responsive design: Mobile, tablet, desktop
- [ ] Verify all features work in demo mode

### **Before Deployment**
- [ ] Build frontend: `npm run build`
- [ ] Set production environment variables
- [ ] Test production build locally
- [ ] Verify database connections
- [ ] Check security headers and CORS settings

## 🤝 Contributing

### **How to Contribute**

1. **Fork the Repository**
2. **Create Feature Branch**: `git checkout -b feature/amazing-feature`
3. **Commit Changes**: `git commit -m 'Add amazing feature'`
4. **Push to Branch**: `git push origin feature/amazing-feature`
5. **Open Pull Request**

### **Development Guidelines**
- Follow existing code style and conventions
- Write tests for new features
- Update documentation for significant changes
- Use meaningful commit messages
- Ensure all tests pass before submitting

## 📈 Roadmap

### **Upcoming Features**
- [ ] **Real-time Comments**: Live comment system with WebSocket
- [ ] **Rich Text Editor**: WYSIWYG editor for blog creation
- [ ] **Image Upload**: Direct image upload functionality
- [ ] **Social Login**: Google, GitHub, LinkedIn authentication
- [ ] **Email Notifications**: Author and admin notifications
- [ ] **Advanced Analytics**: Detailed analytics dashboard
- [ ] **SEO Optimization**: Meta tags and structured data
- [ ] **Progressive Web App**: PWA capabilities for mobile

### **Long-term Goals**
- [ ] **Multi-language Support**: Internationalization
- [ ] **Advanced Search**: Elasticsearch integration
- [ ] **Content Scheduling**: Schedule posts for future publishing
- [ ] **Team Collaboration**: Multi-author blog management
- [ ] **Payment Integration**: Premium content and subscriptions

## 🐛 Known Issues

- **Backend Connection**: If MongoDB is not running, application falls back to demo mode
- **Image Loading**: Some external images may fail to load due to CORS policies
- **Mobile Safari**: Some animations may be less smooth on older iOS devices

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👥 Development Team

**Created by Four Students from Bhilai Institute of Technology (BIT), Durg:**
- **Student 1**: [Name] - *Frontend Development & UI/UX Design*
- **Student 2**: [Name] - *Backend Development & API Design*
- **Student 3**: [Name] - *Database Design & Authentication Systems*
- **Student 4**: [Name] - *Project Management & Quality Assurance*

**Institution**: Bhilai Institute of Technology (BIT)  
**Location**: Durg, Chhattisgarh, India  
**Year**: 2025  
**Project Type**: Academic Innovation Project / Hackathon Submission

### 🏆 Academic Achievement
This project represents the collaborative effort and technical excellence of emerging software developers from BIT Durg, showcasing:
- Full-stack development proficiency with MERN stack
- Modern development practices and clean architecture
- User-centered design approach and responsive UI/UX
- Collaborative development workflow and project management
- Problem-solving skills and innovative feature implementation

## 🙏 Acknowledgments

### **Institution & Faculty**
- **Bhilai Institute of Technology, Durg** - For providing excellent technical education and innovation support
- **Faculty Members** - For guidance, mentorship, and technical direction throughout the project
- **BIT Development Community** - For peer support and collaborative learning environment

### **Technical Acknowledgments**
- **React Team** - For the powerful React framework that powers our frontend
- **TailwindCSS** - For the utility-first CSS framework enabling rapid UI development
- **Lucide** - For the beautiful, consistent icon set
- **MongoDB** - For the flexible NoSQL database solution
- **Express.js** - For the fast, minimalist web framework
- **Open Source Community** - For the amazing tools and libraries that made this project possible

### **Special Recognition**
- **VIBE HACK 2025** - Hackathon platform for showcasing student innovation
- **MERN Stack Community** - For excellent documentation and community support
- **GitHub** - For providing the platform for collaborative development
- **All Beta Testers** - Students and faculty who provided valuable feedback

## 📞 Contact & Support

### **Project Information**
- **Institution**: Bhilai Institute of Technology, Durg
- **Location**: Durg, Chhattisgarh, India
- **Project**: DevNovate Blog Platform
- **Year**: 2025
- **Team**: BIT Durg Development Team

### **Support Channels**
1. **GitHub Issues**: For bug reports and feature requests
2. **Documentation**: Review this README and inline code documentation
3. **Academic Contact**: Through Bhilai Institute of Technology
4. **Community**: Developer community discussions

## 📜 Copyright & Attribution

### **Copyright Notice**
© 2025 DevNovate Blog Platform Development Team  
Bhilai Institute of Technology, Durg, Chhattisgarh, India

### **Attribution Requirements**
This is an open-source project with mandatory attribution requirements. Any use, modification, or distribution of this software MUST include:

**"Originally developed by students of Bhilai Institute of Technology, Durg"**  
**"DevNovate Blog Platform © 2025 BIT Durg Development Team"**

### **Usage Rights**
- ✅ **Free to Use**: Personal and commercial use permitted
- ✅ **Modify & Distribute**: Modification and redistribution allowed
- ✅ **Educational Use**: Encouraged for learning and teaching
- ⚠️ **Attribution Required**: Must maintain credits to original creators
- ⚠️ **License Preservation**: Must include original license and attribution

---

### 🚀 **Ready to Start?**

```bash
# Quick setup commands
git clone [repository-url]
cd blog-devnovate

# Setup backend
cd backend && npm install && npm run dev

# Setup frontend (in new terminal)
cd frontend && npm install && npm start
```

**Happy Blogging! 📝✨**

---

### 🎓 **Proudly Built by Students of Bhilai Institute of Technology, Durg**
> **Showcasing Innovation | Empowering Education | Contributing to Open Source**  
> **DevNovate Blog Platform © 2025 BIT Durg Development Team**
