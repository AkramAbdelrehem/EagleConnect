const admin = require("firebase-admin/app");
admin.initializeApp();

const deletePastEvents = require("./delete_past_events.js");
exports.deletePastEvents = deletePastEvents.deletePastEvents;
