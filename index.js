// Exports
const {Client, GatewayIntentBits, Partials, Status, ActivityType} = require('discord.js')
const client = new Client({
  allowedMentions: {parse: ["users", "roles"], repliedUser: true},
  intents: [GatewayIntentBits.Guilds, GatewayIntentBits.GuildMembers],
  partials: [Partials.GuildMember, Partials.User],
  presence: {status: 'dnd'}
})

// dotenviornment
require('dotenv').config();
client.login(process.env.Discord_Token)