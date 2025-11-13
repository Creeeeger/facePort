.class public Landroid/sec/enterprise/auditlog/AuditEvents;
.super Ljava/lang/Object;
.source "AuditEvents.java"


# static fields
.field public static final blacklist ACCESSING_HOST:Ljava/lang/String; = "Accessing host "

.field public static final blacklist ACCOUNT_ADDING:Ljava/lang/String; = "Adding "

.field public static final blacklist ACCOUNT_REMOVING:Ljava/lang/String; = "Removing "

.field public static final blacklist ACCOUNT_UPDATING:Ljava/lang/String; = "Updating "

.field public static final blacklist ACTIVITY_ANR:Ljava/lang/String; = "ANR occurred in application"

.field public static final blacklist ADMIN_CERT_DELETE:Ljava/lang/String; = "Admin deleting certificate "

.field public static final blacklist ADMIN_CERT_INSTALL:Ljava/lang/String; = "Admin installing certificate "

.field public static final blacklist ADMIN_DISCOVERABLE_BT_STATUS:Ljava/lang/String; = "Admin has change discoverable mode status to "

.field public static final blacklist ADMIN_DISCOVERABLE_LIMITED_BT_STATUS:Ljava/lang/String; = "Admin Discoverable limited mode"

.field public static final blacklist APP:Ljava/lang/String; = "Application "

.field public static final blacklist APP_CRASHED_DUE:Ljava/lang/String; = "crashed due to"

.field public static final blacklist AUDIT_CRITICAL_SIZE_CHANGED:Ljava/lang/String; = "AuditLog critical size has changed to "

.field public static final blacklist AUDIT_CRITICAL_SIZE_REACHED:Ljava/lang/String; = "AuditLog has reached its critical size. Percentage is "

.field public static final blacklist AUDIT_FILTER_CHANGED:Ljava/lang/String; = "AuditLog filter rules has changed."

.field public static final blacklist AUDIT_IPTABLES_DISABLED:Ljava/lang/String; = "AuditLog iptables log status has changed to disabled"

.field public static final blacklist AUDIT_IPTABLES_ENABLED:Ljava/lang/String; = "AuditLog iptables log status has changed to enabled"

.field public static final blacklist AUDIT_LOG_STATUS_CHANGED:Ljava/lang/String; = "AuditLog status has changed to "

.field public static final blacklist AUDIT_MAX_SIZE_CHANGED:Ljava/lang/String; = "AuditLog maximum size has changed to "

.field public static final blacklist AUTO_COMPLETING_DATA:Ljava/lang/String; = "Auto-completing data for field "

.field public static final blacklist AndroidBeam_DISABLING:Ljava/lang/String; = "Disabling AndroidBeam_"

.field public static final blacklist AndroidBeam_ENABLING:Ljava/lang/String; = "Enabling AndroidBeam_"

.field public static final blacklist BACKUP_RESTORE_DATA_FAILED:Ljava/lang/String; = "Performing user data restore failed "

.field public static final blacklist BACKUP_RESTORE_DATA_FAILED_NO_RESTORE:Ljava/lang/String; = "Performing user data restore failed - no restore data available "

.field public static final blacklist BACKUP_RESTORE_DATA_SUCCEEDED:Ljava/lang/String; = "Performing user data restore succeeded "

.field public static final blacklist BACKUP_USERDATA:Ljava/lang/String; = "Performing user data backup succeeded "

.field public static final blacklist BACKUP_USERDATA_PACKAGE:Ljava/lang/String; = "Performing user data backup of package "

.field public static final blacklist BACKUP_USER_DATA_WIPEOUT:Ljava/lang/String; = "Performing user data wipeout of package "

.field public static final blacklist BEGIN_INSTALL_APPLICATION:Ljava/lang/String; = "Starting to install Application %s version %s"

.field public static final blacklist BT_DISABLING:Ljava/lang/String; = "Disabling Bluetooth"

