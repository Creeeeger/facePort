.class public Lcom/samsung/android/knox/ex/peripheral/PeripheralConstants;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/ex/peripheral/PeripheralConstants$VendorKoamtac;,
        Lcom/samsung/android/knox/ex/peripheral/PeripheralConstants$Internal;,
        Lcom/samsung/android/knox/ex/peripheral/PeripheralConstants$VibrationEffect;,
        Lcom/samsung/android/knox/ex/peripheral/PeripheralConstants$BeepSoundEffect;,
        Lcom/samsung/android/knox/ex/peripheral/PeripheralConstants$DisplayText;,
        Lcom/samsung/android/knox/ex/peripheral/PeripheralConstants$BtConstants;,
        Lcom/samsung/android/knox/ex/peripheral/PeripheralConstants$BtPeripheralListOption;,
        Lcom/samsung/android/knox/ex/peripheral/PeripheralConstants$FirmwareUpdateStatus;,
        Lcom/samsung/android/knox/ex/peripheral/PeripheralConstants$BatteryStatus;,
        Lcom/samsung/android/knox/ex/peripheral/PeripheralConstants$DataSyncOption;,
        Lcom/samsung/android/knox/ex/peripheral/PeripheralConstants$DataResetOption;,
        Lcom/samsung/android/knox/ex/peripheral/PeripheralConstants$DataClearOption;,
        Lcom/samsung/android/knox/ex/peripheral/PeripheralConstants$DeviceType;,
        Lcom/samsung/android/knox/ex/peripheral/PeripheralConstants$DataType;,
        Lcom/samsung/android/knox/ex/peripheral/PeripheralConstants$EventType;,
        Lcom/samsung/android/knox/ex/peripheral/PeripheralConstants$ConnectionState;,
        Lcom/samsung/android/knox/ex/peripheral/PeripheralConstants$BarcodeDataProcessMode;,
        Lcom/samsung/android/knox/ex/peripheral/PeripheralConstants$ConnectivityType;,
        Lcom/samsung/android/knox/ex/peripheral/PeripheralConstants$ConnectionProfile;,
        Lcom/samsung/android/knox/ex/peripheral/PeripheralConstants$Result;,
        Lcom/samsung/android/knox/ex/peripheral/PeripheralConstants$PeripheralState;,
        Lcom/samsung/android/knox/ex/peripheral/PeripheralConstants$PeripheralInfo;,
        Lcom/samsung/android/knox/ex/peripheral/PeripheralConstants$ErrorCode;
    }
.end annotation


# static fields
.field public static final ACTION_LOOPBACK_DEVICE_ATTACHED:Ljava/lang/String; = "ACTION_LOOPBACK_DEVICE_ATTACHED"

.field public static final ACTION_LOOPBACK_DEVICE_DETACHED:Ljava/lang/String; = "ACTION_LOOPBACK_DEVICE_DETACHED"

.field public static final ACTION_SERVICE_START:Ljava/lang/String; = "com.samsung.android.peripheral.framework.ACTION_SERVICE_START"

.field public static final EXTRA_SERVICE_START_DESCRIPTION:Ljava/lang/String; = "serviceStartDescription"

.field public static final EXTRA_SERVICE_START_RESULT:Ljava/lang/String; = "serviceStartResult"

.field public static final KEY_INFO_NOTIFICATION_INTERVAL_LONG:Ljava/lang/String; = "KEY_INFO_NOTIFICATION_INTERVAL_LONG"

.field public static final KEY_PERIPHERAL_BARCODE_DATA_PROCESS_MODE_STR:Ljava/lang/String; = "KEY_PERIPHERAL_BARCODE_DATA_PROCESS_MODE_STR"

.field public static final KEY_PERIPHERAL_BARCODE_ENABLED_OPTION_LIST:Ljava/lang/String; = "KEY_PERIPHERAL_BARCODE_ENABLED_OPTION_LIST"

.field public static final KEY_PERIPHERAL_BARCODE_ENABLED_SYMBOLOGY_LIST:Ljava/lang/String; = "KEY_PERIPHERAL_BARCODE_ENABLED_SYMBOLOGY_LIST"

.field public static final KEY_PERIPHERAL_BARCODE_ENABLED_SYMBOLOGY_STR:Ljava/lang/String; = "KEY_PERIPHERAL_BARCODE_ENABLED_SYMBOLOGY_STR"

.field public static final KEY_PERIPHERAL_BARCODE_ENABLE_TIMESTAMP_BOOL:Ljava/lang/String; = "KEY_PERIPHERAL_BARCODE_ENABLE_TIMESTAMP_BOOL"

