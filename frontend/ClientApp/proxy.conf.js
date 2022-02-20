const { env } = require('process');

const target = "https://localhost:44408"

const PROXY_CONFIG = {
  "/api/courseslist": {
    target,
    secure: false,
    headers: {
      Connection: 'Keep-Alive'
    }
  },
  "/api/studentslist": {
    target,
    secure: false,
    headers: {
      Connection: 'Keep-Alive'
    }
  },
  "/api/subjectslist": {
    target,
    secure: false,
    headers: {
      Connection: 'Keep-Alive'
    }
  }
}

module.exports = PROXY_CONFIG;