.field public static final blacklist BT_ENABLING:Ljava/lang/String; = "Enabling Bluetooth"

.field public static final blacklist BT_EXCHANGING_DATA_FAILED:Ljava/lang/String; = "Exchanging data via bluetooth failed - restricted."

.field public static final blacklist BT_EXCHANGING_DATA_SUCCEEDED:Ljava/lang/String; = "Exchanging data via bluetooth succeeded."

.field public static final blacklist CANCELLED:Ljava/lang/String; = " cancelled"

.field public static final blacklist CAPTURE_SCRSHOT:Ljava/lang/String; = "Capturing screenshot"

.field public static final blacklist CEP_REQUEST_FAILED:Ljava/lang/String; = "CEP service handling request failed"

.field public static final blacklist CEP_REQUEST_SUCCEEDED:Ljava/lang/String; = "CEP service handling request succeeded"

.field public static final blacklist CERT_DELETE:Ljava/lang/String; = "Deleting certificate "

.field public static final blacklist CERT_DISABLE:Ljava/lang/String; = "Disabling certificate "

.field public static final blacklist CERT_INSTALL:Ljava/lang/String; = "Installing certificate "

.field public static final blacklist CLEAR_CREDENTIALS:Ljava/lang/String; = "Clearing credentials "

.field public static final blacklist CONNECTING_DEVICE_BT:Ljava/lang/String; = "Connecting to bluetooth device failed. Either A2DP or SPP profile is blocked."

.field public static final blacklist CONNECTING_VPN:Ljava/lang/String; = "Connecting to VPN network "

.field public static final blacklist CREATE_PASS_FAIL:Ljava/lang/String; = "Password change/creation failed."

.field public static final blacklist CREATE_PASS_SUCCESS:Ljava/lang/String; = "Password created/changed successfully."

.field public static final blacklist DATA_DISABLING:Ljava/lang/String; = "Disabling Cellular Data"

.field public static final blacklist DATA_ENABLING:Ljava/lang/String; = "Enabling Cellular Data"

.field public static final blacklist DECRYPT_SD:Ljava/lang/String; = "Decrypting storage card"

.field public static final blacklist DELETE_APN:Ljava/lang/String; = "Deleting APN "

.field public static final blacklist DISABLE:Ljava/lang/String; = " disable"

.field public static final blacklist DISABLING:Ljava/lang/String; = " disabling"

.field public static final blacklist DISCONNECTING_VPN:Ljava/lang/String; = "Disconnecting from VPN network "

.field public static final blacklist DISCOVERABLE_BT:Ljava/lang/String; = "Setting bluetooth device as discoverable"

.field public static final blacklist DISCOVERABLE_BT_FAILED:Ljava/lang/String; = "Attempt to set discoverable mode failed. Discoverable mode is restricted."

.field public static final blacklist DISCOVERABLE_BT_STATUS:Ljava/lang/String; = "Discoverable mode status has changed to "

.field public static final blacklist DISCOVERABLE_LIMITED_BT_STATUS:Ljava/lang/String; = "Discoverable limited mode status has changed to "

.field public static final blacklist ENABLE:Ljava/lang/String; = " enable"

.field public static final blacklist ENABLING:Ljava/lang/String; = " enabling"

.field public static final blacklist ENCRYPT_SD:Ljava/lang/String; = "Encrypting storage card"

.field public static final blacklist FAILED:Ljava/lang/String; = " failed"

.field public static final blacklist FAILED_BLOCKED:Ljava/lang/String; = " failed - blocked"

.field public static final blacklist FAILED_DEV_NOT_ALLOWED:Ljava/lang/String; = " failed - device not allowed"

.field public static final blacklist FAILED_INV_INPUT:Ljava/lang/String; = " failed - invalid input fields"

.field public static final blacklist FAILED_INV_MAC_ADD:Ljava/lang/String; = " failed - invalid MAC address"

.field public static final blacklist FAILED_MAX_NUMBER:Ljava/lang/String; = " failed - maximum number of allowed devices reached"

