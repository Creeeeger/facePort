.class public Lcom/samsung/android/wifi/SemWifiManager$SemWifiApLogger;
.super Ljava/lang/Object;
.source "SemWifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wifi/SemWifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SemWifiApLogger"
.end annotation


# static fields
.field public static final blacklist HOTSPOT_LAB_PATH:Ljava/lang/String; = "/data/misc/wifi_hostapd/hotspotLabs.txt"

.field public static final blacklist KEY_BAND:Ljava/lang/String; = "Band = "

.field public static final blacklist KEY_BSSID:Ljava/lang/String; = "Bssid ="

.field public static final blacklist KEY_CALLING_PACKAGE_NAME:Ljava/lang/String; = "CallingPackage = "

.field public static final blacklist KEY_CHANNEL:Ljava/lang/String; = "Channel = "

.field public static final blacklist KEY_CONNECTION_TYPE:Ljava/lang/String; = "Connection type ="

.field public static final blacklist KEY_DATA_LIMIT_IN_BYTES:Ljava/lang/String; = "DataLimitInBytes ="

.field public static final blacklist KEY_DATE_TIME:Ljava/lang/String; = "DateTime = "

.field public static final blacklist KEY_DEVICE_TYPE:Ljava/lang/String; = "Device type ="

.field public static final blacklist KEY_DHCP_NAME:Ljava/lang/String; = "DHCP name ="

.field public static final blacklist KEY_EVENT:Ljava/lang/String; = "Event ="

.field public static final blacklist KEY_FREQ:Ljava/lang/String; = "Freq ="

.field public static final blacklist KEY_IFACE:Ljava/lang/String; = "iface ="

.field public static final blacklist KEY_INFO_DETAILS:Ljava/lang/String; = "Info details ="

.field public static final blacklist KEY_INTERFACE:Ljava/lang/String; = "Interface ="

.field public static final blacklist KEY_IP:Ljava/lang/String; = "Ip ="

.field public static final blacklist KEY_IP_TYPE:Ljava/lang/String; = "Ip type ="

.field public static final blacklist KEY_IS_HIDDEN:Ljava/lang/String; = "IsHidden = "

.field public static final blacklist KEY_IS_PMF_ENABLED:Ljava/lang/String; = "IsPmfEnabled = "

.field public static final blacklist KEY_IS_POWER_SAVING_ENABLED:Ljava/lang/String; = "IsPowerSavingEnabled = "

.field public static final blacklist KEY_IS_WIFI_6_SUPPORTED_ENABLED:Ljava/lang/String; = "IsWifi6SupportedEnabled = "

.field public static final blacklist KEY_IS_WIFI_SHARING_ENABLED:Ljava/lang/String; = "IsWifiSharingEnabled = "

.field public static final blacklist KEY_LOG_TYPE:Ljava/lang/String; = "LogType = "

.field public static final blacklist KEY_LOG_VERSION:Ljava/lang/String; = "LogVersion = "

.field public static final blacklist KEY_MAC:Ljava/lang/String; = "Mac ="

.field public static final blacklist KEY_MAC_TYPE:Ljava/lang/String; = "MacType = "

.field public static final blacklist KEY_MODE:Ljava/lang/String; = "Mode ="

.field public static final blacklist KEY_MORE_INFO:Ljava/lang/String; = "More Info = "

.field public static final blacklist KEY_NAME:Ljava/lang/String; = "Name ="

.field public static final blacklist KEY_NAME_TYPE:Ljava/lang/String; = "Name type ="

.field public static final blacklist KEY_NSD_NAME:Ljava/lang/String; = "NSD name ="

.field public static final blacklist KEY_PASSPHRASE:Ljava/lang/String; = "PassPhrase = "

.field public static final blacklist KEY_PAUSE_SHARING:Ljava/lang/String; = "PauseSharing ="

.field public static final blacklist KEY_PROVISIONING_SUCCESS_STATE:Ljava/lang/String; = "Provisioning success state ="

.field public static final blacklist KEY_REASON:Ljava/lang/String; = "Reason = "

.field public static final blacklist KEY_SECURITY_TYPE:Ljava/lang/String; = "SecurityType = "

.field public static final blacklist KEY_SOFT_AP_INFO:Ljava/lang/String; = "SoftApInfo ======>"

.field public static final blacklist KEY_SSID:Ljava/lang/String; = "Ssid = "

.field public static final blacklist KEY_STATE:Ljava/lang/String; = "State ="

