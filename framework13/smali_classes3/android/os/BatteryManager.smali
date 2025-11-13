.class public Landroid/os/BatteryManager;
.super Ljava/lang/Object;
.source "BatteryManager.java"


# static fields
.field public static final whitelist ACTION_CHARGING:Ljava/lang/String; = "android.os.action.CHARGING"

.field public static final whitelist ACTION_DISCHARGING:Ljava/lang/String; = "android.os.action.DISCHARGING"

.field public static final blacklist ACTION_POPUP_BATTERY_DETERIORATION:Ljava/lang/String; = "com.samsung.server.BatteryService.action.ACTION_POPUP_BATTERY_DETERIORATION"

.field public static final blacklist ACTION_SEC_BATTERY_EVENT:Ljava/lang/String; = "com.samsung.server.BatteryService.action.SEC_BATTERY_EVENT"

.field public static final blacklist ACTION_SEC_BATTERY_WATER_IN_CONNECTOR:Ljava/lang/String; = "com.samsung.server.BatteryService.action.SEC_BATTERY_WATER_IN_CONNECTOR"

.field public static final blacklist ACTION_WIRELESS_POWER_SHARING_CONNECTED:Ljava/lang/String; = "com.samsung.server.BatteryService.action.WIRELESS_POWER_SHARING_CONNECTED"

.field public static final blacklist ACTION_WIRELESS_POWER_SHARING_ENABLED:Ljava/lang/String; = "com.samsung.server.BatteryService.action.WIRELESS_POWER_SHARING_ENABLED"

.field public static final blacklist ACTION_WIRELESS_POWER_SHARING_TX_EVENT:Ljava/lang/String; = "com.samsung.server.BatteryService.action.WIRELESS_POWER_SHARING_TX_EVENT"

.field public static final blacklist BATTERY_CHARGER_TYPE_FAST:I = 0x1

.field public static final blacklist BATTERY_CHARGER_TYPE_FAST_12V:I = 0x2

.field public static final blacklist BATTERY_CHARGER_TYPE_FAST_25W:I = 0x3

.field public static final blacklist BATTERY_CHARGER_TYPE_FAST_45W:I = 0x4

.field public static final blacklist BATTERY_CHARGER_TYPE_NORMAL:I = 0x0

.field public static final blacklist BATTERY_DETERIORATION_AGED:I = 0x3

.field public static final blacklist BATTERY_DETERIORATION_BAD:I = 0xf

.field public static final blacklist BATTERY_DETERIORATION_GOOD:I = 0x1

.field public static final blacklist BATTERY_DETERIORATION_NORMAL:I = 0x2

.field public static final blacklist BATTERY_DETERIORATION_UNKNOWN:I = 0x0

.field public static final whitelist BATTERY_HEALTH_COLD:I = 0x7

.field public static final whitelist BATTERY_HEALTH_DEAD:I = 0x4

.field public static final whitelist BATTERY_HEALTH_GOOD:I = 0x2

.field public static final whitelist BATTERY_HEALTH_OVERHEAT:I = 0x3

.field public static final whitelist BATTERY_HEALTH_OVER_VOLTAGE:I = 0x5

.field public static final whitelist BATTERY_HEALTH_UNKNOWN:I = 0x1

.field public static final whitelist BATTERY_HEALTH_UNSPECIFIED_FAILURE:I = 0x6

.field public static final blacklist BATTERY_MISC_EVENT_ABNORMAL_PAD:I = 0x200000

.field public static final blacklist BATTERY_MISC_EVENT_DETERIORATION:I = 0xf0000

.field public static final blacklist BATTERY_MISC_EVENT_DIRECT_POWER_MODE:I = 0x4000

.field public static final blacklist BATTERY_MISC_EVENT_FULL_CAPACITY:I = 0x1000000

.field public static final blacklist BATTERY_MISC_EVENT_HICCUP_ENABLED:I = 0x20

.field public static final blacklist BATTERY_MISC_EVENT_OVERHEAT_LIMIT:I = 0x100000

.field public static final blacklist BATTERY_MISC_EVENT_RECHARGE:I = 0x8

.field public static final blacklist BATTERY_MISC_EVENT_TEMP_HICCUP_TYPE:I = 0x2000

.field public static final blacklist BATTERY_MISC_EVENT_TIMEOUT_OPEN_TYPE:I = 0x4

.field public static final blacklist BATTERY_MISC_EVENT_WATER_IN_CONNECTOR:I = 0x1

.field public static final blacklist BATTERY_MISC_EVENT_WATER_IN_POGO:I = 0x10

