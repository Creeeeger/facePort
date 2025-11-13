.class public final Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/FeatureFlags; = null

.field public static final blacklist FLAG_ENABLE_INPUT_POWER_LIMITED_WARNING:Ljava/lang/String; = "android.hardware.usb.flags.enable_input_power_limited_warning"

.field public static final blacklist FLAG_ENABLE_INTERFACE_NAME_DEVICE_FILTER:Ljava/lang/String; = "android.hardware.usb.flags.enable_interface_name_device_filter"

.field public static final blacklist FLAG_ENABLE_IS_MODE_CHANGE_SUPPORTED_API:Ljava/lang/String; = "android.hardware.usb.flags.enable_is_mode_change_supported_api"

.field public static final blacklist FLAG_ENABLE_IS_PD_COMPLIANT_API:Ljava/lang/String; = "android.hardware.usb.flags.enable_is_pd_compliant_api"

.field public static final blacklist FLAG_ENABLE_REPORT_USB_DATA_COMPLIANCE_WARNING:Ljava/lang/String; = "android.hardware.usb.flags.enable_report_usb_data_compliance_warning"

.field public static final blacklist FLAG_ENABLE_USB_DATA_COMPLIANCE_WARNING:Ljava/lang/String; = "android.hardware.usb.flags.enable_usb_data_compliance_warning"

.field public static final blacklist FLAG_ENABLE_USB_DATA_SIGNAL_STAKING:Ljava/lang/String; = "android.hardware.usb.flags.enable_usb_data_signal_staking"

.field public static final blacklist FLAG_ENABLE_USB_SYSFS_MIDI_IDENTIFICATION:Ljava/lang/String; = "android.hardware.usb.flags.enable_usb_sysfs_midi_identification"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist enableInputPowerLimitedWarning()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/FeatureFlags;->enableInputPowerLimitedWarning()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableInterfaceNameDeviceFilter()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/FeatureFlags;->enableInterfaceNameDeviceFilter()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableIsModeChangeSupportedApi()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/FeatureFlags;->enableIsModeChangeSupportedApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableIsPdCompliantApi()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/FeatureFlags;->enableIsPdCompliantApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableReportUsbDataComplianceWarning()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/FeatureFlags;->enableReportUsbDataComplianceWarning()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableUsbDataComplianceWarning()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/FeatureFlags;->enableUsbDataComplianceWarning()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableUsbDataSignalStaking()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/FeatureFlags;->enableUsbDataSignalStaking()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableUsbSysfsMidiIdentification()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/FeatureFlags;->enableUsbSysfsMidiIdentification()Z

    move-result v0

    return v0
.end method