.field public static final KEY_PERIPHERAL_BARCODE_SUPPORTED_SYMBOLOGY_LIST:Ljava/lang/String; = "KEY_PERIPHERAL_BARCODE_SUPPORTED_SYMBOLOGY_LIST"

.field public static final KEY_PERIPHERAL_BATTERY_LEVEL_STR:Ljava/lang/String; = "KEY_PERIPHERAL_BATTERY_LEVEL_STR"

.field public static final KEY_PERIPHERAL_BUNDLE_LIST:Ljava/lang/String; = "KEY_PERIPHERAL_BUNDLE_LIST"

.field public static final KEY_PERIPHERAL_CONNECTION_STATE_STR:Ljava/lang/String; = "KEY_PERIPHERAL_CONNECTION_STATE_STR"

.field public static final KEY_PERIPHERAL_CONNECTIVITY_BUNDLE_LIST:Ljava/lang/String; = "KEY_PERIPHERAL_CONNECTIVITY_BUNDLE_LIST"

.field public static final KEY_PERIPHERAL_CONNECTIVITY_IDENTIFIER_STR:Ljava/lang/String; = "KEY_PERIPHERAL_CONNECTIVITY_IDENTIFIER_STR"

.field public static final KEY_PERIPHERAL_CONNECTIVITY_TYPE_STR:Ljava/lang/String; = "KEY_PERIPHERAL_CONNECTIVITY_TYPE_STR"

.field public static final KEY_PERIPHERAL_DISCONNECTED_REASON_STR:Ljava/lang/String; = "KEY_PERIPHERAL_DISCONNECTED_REASON_STR"

.field public static final KEY_PERIPHERAL_ENABLE_BEEP_SOUND_BOOL:Ljava/lang/String; = "KEY_PERIPHERAL_ENABLE_BEEP_SOUND_BOOL"

.field public static final KEY_PERIPHERAL_ENABLE_CHECK_DUPLICATED_BARCODE_BOOL:Ljava/lang/String; = "KEY_PERIPHERAL_ENABLE_CHECK_DUPLICATED_BARCODE_BOOL"

.field public static final KEY_PERIPHERAL_EXTRA_IS_LICENSE_REQUIRED_BOOL:Ljava/lang/String; = "KEY_PERIPHERAL_EXTRA_IS_LICENSE_REQUIRED_BOOL"

.field public static final KEY_PERIPHERAL_EXTRA_SCAN_ACTIVITY_STR:Ljava/lang/String; = "KEY_PERIPHERAL_EXTRA_SCAN_ACTIVITY_STR"

.field public static final KEY_PERIPHERAL_FAIL_REASON_STR:Ljava/lang/String; = "KEY_PERIPHERAL_FAIL_REASON_STR"

.field public static final KEY_PERIPHERAL_FIRMWARE_STR:Ljava/lang/String; = "KEY_PERIPHERAL_FIRMWARE_STR"

.field public static final KEY_PERIPHERAL_ID_STR:Ljava/lang/String; = "KEY_PERIPHERAL_ID_STR"

.field public static final KEY_PERIPHERAL_MANUFACTURER_STR:Ljava/lang/String; = "KEY_PERIPHERAL_MANUFACTURER_STR"

.field public static final KEY_PERIPHERAL_MODEL_NAME_STR:Ljava/lang/String; = "KEY_PERIPHERAL_MODEL_NAME_STR"

.field public static final KEY_PERIPHERAL_NAME_STR:Ljava/lang/String; = "KEY_PERIPHERAL_NAME_STR"

.field public static final KEY_PERIPHERAL_PREFIX_STR:Ljava/lang/String; = "KEY_PERIPHERAL_PREFIX_STR"

.field public static final KEY_PERIPHERAL_SERIAL_NUMBER_STR:Ljava/lang/String; = "KEY_PERIPHERAL_SERIAL_NUMBER_STR"

.field public static final KEY_PERIPHERAL_STATE_STR:Ljava/lang/String; = "KEY_PERIPHERAL_STATE_STR"

.field public static final KEY_PERIPHERAL_STORED_DATA_COUNT_INT:Ljava/lang/String; = "KEY_PERIPHERAL_STORED_DATA_COUNT_INT"

.field public static final KEY_PERIPHERAL_SUFFIX_STR:Ljava/lang/String; = "KEY_PERIPHERAL_SUFFIX_STR"