.field public static final blacklist BATTERY_MISC_EVENT_WIRELESS_AUTH_FAIL:I = 0x800

.field public static final blacklist BATTERY_MISC_EVENT_WIRELESS_AUTH_RECEIVED:I = 0x400

.field public static final blacklist BATTERY_MISC_EVENT_WIRELESS_AUTH_START:I = 0x200

.field public static final blacklist BATTERY_MISC_EVENT_WIRELESS_BACKPACK:I = 0x2

.field public static final blacklist BATTERY_MISC_EVENT_WIRELESS_DET_LEVEL:I = 0x40

.field public static final blacklist BATTERY_MISC_EVENT_WIRELESS_FOD:I = 0x100

.field public static final blacklist BATTERY_MISC_EVENT_WIRELESS_MISALIGN:I = 0x400000

.field public static final blacklist BATTERY_ONLINE_CABLE_SILENT_TYPE:I = 0x63

.field public static final blacklist BATTERY_ONLINE_FAST_WIRELESS_CHARGER:I = 0x64

.field public static final blacklist BATTERY_ONLINE_INCOMPATIBLE_CHARGER:I = 0x0

.field public static final blacklist BATTERY_ONLINE_NONE:I = 0x1

.field public static final blacklist BATTERY_ONLINE_POGO:I = 0x17

.field public static final blacklist BATTERY_ONLINE_TA:I = 0x3

.field public static final blacklist BATTERY_ONLINE_USB:I = 0x4

.field public static final blacklist BATTERY_ONLINE_WATER_IN_CONNECTOR:I = 0x65

.field public static final blacklist BATTERY_ONLINE_WIRELESS_CHARGER:I = 0xa

.field public static final whitelist BATTERY_PLUGGED_AC:I = 0x1

.field public static final greylist-max-o BATTERY_PLUGGED_ANY:I = 0xf

.field public static final whitelist BATTERY_PLUGGED_DOCK:I = 0x8

.field public static final blacklist BATTERY_PLUGGED_OTG:I = 0x10000

.field public static final whitelist BATTERY_PLUGGED_USB:I = 0x2

.field public static final whitelist BATTERY_PLUGGED_WIRELESS:I = 0x4

.field public static final whitelist BATTERY_PROPERTY_CAPACITY:I = 0x4

.field public static final whitelist BATTERY_PROPERTY_CHARGE_COUNTER:I = 0x1

.field public static final whitelist BATTERY_PROPERTY_CURRENT_AVERAGE:I = 0x3

.field public static final whitelist BATTERY_PROPERTY_CURRENT_NOW:I = 0x2

.field public static final whitelist BATTERY_PROPERTY_ENERGY_COUNTER:I = 0x5

.field public static final whitelist BATTERY_PROPERTY_STATUS:I = 0x6

.field public static final whitelist BATTERY_STATUS_CHARGING:I = 0x2

.field public static final whitelist BATTERY_STATUS_DISCHARGING:I = 0x3

.field public static final whitelist BATTERY_STATUS_FULL:I = 0x5

.field public static final whitelist BATTERY_STATUS_NOT_CHARGING:I = 0x4

.field public static final whitelist BATTERY_STATUS_UNKNOWN:I = 0x1

.field public static final blacklist BATTERY_TX_EVENT_WIRELESS_POWER_SHARING_RX_CHG_SWITCH:I = 0x20

.field public static final blacklist BATTERY_TX_EVENT_WIRELESS_POWER_SHARING_RX_CONNECTED:I = 0x2

.field public static final blacklist BATTERY_TX_EVENT_WIRELESS_POWER_SHARING_RX_CS100:I = 0x40

.field public static final blacklist BATTERY_TX_EVENT_WIRELESS_POWER_SHARING_RX_UNSAFE_TEMP:I = 0x10

.field public static final blacklist BATTERY_TX_EVENT_WIRELESS_POWER_SHARING_TX_5V_TA:I = 0x10000

.field public static final blacklist BATTERY_TX_EVENT_WIRELESS_POWER_SHARING_TX_CAMERA_ON:I = 0x800

.field public static final blacklist BATTERY_TX_EVENT_WIRELESS_POWER_SHARING_TX_CRITICAL_EOC:I = 0x400

.field public static final blacklist BATTERY_TX_EVENT_WIRELESS_POWER_SHARING_TX_ENABLED:I = 0x1

.field public static final blacklist BATTERY_TX_EVENT_WIRELESS_POWER_SHARING_TX_ETC:I = 0x4000

.field public static final blacklist BATTERY_TX_EVENT_WIRELESS_POWER_SHARING_TX_FOD:I = 0x4