.field public static final blacklist FAILED_REJECTED_TYPE:Ljava/lang/String; = " failed - rejected type"

.field public static final blacklist FAILED_TIMEOUT:Ljava/lang/String; = " failed - timeout"

.field public static final blacklist FAILED_UNSECURE:Ljava/lang/String; = " failed - unsecure"

.field public static final blacklist FINISHED:Ljava/lang/String; = " finished"

.field public static final blacklist INCOMING_CONN:Ljava/lang/String; = "Incoming connection from device"

.field public static final blacklist INCOMING_CONN_FAILED:Ljava/lang/String; = "Incoming connection from external entity failed - no matching MAC key"

.field public static final blacklist INSERTED:Ljava/lang/String; = " inserted"

.field public static final blacklist INSTALL_APPLICATION:Ljava/lang/String; = "Install Application "

.field public static final blacklist INTERRUPTED:Ljava/lang/String; = " interrupted"

.field public static final blacklist KEY_DESTRUCTION:Ljava/lang/String; = "Key destruction activity "

.field public static final blacklist KEY_GEN_FAILED:Ljava/lang/String; = "Key generation failed "

.field public static final blacklist KEY_IMPORTING:Ljava/lang/String; = "Key importing activity "

.field public static final blacklist MEDIA:Ljava/lang/String; = "Media"

.field public static final blacklist NFC_DISABLING:Ljava/lang/String; = "Disabling NFC"

.field public static final blacklist NFC_DOWNLOAD_FILE:Ljava/lang/String; = "Downloading file "

.field public static final blacklist NFC_ENABLING:Ljava/lang/String; = "Enabling NFC"

.field public static final blacklist NFC_FROM_DEV:Ljava/lang/String; = " from device "

.field public static final blacklist NFC_RECEIVE_DATA:Ljava/lang/String; = "Receiving data through NFC"

.field public static final blacklist NFC_SEND_DATA:Ljava/lang/String; = "Sending data through NFC"

.field public static final blacklist NFC_UPLOADING_FILE:Ljava/lang/String; = "Uploading file"

.field public static final blacklist NOT_ALLOWED:Ljava/lang/String; = " not allowed"

.field public static final blacklist OBEX_BT:Ljava/lang/String; = " via Bluetooth Obex"

.field public static final blacklist OPEN_POPUP_URL:Ljava/lang/String; = "Opening pop-up for URL "

.field public static final blacklist OPEN_URL:Ljava/lang/String; = "Opening url "

.field public static final blacklist OTP_DEVICE_TIME_CHANGED:Ljava/lang/String; = "The device time has been changed."

.field public static final blacklist OTP_GENERATE_ABNORMAL_REQUESTS:Ljava/lang/String; = "Caller is trying to access OTP TokenId that doesn\'t exist."

.field public static final blacklist OTP_GENERATE_CALLER_BLOCKED:Ljava/lang/String; = "Caller is trying to generate OTP beyond fair usage limit."

.field public static final blacklist OTP_GENERATE_PERMISSION_DENIED:Ljava/lang/String; = "Caller doesn\'t have permission to access this OTP Token."

.field public static final blacklist OTP_PROVISION_PERMISSION_DENIED:Ljava/lang/String; = "Caller doesn\'t have permission to access OTP Provision Apis."

.field public static final blacklist OUTGOING_CALL_BT:Ljava/lang/String; = "Attempt to perform outgoing call through bluetooth"

.field public static final blacklist OUTGOING_MMS_NOT_ALLOWED:Ljava/lang/String; = "Outgoing MMS is not allowed."

.field public static final blacklist PAIRING_BT:Ljava/lang/String; = "Pairing bluetooth device "

.field public static final blacklist PASSWORD_MIN_LENGTH_CHANGED:Ljava/lang/String; = "Password minimum length changed to %d."

