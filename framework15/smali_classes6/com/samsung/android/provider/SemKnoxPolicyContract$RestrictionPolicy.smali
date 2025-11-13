.class public Lcom/samsung/android/provider/SemKnoxPolicyContract$RestrictionPolicy;
.super Ljava/lang/Object;
.source "SemKnoxPolicyContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/provider/SemKnoxPolicyContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RestrictionPolicy"
.end annotation


# static fields
.field public static final blacklist ANDROID_BEAM_ALLOWED:Ljava/lang/String; = "isAndroidBeamAllowed"

.field public static final blacklist BLUETOOTH_TETHERING_ENABLED:Ljava/lang/String; = "isBluetoothTetheringEnabled"

.field public static final whitelist CAMERA_ENABLED:Ljava/lang/String; = "isCameraEnabled"

.field public static final blacklist CLIPBOARD_ALLOWED:Ljava/lang/String; = "isClipboardAllowed"

.field public static final blacklist CLIPBOARD_ALLOWED_AS_USER:Ljava/lang/String; = "isClipboardAllowedAsUser"

.field public static final whitelist CLIPBOARD_SHARE_ALLOWED:Ljava/lang/String; = "isClipboardShareAllowed"

.field public static final blacklist CLIPBOARD_SHARE_ALLOWED_AS_USER:Ljava/lang/String; = "isClipboardShareAllowedAsUser"

.field public static final blacklist GOOGLE_ACCOUNTS_AUTO_SYNC_ALLOWED:Ljava/lang/String; = "isGoogleAccountsAutoSyncAllowed"

.field public static final blacklist HEADPHONE_ENABLED:Ljava/lang/String; = "isHeadPhoneEnabled"

.field public static final whitelist INTELLIGENCE_ONLINE_PROCESSING_ALLOWED:Ljava/lang/String; = "isIntelligenceOnlineProcessingAllowed"

.field public static final whitelist LOCAL_CONTACT_STORAGE_ALLOWED:Ljava/lang/String; = "isLocalContactStorageAllowed"

.field public static final blacklist MIC_ENABLED:Ljava/lang/String; = "isMicEnabled"

.field public static final blacklist NAME:Ljava/lang/String; = "RestrictionPolicy"

.field public static final whitelist POWER_OFF_ALLOWED:Ljava/lang/String; = "isPowerOffAllowed"

.field public static final whitelist POWER_SAVING_MODE_ALLOWED:Ljava/lang/String; = "isPowerSavingModeAllowed"

.field public static final blacklist RESTRICTIONPOLICY1:Ljava/lang/String; = "RestrictionPolicy1"

.field public static final blacklist RESTRICTIONPOLICY2:Ljava/lang/String; = "RestrictionPolicy2"

.field public static final blacklist RESTRICTIONPOLICY3:Ljava/lang/String; = "RestrictionPolicy3"

.field public static final blacklist RESTRICTIONPOLICY4:Ljava/lang/String; = "RestrictionPolicy4"

.field public static final blacklist SDCARD_ENABLED:Ljava/lang/String; = "isSdCardEnabled"

.field public static final blacklist SDCARD_WRITE_ALLOW:Ljava/lang/String; = "isSDCardWriteAllowed"

.field public static final whitelist SETTINGS_CHANGES_ALLOWED:Ljava/lang/String; = "isSettingsChangesAllowed"

.field public static final blacklist SHARE_LIST_ALLOWED:Ljava/lang/String; = "isShareListAllowed"

.field public static final whitelist SHOW_TOAST_IF_INTELLIGENCE_ONLINE_PROCESSING_DISALLOWED:Ljava/lang/String; = "showToastIfIntelligenceOnlineProcessingDisallowed"

.field public static final whitelist SMARTCLIPMODE_ALLOWED:Ljava/lang/String; = "isSmartClipModeAllowed"

.field public static final whitelist URI:Ljava/lang/String; = "content://com.sec.knox.provider/RestrictionPolicy"

.field public static final blacklist URI1:Ljava/lang/String; = "content://com.sec.knox.provider/RestrictionPolicy1"

.field public static final blacklist URI2:Ljava/lang/String; = "content://com.sec.knox.provider/RestrictionPolicy2"

.field public static final blacklist URI3:Ljava/lang/String; = "content://com.sec.knox.provider/RestrictionPolicy3"

.field public static final blacklist URI4:Ljava/lang/String; = "content://com.sec.knox.provider/RestrictionPolicy4"

.field public static final blacklist USB_HOST_STORAGE_ALLOWED:Ljava/lang/String; = "isUsbHostStorageAllowed"

.field public static final blacklist USB_MASS_STORAGE_ENABLED:Ljava/lang/String; = "isUsbMassStorageEnabled"

.field public static final blacklist USB_MEDIA_PLAYER_AVAILABLE:Ljava/lang/String; = "isUsbMediaPlayerAvailable"

.field public static final blacklist USB_TETHERING_ENABLED:Ljava/lang/String; = "isUsbTetheringEnabled"

.field public static final whitelist WALLPAPER_CHANGE_ALLOWED:Ljava/lang/String; = "isWallpaperChangeAllowed"

.field public static final whitelist WIFI_DIRECT_ALLOWED:Ljava/lang/String; = "isWifiDirectAllowed"

.field public static final blacklist WIFI_TETHERING_ENABLED:Ljava/lang/String; = "isWifiTetheringEnabled"


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