.field public static final blacklist BATTERY_TX_EVENT_WIRELESS_POWER_SHARING_TX_HIGH_TEMP:I = 0x8

.field public static final blacklist BATTERY_TX_EVENT_WIRELESS_POWER_SHARING_TX_LOW_TEMP:I = 0x100

.field public static final blacklist BATTERY_TX_EVENT_WIRELESS_POWER_SHARING_TX_MISALIGN:I = 0x2000

.field public static final blacklist BATTERY_TX_EVENT_WIRELESS_POWER_SHARING_TX_OCP:I = 0x1000

.field public static final blacklist BATTERY_TX_EVENT_WIRELESS_POWER_SHARING_TX_OTG_ON:I = 0x80

.field public static final blacklist BATTERY_TX_EVENT_WIRELESS_POWER_SHARING_TX_RETRY:I = 0x8000

.field public static final blacklist BATTERY_TX_EVENT_WIRELESS_POWER_SHARING_TX_SOC_DRAIN:I = 0x200

.field public static final blacklist BATTERY_WIRELESS_POWER_SHARING_EXTERNEL_EVENT_CALL:I = 0x4

.field public static final blacklist BATTERY_WIRELESS_POWER_SHARING_EXTERNEL_EVENT_CAMERA:I = 0x1

.field public static final blacklist BATTERY_WIRELESS_POWER_SHARING_EXTERNEL_EVENT_DEX:I = 0x2

.field public static final whitelist EXTRA_BATTERY_LOW:Ljava/lang/String; = "battery_low"

.field public static final blacklist EXTRA_CAPACITY:Ljava/lang/String; = "capacity"

.field public static final blacklist EXTRA_CHARGER_TYPE:Ljava/lang/String; = "charger_type"

.field public static final greylist-max-r EXTRA_CHARGE_COUNTER:Ljava/lang/String; = "charge_counter"

.field public static final blacklist EXTRA_CHARGE_TYPE:Ljava/lang/String; = "charge_type"

.field public static final blacklist EXTRA_CURRENT_AVG:Ljava/lang/String; = "current_avg"

.field public static final blacklist EXTRA_CURRENT_NOW:Ljava/lang/String; = "current_now"

.field public static final blacklist EXTRA_DETERIORATION:Ljava/lang/String; = "deterioration"

.field public static final whitelist EXTRA_EVENTS:Ljava/lang/String; = "android.os.extra.EVENTS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_EVENT_TIMESTAMP:Ljava/lang/String; = "android.os.extra.EVENT_TIMESTAMP"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_HEALTH:Ljava/lang/String; = "health"

.field public static final blacklist EXTRA_HIGHVOLTAGE_CHARGER:Ljava/lang/String; = "hv_charger"

.field public static final whitelist EXTRA_ICON_SMALL:Ljava/lang/String; = "icon-small"

.field public static final greylist EXTRA_INVALID_CHARGER:Ljava/lang/String; = "invalid_charger"

.field public static final whitelist EXTRA_LEVEL:Ljava/lang/String; = "level"

.field public static final greylist-max-r EXTRA_MAX_CHARGING_CURRENT:Ljava/lang/String; = "max_charging_current"

.field public static final greylist-max-r EXTRA_MAX_CHARGING_VOLTAGE:Ljava/lang/String; = "max_charging_voltage"

.field public static final blacklist EXTRA_MISC_EVENT:Ljava/lang/String; = "misc_event"

.field public static final blacklist EXTRA_ONLINE:Ljava/lang/String; = "online"

.field public static final blacklist EXTRA_OTG_CHARGE_BLOCK_ENABLE:Ljava/lang/String; = "OTG_CHARGE_BLOCK"

.field public static final whitelist EXTRA_PLUGGED:Ljava/lang/String; = "plugged"

.field public static final blacklist EXTRA_POGO_CONDITION:Ljava/lang/String; = "pogo_plugged"

.field public static final blacklist EXTRA_POWER_SHARING:Ljava/lang/String; = "power_sharing"

.field public static final blacklist EXTRA_POWER_SHARING_ENABLE:Ljava/lang/String; = "power_sharing_enable"

.field public static final whitelist EXTRA_PRESENT:Ljava/lang/String; = "present"

.field public static final blacklist EXTRA_RX_CONNECTED:Ljava/lang/String; = "connected"

.field public static final whitelist EXTRA_SCALE:Ljava/lang/String; = "scale"

.field public static final blacklist EXTRA_SEC_CURRENT_EVENT:Ljava/lang/String; = "current_event"

.field public static final blacklist EXTRA_SEC_PLUG_TYPE_SUMMARY:Ljava/lang/String; = "sec_plug_type"