.field public static final blacklist PASSWORD_MIN_LETTERS_CHANGED:Ljava/lang/String; = "Password minimum letters changed to %d."

.field public static final blacklist PASSWORD_MIN_LOWERCASE_CHANGED:Ljava/lang/String; = "Password minimum lowercase changed to %d."

.field public static final blacklist PASSWORD_MIN_NONLETTER_CHANGED:Ljava/lang/String; = "Password minimum non-letter changed to %d."

.field public static final blacklist PASSWORD_MIN_NUMERIC_CHANGED:Ljava/lang/String; = "Password minimum numeric changed to %d."

.field public static final blacklist PASSWORD_MIN_SYMBOLS_CHANGED:Ljava/lang/String; = "Password minimum symbols changed to %d."

.field public static final blacklist PASSWORD_MIN_UPPERCASE_CHANGED:Ljava/lang/String; = "Password minimum uppercase changed to %d."

.field public static final blacklist PASSWORD_QUALITY_CHANGED:Ljava/lang/String; = "Password quality changed to %d."

.field public static final blacklist PASSWORD_TIMEOUT_CHANGED:Ljava/lang/String; = "Password timeout changed to %d."

.field public static final blacklist REASON:Ljava/lang/String; = " Reason: "

.field public static final blacklist RECEIVE_FILE:Ljava/lang/String; = "Receiving file "

.field public static final blacklist RECOVERY_FACTOR_RESET:Ljava/lang/String; = "Rebooting to perform factory reset."

.field public static final blacklist RECOVERY_WIPE_CUSTOM:Ljava/lang/String; = "Rebooting to wipe customer partition."

.field public static final blacklist RECOVERY_WIPE_USER_DATA:Ljava/lang/String; = "Rebooting to wipe user data partition."

.field public static final blacklist REMOTE_INJECTION_KEYSTROKE_FAILED:Ljava/lang/String; = "Remotely injecting a keystroke event into the UI failed"

.field public static final blacklist REMOTE_INJECTION_KEYSTROKE_SUCCEEDED:Ljava/lang/String; = "Remotely injecting a keystroke event into the UI succeeded"

.field public static final blacklist REMOTE_INJECTION_TOUCH_FAILED:Ljava/lang/String; = "Remotely injecting a pointer (touch) event into the UI failed"

.field public static final blacklist REMOTE_INJECTION_TOUCH_SUCCEEDED:Ljava/lang/String; = "Remotely injecting a pointer (touch) event into the UI succeeded"

.field public static final blacklist REMOTE_INJECTION_TRACKBALL_FAILED:Ljava/lang/String; = "Remotely injecting a trackball event into the UI failed"

.field public static final blacklist REMOTE_INJECTION_TRACKBALL_SUCCEEDED:Ljava/lang/String; = "Remotely injecting a trackball event into the UI succeeded"

.field public static final blacklist REMOTE_MGMT:Ljava/lang/String; = "Remotely management of device"

.field public static final blacklist REMOTE_MGMT_BLOCK_CALLS:Ljava/lang/String; = " - operation to be performed is block calls"

.field public static final blacklist REMOTE_MGMT_CHANGE_LOCK_MSG:Ljava/lang/String; = " - operation to be performed is change lock message"

.field public static final blacklist REMOTE_MGMT_DIVERT_REQ:Ljava/lang/String; = " - operation to be performed is divert request"

.field public static final blacklist REMOTE_MGMT_FACTORY_RESET:Ljava/lang/String; = " - operation to be performed is factory reset"

.field public static final blacklist REMOTE_MGMT_FULL_LOCK:Ljava/lang/String; = " - operation to be performed is full lock"

.field public static final blacklist REMOTE_MGMT_GET_LOC:Ljava/lang/String; = " - operation to be performed is get location"

.field public static final blacklist REMOTE_MGMT_MOBILE_TRACK:Ljava/lang/String; = " - operation to be performed is mobile tracking"