.field public static final KEY_PERIPHERAL_TIMESTAMP_LONG:Ljava/lang/String; = "KEY_PERIPHERAL_TIMESTAMP_LONG"

.field public static final KEY_PERIPHERAL_TYPE_STR:Ljava/lang/String; = "KEY_PERIPHERAL_TYPE_STR"

.field public static final KEY_PERIPHERAL_USAGE_COUNT_INT:Ljava/lang/String; = "KEY_PERIPHERAL_USAGE_COUNT_INT"

.field public static final KEY_PLUGIN_BUNDLE_LIST:Ljava/lang/String; = "KEY_PLUGIN_BUNDLE_LIST"

.field public static final KEY_PLUGIN_NAME_STR:Ljava/lang/String; = "KEY_PLUGIN_NAME_STR"

.field public static final KEY_PLUGIN_PACKAGE_NAME_STR:Ljava/lang/String; = "KEY_PLUGIN_PACKAGE_NAME_STR"

.field public static final KEY_PLUGIN_SERVICE_NAME_STR:Ljava/lang/String; = "KEY_PLUGIN_SERVICE_NAME_STR"

.field public static final KEY_PLUGIN_VENDOR_STR:Ljava/lang/String; = "KEY_PLUGIN_VENDOR_STR"

.field public static final KEY_PLUGIN_VERSION_STR:Ljava/lang/String; = "KEY_PLUGIN_VERSION_STR"

.field public static final KEY_PROFILE_NAME_STR:Ljava/lang/String; = "KEY_PROFILE_NAME_STR"

.field public static final KEY_PROFILE_REMOVE_BLUETOOTH_POPUP_BOOL:Ljava/lang/String; = "KEY_PROFILE_REMOVE_BLUETOOTH_POPUP_BOOL"

.field public static final KEY_PROFILE_SHOW_BLUETOOTH_PAIRING_POPUP_BOOL:Ljava/lang/String; = "KEY_PROFILE_SHOW_BLUETOOTH_PAIRING_POPUP_BOOL"

.field public static final KEY_RESULT_BARCODE_DATA_LIST:Ljava/lang/String; = "KEY_RESULT_BARCODE_DATA_LIST"

.field public static final KEY_RESULT_BARCODE_DATA_STR:Ljava/lang/String; = "KEY_RESULT_BARCODE_DATA_STR"

.field public static final KEY_RESULT_BARCODE_RAW_DATA_STR:Ljava/lang/String; = "KEY_RESULT_BARCODE_RAW_DATA_STR"

.field public static final KEY_RESULT_BLUETOOTH_PERIPHERAL_LIST:Ljava/lang/String; = "KEY_RESULT_BLUETOOTH_PERIPHERAL_LIST"

.field public static final KEY_RESULT_BUNDLE:Ljava/lang/String; = "KEY_RESULT_BUNDLE"

.field public static final KEY_RESULT_CONNECTION_PROFILE_STR:Ljava/lang/String; = "KEY_RESULT_CONNECTION_PROFILE_STR"

.field public static final KEY_RESULT_CURRENT_CONNECTIVITY_TYPE_STR:Ljava/lang/String; = "KEY_RESULT_CURRENT_CONNECTIVITY_TYPE_STR"

.field public static final KEY_RESULT_CURRENT_CONNECTIVITY_VERSION_STR:Ljava/lang/String; = "KEY_RESULT_CURRENT_CONNECTIVITY_VERSION_STR"

.field public static final KEY_RESULT_DATA_TYPE_STR:Ljava/lang/String; = "KEY_RESULT_DATA_TYPE_STR"

.field public static final KEY_RESULT_ERROR_CODE_INT:Ljava/lang/String; = "KEY_RESULT_ERROR_CODE_INT"

.field public static final KEY_RESULT_FIRMWARE_UPDATE_STR:Ljava/lang/String; = "KEY_RESULT_FIRMWARE_UPDATE_STR"

.field public static final KEY_RESULT_INT:Ljava/lang/String; = "KEY_RESULT_INT"

.field public static final KEY_RESULT_LONG:Ljava/lang/String; = "KEY_RESULT_LONG"

.field public static final KEY_RESULT_PLUGIN_PACKAGE_NAME_LIST:Ljava/lang/String; = "KEY_RESULT_PLUGIN_PACKAGE_NAME_LIST"

.field public static final KEY_RESULT_STATE_STR:Ljava/lang/String; = "KEY_RESULT_STATE_STR"

.field public static final KEY_RESULT_STR:Ljava/lang/String; = "KEY_RESULT_STR"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