.field public static final blacklist EXTRA_SELF_DISCHARGING:Ljava/lang/String; = "self_discharging"

.field public static final greylist-max-o EXTRA_SEQUENCE:Ljava/lang/String; = "seq"

.field public static final whitelist EXTRA_STATUS:Ljava/lang/String; = "status"

.field public static final whitelist EXTRA_TECHNOLOGY:Ljava/lang/String; = "technology"

.field public static final whitelist EXTRA_TEMPERATURE:Ljava/lang/String; = "temperature"

.field public static final blacklist EXTRA_TX_ENABLED:Ljava/lang/String; = "enabled"

.field public static final blacklist EXTRA_TX_EVENT:Ljava/lang/String; = "tx_event"

.field public static final whitelist EXTRA_VOLTAGE:Ljava/lang/String; = "voltage"

.field public static final blacklist EXTRA_WATER:Ljava/lang/String; = "water"

.field public static final blacklist PERMISSION_BATTERY_INFO:Ljava/lang/String; = "com.samsung.android.permission.BATTERY_INFO"

.field public static final blacklist SEM_ACTION_BATTERY_INFO_ADDED:Ljava/lang/String; = "com.samsung.battery.ACTION_BATTERY_INFO_ADDED"

.field public static final blacklist SEM_ACTION_BATTERY_INFO_CHANGED:Ljava/lang/String; = "com.samsung.battery.ACTION_BATTERY_INFO_CHANGED"

.field public static final blacklist SEM_ACTION_BATTERY_INFO_REMOVED:Ljava/lang/String; = "com.samsung.battery.ACTION_BATTERY_INFO_REMOVED"

.field public static final blacklist SEM_BATTERY_INFO_DEVICE_TYPE_BUDS:I = 0x3

.field public static final blacklist SEM_BATTERY_INFO_DEVICE_TYPE_BUDS_OLD:I = 0xb

.field public static final blacklist SEM_BATTERY_INFO_DEVICE_TYPE_PHONE:I = 0x2

.field public static final blacklist SEM_BATTERY_INFO_DEVICE_TYPE_SPEN:I = 0x5

.field public static final blacklist SEM_BATTERY_INFO_DEVICE_TYPE_SPEN_EXTERNAL:I = 0xc

.field public static final blacklist SEM_BATTERY_INFO_DEVICE_TYPE_UNKNOWN:I = 0x1

.field public static final blacklist SEM_BATTERY_INFO_DEVICE_TYPE_WATCH:I = 0x4

.field public static final blacklist SEM_EXTRA_BATTERY_INFO:Ljava/lang/String; = "com.samsung.battery.EXTRA_BATTERY_INFO"


# instance fields
.field private final greylist-max-o mBatteryPropertiesRegistrar:Landroid/os/IBatteryPropertiesRegistrar;

.field private final greylist-max-o mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final greylist-max-o mContext:Landroid/content/Context;


# direct methods
.method public constructor greylist <init>()V
    .locals 1

    .line 863
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 864
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/BatteryManager;->mContext:Landroid/content/Context;

    .line 865
    nop

    .line 866
    const-string v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 865
    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Landroid/os/BatteryManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 867
    nop

    .line 868
    const-string v0, "batteryproperties"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 867
    invoke-static {v0}, Landroid/os/IBatteryPropertiesRegistrar$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IBatteryPropertiesRegistrar;

    move-result-object v0

    iput-object v0, p0, Landroid/os/BatteryManager;->mBatteryPropertiesRegistrar:Landroid/os/IBatteryPropertiesRegistrar;

    .line 869
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;Landroid/os/IBatteryPropertiesRegistrar;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "batteryStats"    # Lcom/android/internal/app/IBatteryStats;
    .param p3, "batteryPropertiesRegistrar"    # Landroid/os/IBatteryPropertiesRegistrar;

    .line 874
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 875
    iput-object p1, p0, Landroid/os/BatteryManager;->mContext:Landroid/content/Context;

    .line 876
    iput-object p2, p0, Landroid/os/BatteryManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 877
    iput-object p3, p0, Landroid/os/BatteryManager;->mBatteryPropertiesRegistrar:Landroid/os/IBatteryPropertiesRegistrar;

    .line 878
    return-void
.end method