.field public static final blacklist KEY_TAG_NAME:Ljava/lang/String; = "TagName = "

.field public static final blacklist KEY_TIME:Ljava/lang/String; = "Time = "

.field public static final blacklist KEY_TIME_IN_MILLIS:Ljava/lang/String; = "TimeInMillis = "

.field public static final blacklist KEY_TIME_LIMIT_IN_MILLIS:Ljava/lang/String; = "TimeLimitInMillis ="

.field public static final blacklist KEY_TIME_OUT:Ljava/lang/String; = "TimeOut = "

.field public static final blacklist KEY_UPSTREAM_TYPE_CHANGED:Ljava/lang/String; = "Upstream type changed ="

.field public static final blacklist PATTERN_SEPARATOR:Ljava/lang/String; = ",, "

.field public static final blacklist PATTERN_SEPARATOR_EVENT_CONTENTS:Ljava/lang/String; = "===>>>"

.field public static final blacklist SETTINGS_SECURE_KEY_CLOUD_BACKUP_RESTORING:Ljava/lang/String; = "wifi_ap_settings_cloud_backup_restoring"

.field public static final blacklist SETTINGS_SECURE_KEY_SMART_SWITCH_RESTORING:Ljava/lang/String; = "wifi_ap_settings_smart_switch_restoring"

.field public static final blacklist TAG_D:Ljava/lang/String; = "[D]"

.field public static final blacklist TAG_E:Ljava/lang/String; = "[E]"

.field public static final blacklist TAG_I:Ljava/lang/String; = "[I]"

.field public static final blacklist TAG_WIFI_AP_LAB_CHANNEL_SWITCH_EVENT:Ljava/lang/String; = "#tag_wifi_ap_lab_channel_switch_event#"

.field public static final blacklist TAG_WIFI_AP_LAB_CLIENT_EVENT:Ljava/lang/String; = "#tag_wifi_ap_lab_client_event#"

.field public static final blacklist TAG_WIFI_AP_LAB_CONFIG_EVENT:Ljava/lang/String; = "#tag_wifi_ap_lab_config_event#"

.field public static final blacklist TAG_WIFI_AP_LAB_HOTSPOT_CONNECTION_EVENT:Ljava/lang/String; = "#tag_wifi_ap_lab_hotspot_connection_event#"

.field public static final blacklist TAG_WIFI_AP_LAB_HOTSPOT_SPEED_EVENT:Ljava/lang/String; = "#tag_wifi_ap_lab_hotspot_speed_event#"

.field public static final blacklist VALUE_AUTO_HOTSPOT:Ljava/lang/String; = "Auto Hotspot"

.field public static final blacklist VALUE_CELLULAR:Ljava/lang/String; = "Cellular"

.field public static final blacklist VALUE_CLIENT_DISCONNECTED:Ljava/lang/String; = "Client disconnected"

.field public static final blacklist VALUE_HOTSPOT_CHANNEL_SWITCH:Ljava/lang/String; = "Hotspot channel switch"

.field public static final blacklist VALUE_HOTSPOT_OFF:Ljava/lang/String; = "Hotspot off"

.field public static final blacklist VALUE_HOTSPOT_ON:Ljava/lang/String; = "Hotspot on"

.field public static final blacklist VALUE_LIMIT_REMOVED:Ljava/lang/String; = "[Limit Removed]"

.field public static final blacklist VALUE_NORMAL:Ljava/lang/String; = "Normal"

.field public static final blacklist VALUE_NO_UPSTREAM:Ljava/lang/String; = "No upstream"

.field public static final blacklist VALUE_OTP:Ljava/lang/String; = "Otp"

.field public static final blacklist VALUE_OVERALL_CLIENTS_SETTINGS_UPDATED:Ljava/lang/String; = "Overall clients settings updated"

.field public static final blacklist VALUE_WIFI:Ljava/lang/String; = "Wi-Fi"

.field public static final blacklist VALUE_WIFI_CONNECTED:Ljava/lang/String; = "Wi-Fi network connected"

.field public static final blacklist VALUE_WIFI_DISCONNECTED:Ljava/lang/String; = "Wi-Fi network disconnected"

.field public static final blacklist VALUE_WIFI_OFF:Ljava/lang/String; = "Wi-Fi off"

.field public static final blacklist VALUE_WIFI_ON:Ljava/lang/String; = "Wi-Fi on"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