.field public static final blacklist REMOTE_MGMT_PARTIAL_LOCK:Ljava/lang/String; = " - operation to be performed is partial lock"

.field public static final blacklist REMOTE_MGMT_PHONE_RESET:Ljava/lang/String; = " - operation to be performed is phone reset"

.field public static final blacklist REMOTE_MGMT_PHONE_RING:Ljava/lang/String; = " - operation to be performed is phone ringing"

.field public static final blacklist REMOTE_MGMT_RLS_MASTER_KEY_LOCK:Ljava/lang/String; = " - operation to be performed is release master-key lock"

.field public static final blacklist REMOTE_MGMT_STOP_MOBILE_TRACK:Ljava/lang/String; = " - operation to be performed is stop mobile tracking"

.field public static final blacklist REMOTE_MGMT_STOP_PHONE_RING:Ljava/lang/String; = " - operation to be performed is stop phone ringing"

.field public static final blacklist REMOTE_MGMT_SYNCML:Ljava/lang/String; = "SyncML"

.field public static final blacklist REMOTE_MGMT_UNBLOCK_CALLS:Ljava/lang/String; = " - operation to be performed is unblock calls"

.field public static final blacklist REMOTE_MGMT_UNKNOWN_OP:Ljava/lang/String; = " - unknown operation requested"

.field public static final blacklist REMOTE_MGMT_UNLOCK:Ljava/lang/String; = " - operation to be performed is unlock"

.field public static final blacklist REMOTE_MGMT_WIPE:Ljava/lang/String; = " - operation to be performed is wipe"

.field public static final blacklist REMOVED:Ljava/lang/String; = " removed"

.field public static final blacklist SAVE_APN:Ljava/lang/String; = "Saving APN "

.field public static final blacklist SCREEN_UNLOCK_FAILED:Ljava/lang/String; = "Screen unlock failed."

.field public static final blacklist SCREEN_UNLOCK_SUCCEEDED:Ljava/lang/String; = "Screen unlocked successfully."

.field public static final blacklist SCR_LOCK_PASS:Ljava/lang/String; = "Changing/creating screen lock password"

.field public static final blacklist SCR_LOCK_PATT_FAILED:Ljava/lang/String; = "Screen lock pattern change/creation failed"

.field public static final blacklist SCR_LOCK_PATT_SUCCESS:Ljava/lang/String; = "Screen lock pattern changed/created successfully"

.field public static final blacklist SEND_FILE:Ljava/lang/String; = "Sending file "

.field public static final blacklist SEND_MMS:Ljava/lang/String; = "Sending MMS"

.field public static final blacklist SEND_SMS_BLOCKED:Ljava/lang/String; = "Sending sms failed. Blocked by phone restriction policy."

.field public static final blacklist SEND_SMS_FAILED:Ljava/lang/String; = "Sending SMS failed."

.field public static final blacklist SEND_SMS_SUCCEEDED:Ljava/lang/String; = "Sending SMS succeeded."

.field public static final blacklist SOFTWARE_UPDATE:Ljava/lang/String; = "Software update"

.field public static final blacklist STARTED:Ljava/lang/String; = " started"

.field public static final blacklist START_ACTIVITY:Ljava/lang/String; = "Start activity "

.field public static final blacklist START_ACTIVITY_FAILED_PASSWORD_ENFORCEMENT:Ljava/lang/String; = " failed. Blocked due to password change enforcement."

.field public static final blacklist START_ACTIVITY_FAILED_SETTINGS:Ljava/lang/String; = " failed. Blocked due to settings changes not allowed."

.field public static final blacklist START_ACTIVITY_FAILED_SVOICE:Ljava/lang/String; = " failed. Blocked due to S Voice not allowed."

.field public static final blacklist START_ACTIVITY_FAILED_TASKMANAGER:Ljava/lang/String; = " failed. Task manager is not allowed."

.field public static final blacklist SUCCEEDED:Ljava/lang/String; = " succeeded"

.field public static final blacklist SWITCH_APN:Ljava/lang/String; = "Switching to APN "