.method public static greylist-max-o isPlugWired(I)Z
    .locals 2
    .param p0, "plugType"    # I

    .line 963
    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private greylist-max-o queryProperty(I)J
    .locals 3
    .param p1, "id"    # I

    .line 903
    iget-object v0, p0, Landroid/os/BatteryManager;->mBatteryPropertiesRegistrar:Landroid/os/IBatteryPropertiesRegistrar;

    if-nez v0, :cond_0

    .line 904
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 908
    :cond_0
    :try_start_0
    new-instance v0, Landroid/os/BatteryProperty;

    invoke-direct {v0}, Landroid/os/BatteryProperty;-><init>()V

    .line 910
    .local v0, "prop":Landroid/os/BatteryProperty;
    iget-object v1, p0, Landroid/os/BatteryManager;->mBatteryPropertiesRegistrar:Landroid/os/IBatteryPropertiesRegistrar;

    invoke-interface {v1, p1, v0}, Landroid/os/IBatteryPropertiesRegistrar;->getProperty(ILandroid/os/BatteryProperty;)I

    move-result v1

    if-nez v1, :cond_1

    .line 911
    invoke-virtual {v0}, Landroid/os/BatteryProperty;->getLong()J

    move-result-wide v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .local v1, "ret":J
    goto :goto_0

    .line 913
    .end local v1    # "ret":J
    :cond_1
    const-wide/high16 v1, -0x8000000000000000L

    .line 916
    .end local v0    # "prop":Landroid/os/BatteryProperty;
    .restart local v1    # "ret":J
    :goto_0
    nop

    .line 918
    return-wide v1

    .line 914
    .end local v1    # "ret":J
    :catch_0
    move-exception v0

    .line 915
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public whitelist computeChargeTimeRemaining()J
    .locals 2

    .line 976
    :try_start_0
    iget-object v0, p0, Landroid/os/BatteryManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0}, Lcom/android/internal/app/IBatteryStats;->computeChargeTimeRemaining()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 977
    :catch_0
    move-exception v0

    .line 978
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getIntProperty(I)I
    .locals 4
    .param p1, "id"    # I

    .line 931
    invoke-direct {p0, p1}, Landroid/os/BatteryManager;->queryProperty(I)J

    move-result-wide v0

    .line 932
    .local v0, "value":J
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/os/BatteryManager;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 933
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_0

    .line 935
    const/high16 v2, -0x80000000

    return v2

    .line 938
    :cond_0
    long-to-int v2, v0

    return v2
.end method

.method public whitelist getLongProperty(I)J
    .locals 2
    .param p1, "id"    # I

    .line 951
    invoke-direct {p0, p1}, Landroid/os/BatteryManager;->queryProperty(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist isCharging()Z
    .locals 2

    .line 888
    :try_start_0
    iget-object v0, p0, Landroid/os/BatteryManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0}, Lcom/android/internal/app/IBatteryStats;->isCharging()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 889
    :catch_0
    move-exception v0

    .line 890
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist semGetDeviceBatteryInfo(Ljava/lang/String;)Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;
    .locals 2
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1031
    :try_start_0
    iget-object v0, p0, Landroid/os/BatteryManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IBatteryStats;->getDeviceBatteryInfo(Ljava/lang/String;)Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1034
    .local v0, "batteryInfo":Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;
    nop

    .line 1036
    return-object v0

    .line 1032
    .end local v0    # "batteryInfo":Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;
    :catch_0
    move-exception v0

    .line 1033
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist semGetDeviceBatteryInfos()[Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1014
    :try_start_0
    iget-object v0, p0, Landroid/os/BatteryManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0}, Lcom/android/internal/app/IBatteryStats;->getDeviceBatteryInfos()[Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1015
    .local v0, "parcelers":[Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;
    return-object v0

    .line 1016
    .end local v0    # "parcelers":[Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;
    :catch_0
    move-exception v0

    .line 1017
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist semRegisterDeviceBatteryInfoChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1048
    :try_start_0
    iget-object v0, p0, Landroid/os/BatteryManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IBatteryStats;->registerDeviceBatteryInfoChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1051
    nop

    .line 1052
    return-void

    .line 1049
    :catch_0
    move-exception v0

    .line 1050
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist semUnRegisterDeviceBatteryInfoChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1063
    :try_start_0
    iget-object v0, p0, Landroid/os/BatteryManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IBatteryStats;->unRegisterDeviceBatteryInfoChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1066
    nop

    .line 1067
    return-void

    .line 1064
    :catch_0
    move-exception v0

    .line 1065
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setChargingStateUpdateDelayMillis(I)Z
    .locals 2
    .param p1, "delayMillis"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 998
    :try_start_0
    iget-object v0, p0, Landroid/os/BatteryManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IBatteryStats;->setChargingStateUpdateDelayMillis(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 999
    :catch_0
    move-exception v0

    .line 1000
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
