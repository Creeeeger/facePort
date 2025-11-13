.class public final Landroid/nfc/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Landroid/nfc/FeatureFlags; = null

.field public static final blacklist FLAG_ENABLE_NFC_CHARGING:Ljava/lang/String; = "android.nfc.enable_nfc_charging"

.field public static final blacklist FLAG_ENABLE_NFC_MAINLINE:Ljava/lang/String; = "android.nfc.enable_nfc_mainline"

.field public static final blacklist FLAG_ENABLE_NFC_READER_OPTION:Ljava/lang/String; = "android.nfc.enable_nfc_reader_option"

.field public static final blacklist FLAG_ENABLE_NFC_SET_DISCOVERY_TECH:Ljava/lang/String; = "android.nfc.enable_nfc_set_discovery_tech"

.field public static final blacklist FLAG_ENABLE_NFC_USER_RESTRICTION:Ljava/lang/String; = "android.nfc.enable_nfc_user_restriction"

.field public static final blacklist FLAG_ENABLE_TAG_DETECTION_BROADCASTS:Ljava/lang/String; = "android.nfc.enable_tag_detection_broadcasts"

.field public static final blacklist FLAG_NFC_OBSERVE_MODE:Ljava/lang/String; = "android.nfc.nfc_observe_mode"

.field public static final blacklist FLAG_NFC_OBSERVE_MODE_ST_SHIM:Ljava/lang/String; = "android.nfc.nfc_observe_mode_st_shim"

.field public static final blacklist FLAG_NFC_OEM_EXTENSION:Ljava/lang/String; = "android.nfc.nfc_oem_extension"

.field public static final blacklist FLAG_NFC_READ_POLLING_LOOP:Ljava/lang/String; = "android.nfc.nfc_read_polling_loop"

.field public static final blacklist FLAG_NFC_READ_POLLING_LOOP_ST_SHIM:Ljava/lang/String; = "android.nfc.nfc_read_polling_loop_st_shim"

.field public static final blacklist FLAG_NFC_SET_DEFAULT_DISC_TECH:Ljava/lang/String; = "android.nfc.nfc_set_default_disc_tech"

.field public static final blacklist FLAG_NFC_STATE_CHANGE:Ljava/lang/String; = "android.nfc.nfc_state_change"

.field public static final blacklist FLAG_NFC_VENDOR_CMD:Ljava/lang/String; = "android.nfc.nfc_vendor_cmd"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/nfc/FeatureFlagsImpl;

    invoke-direct {v0}, Landroid/nfc/FeatureFlagsImpl;-><init>()V

    sput-object v0, Landroid/nfc/Flags;->FEATURE_FLAGS:Landroid/nfc/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist enableNfcCharging()Z
    .locals 1

    sget-object v0, Landroid/nfc/Flags;->FEATURE_FLAGS:Landroid/nfc/FeatureFlags;

    invoke-interface {v0}, Landroid/nfc/FeatureFlags;->enableNfcCharging()Z

    move-result v0

    return v0
.end method

.method public static greylist enableNfcMainline()Z
    .locals 1

    sget-object v0, Landroid/nfc/Flags;->FEATURE_FLAGS:Landroid/nfc/FeatureFlags;

    invoke-interface {v0}, Landroid/nfc/FeatureFlags;->enableNfcMainline()Z

    move-result v0

    return v0
.end method

.method public static greylist enableNfcReaderOption()Z
    .locals 1

    sget-object v0, Landroid/nfc/Flags;->FEATURE_FLAGS:Landroid/nfc/FeatureFlags;

    invoke-interface {v0}, Landroid/nfc/FeatureFlags;->enableNfcReaderOption()Z

    move-result v0

    return v0
.end method

.method public static greylist enableNfcSetDiscoveryTech()Z
    .locals 1

    sget-object v0, Landroid/nfc/Flags;->FEATURE_FLAGS:Landroid/nfc/FeatureFlags;

    invoke-interface {v0}, Landroid/nfc/FeatureFlags;->enableNfcSetDiscoveryTech()Z

    move-result v0

    return v0
.end method

.method public static greylist enableNfcUserRestriction()Z
    .locals 1

    sget-object v0, Landroid/nfc/Flags;->FEATURE_FLAGS:Landroid/nfc/FeatureFlags;

    invoke-interface {v0}, Landroid/nfc/FeatureFlags;->enableNfcUserRestriction()Z

    move-result v0

    return v0
.end method

.method public static greylist enableTagDetectionBroadcasts()Z
    .locals 1

    sget-object v0, Landroid/nfc/Flags;->FEATURE_FLAGS:Landroid/nfc/FeatureFlags;

    invoke-interface {v0}, Landroid/nfc/FeatureFlags;->enableTagDetectionBroadcasts()Z

    move-result v0

    return v0
.end method

.method public static greylist nfcObserveMode()Z
    .locals 1

    sget-object v0, Landroid/nfc/Flags;->FEATURE_FLAGS:Landroid/nfc/FeatureFlags;

    invoke-interface {v0}, Landroid/nfc/FeatureFlags;->nfcObserveMode()Z

    move-result v0

    return v0
.end method

.method public static greylist nfcObserveModeStShim()Z
    .locals 1

    sget-object v0, Landroid/nfc/Flags;->FEATURE_FLAGS:Landroid/nfc/FeatureFlags;

    invoke-interface {v0}, Landroid/nfc/FeatureFlags;->nfcObserveModeStShim()Z

    move-result v0

    return v0
.end method

.method public static greylist nfcOemExtension()Z
    .locals 1

    sget-object v0, Landroid/nfc/Flags;->FEATURE_FLAGS:Landroid/nfc/FeatureFlags;

    invoke-interface {v0}, Landroid/nfc/FeatureFlags;->nfcOemExtension()Z

    move-result v0

    return v0
.end method

.method public static greylist nfcReadPollingLoop()Z
    .locals 1

    sget-object v0, Landroid/nfc/Flags;->FEATURE_FLAGS:Landroid/nfc/FeatureFlags;

    invoke-interface {v0}, Landroid/nfc/FeatureFlags;->nfcReadPollingLoop()Z

    move-result v0

    return v0
.end method

.method public static greylist nfcReadPollingLoopStShim()Z
    .locals 1

    sget-object v0, Landroid/nfc/Flags;->FEATURE_FLAGS:Landroid/nfc/FeatureFlags;

    invoke-interface {v0}, Landroid/nfc/FeatureFlags;->nfcReadPollingLoopStShim()Z

    move-result v0

    return v0
.end method

.method public static greylist nfcSetDefaultDiscTech()Z
    .locals 1

    sget-object v0, Landroid/nfc/Flags;->FEATURE_FLAGS:Landroid/nfc/FeatureFlags;

    invoke-interface {v0}, Landroid/nfc/FeatureFlags;->nfcSetDefaultDiscTech()Z

    move-result v0

    return v0
.end method

.method public static greylist nfcStateChange()Z
    .locals 1

    sget-object v0, Landroid/nfc/Flags;->FEATURE_FLAGS:Landroid/nfc/FeatureFlags;

    invoke-interface {v0}, Landroid/nfc/FeatureFlags;->nfcStateChange()Z

    move-result v0

    return v0
.end method

.method public static greylist nfcVendorCmd()Z
    .locals 1

    sget-object v0, Landroid/nfc/Flags;->FEATURE_FLAGS:Landroid/nfc/FeatureFlags;

    invoke-interface {v0}, Landroid/nfc/FeatureFlags;->nfcVendorCmd()Z

    move-result v0

    return v0
.end method