.field public static final blacklist SYNCING_ACCOUNT:Ljava/lang/String; = "Syncing account "

.field public static final blacklist UNINSTALL_APPLICATION:Ljava/lang/String; = "Uninstall Application "

.field public static final blacklist UNLOCK_ACCOUNT_SCREEN_FAILED:Ljava/lang/String; = "Unlock account screen failed."

.field public static final blacklist UNLOCK_ACCOUNT_SCREEN_SUCCEEDED:Ljava/lang/String; = "Unlock account screen succeeded."

.field public static final blacklist USB_EVENT:Ljava/lang/String; = "Received USB event"

.field public static final blacklist USER_INTERACTION:Ljava/lang/String; = " User Interaction: "

.field public static final blacklist USING_NFC:Ljava/lang/String; = " using NFC"

.field public static final blacklist WIFI:Ljava/lang/String; = "Wi-Fi"

.field public static final blacklist WIFIDIRECT:Ljava/lang/String; = "Wi-Fi Direct (P2P)"

.field public static final blacklist WIFIDIRECT_ENABLED:Ljava/lang/String; = "Enabling Wi-Fi Direct (P2P) succeeded"

.field public static final blacklist WIFIDIRECT_NAME_CHANGE:Ljava/lang/String; = " changing device name "

.field public static final blacklist WIFIDIRECT_P2P_CONNECTING:Ljava/lang/String; = "Connecting to device address "

.field public static final blacklist WIFIDIRECT_P2P_CONNECTING_FAILED:Ljava/lang/String; = " using Wi-Fi Direct (P2P) failed"

.field public static final blacklist WIFIDIRECT_P2P_CONNECTING_SUCCEEDED:Ljava/lang/String; = " using Wi-Fi Direct (P2P) succeeded"

.field public static final blacklist WIFIDIRECT_P2P_CONNECTION:Ljava/lang/String; = "Connecting to device using Wi-Fi Direct (P2P)"

.field public static final blacklist WIFIDIRECT_P2P_CONNECTION_FAILED:Ljava/lang/String; = "Connecting to device using Wi-Fi Direct (P2P) failed"

.field public static final blacklist WIFIDIRECT_P2P_DISCONNECTING:Ljava/lang/String; = "Disconnecting to device using Wi-Fi Direct (P2P)"

.field public static final blacklist WIFIDIRECT_P2P_INVITATION_ACCEPTED:Ljava/lang/String; = "Wi-Fi Direct (P2P) invitation accepted"

.field public static final blacklist WIFIDIRECT_P2P_INVITATION_DENIED:Ljava/lang/String; = "Wi-Fi Direct (P2P) invitation denied"

.field public static final blacklist WIFI_ADD_HOTSPOT:Ljava/lang/String; = "Added Wi-Fi hotspot "

.field public static final blacklist WIFI_CHANGED_HOTSPOT:Ljava/lang/String; = "Changed Wi-Fi hotspot"

.field public static final blacklist WIFI_CLIENT_CONNECTED_HOTSPOT:Ljava/lang/String; = "Client device connected to Wi-Fi hotspot"

.field public static final blacklist WIFI_CLIENT_DISCONNECTED_HOTSPOT:Ljava/lang/String; = "Client device disconnected from Wi-Fi hotspot"

.field public static final blacklist WIFI_DISABLING:Ljava/lang/String; = "Disabling Wifi"

.field public static final blacklist WIFI_ENABLING:Ljava/lang/String; = "Enabling Wifi"

.field public static final blacklist WIFI_HOTSPOT:Ljava/lang/String; = "Wi-Fi hotspot"

.field public static final blacklist WIFI_LINKSTATE_HOTSPOT:Ljava/lang/String; = "Linkstate Wi-Fi hotspot"

.field public static final blacklist WIFI_REMOVE_HOTSPOT:Ljava/lang/String; = "Removed Wi-Fi hotspot"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
