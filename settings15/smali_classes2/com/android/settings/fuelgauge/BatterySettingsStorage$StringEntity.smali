.class public final Lcom/android/settings/fuelgauge/BatterySettingsStorage$StringEntity;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/datastore/BackupRestoreEntity;


# instance fields
.field public final mKey:Ljava/lang/String;

.field public final mValue:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/settings/fuelgauge/BatterySettingsStorage;


# direct methods
.method public constructor <init>(Lcom/android/settings/fuelgauge/BatterySettingsStorage;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatterySettingsStorage$StringEntity;->this$0:Lcom/android/settings/fuelgauge/BatterySettingsStorage;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatterySettingsStorage$StringEntity;->mKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/fuelgauge/BatterySettingsStorage$StringEntity;->mValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final backup(Lcom/android/settingslib/datastore/BackupContext;Ljava/io/OutputStream;)Lcom/android/settingslib/datastore/EntityBackupResult;
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "backup:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySettingsStorage$StringEntity;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatterySettingsStorage$StringEntity;->mValue:Ljava/lang/String;

    const-string v0, "BatterySettingsStorage"

    invoke-static {p1, p0, v0}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write([B)V

    sget-object p0, Lcom/android/settingslib/datastore/EntityBackupResult;->UPDATE:Lcom/android/settingslib/datastore/EntityBackupResult;

    return-object p0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatterySettingsStorage$StringEntity;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public final restore(Lcom/android/settingslib/datastore/RestoreContext;Ljava/io/InputStream;)V
    .locals 1

    new-instance p1, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/io/InputStream;->readAllBytes()[B

    move-result-object p2

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, p2, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iget-object p2, p0, Lcom/android/settings/fuelgauge/BatterySettingsStorage$StringEntity;->this$0:Lcom/android/settings/fuelgauge/BatterySettingsStorage;

    iget-object p2, p2, Lcom/android/settings/fuelgauge/BatterySettingsStorage;->mDeviceBuildInfoMap:Landroid/util/ArrayMap;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatterySettingsStorage$StringEntity;->mKey:Ljava/lang/String;

    invoke-virtual {p2, p0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "restore:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    const-string v0, "BatterySettingsStorage"

    invoke-static {p2, p0, p1, v0}, Lcom/android/settings/applications/AppStateClonedAppsBridge$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
