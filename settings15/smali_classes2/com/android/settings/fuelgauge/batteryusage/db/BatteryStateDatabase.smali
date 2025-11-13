.class public abstract Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDatabase;
.super Landroidx/room/RoomDatabase;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static sBatteryStateDatabase:Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDatabase;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDatabase;
    .locals 2

    sget-object v0, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDatabase;->sBatteryStateDatabase:Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDatabase;

    if-nez v0, :cond_0

    const-class v0, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDatabase;

    const-string v1, "battery-usage-db-v10"

    invoke-static {p0, v0, v1}, Landroidx/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/room/RoomDatabase$Builder;->allowMainThreadQueries:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/room/RoomDatabase$Builder;->requireMigration:Z

    iput-boolean v0, p0, Landroidx/room/RoomDatabase$Builder;->allowDestructiveMigrationOnDowngrade:Z

    invoke-virtual {p0}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    move-result-object p0

    check-cast p0, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDatabase;

    sput-object p0, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDatabase;->sBatteryStateDatabase:Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDatabase;

    const-string p0, "BatteryStateDatabase"

    const-string v0, "initialize battery states database"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object p0, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDatabase;->sBatteryStateDatabase:Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDatabase;

    return-object p0
.end method


# virtual methods
.method public abstract appUsageEventDao()Lcom/android/settings/fuelgauge/batteryusage/db/AppUsageEventDao_Impl;
.end method

.method public abstract batteryEventDao()Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventDao_Impl;
.end method

.method public abstract batteryReattributeDao()Lcom/android/settings/fuelgauge/batteryusage/db/BatteryReattributeDao;
.end method

.method public abstract batteryStateDao()Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDao_Impl;
.end method

.method public abstract batteryUsageSlotDao()Lcom/android/settings/fuelgauge/batteryusage/db/BatteryUsageSlotDao_Impl;
.end method
