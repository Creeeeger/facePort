.class public final Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings$5;
.super Landroid/os/AsyncTask;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings$5;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, [Ljava/lang/Void;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "asyncUpdateCloudPreference() SC support V2 : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings$5;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;

    iget-boolean v0, v0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mIsSCSupportV2:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mIsSCMenuUpdated : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings$5;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;

    iget-boolean v0, v0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mIsSCMenuUpdated:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothAdvancedSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings$5;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;

    iget-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mIsSCMenuUpdated:Z

    const/high16 v1, 0x400000

    if-eqz p1, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mSamsungCloudRPCSettingV2:Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSettingV2;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSettingV2;->iSyncSetting:Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;

    invoke-virtual {p0}, Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;->getProfile()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string/jumbo p1, "precondition"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "preCondition : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, "mSamsungCloudRPCSettingV2.getProfile() return null"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Ljava/lang/Integer;

    const-string v0, "BluetoothAdvancedSettings"

    const-string/jumbo v1, "onPostExecute"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings$5;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;

    sget-object v2, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mAdvancedDeltaTargets:Ljava/util/List;

    invoke-virtual {v1}, Lcom/android/settings/SettingsPreferenceFragment;->isFinishingOrDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "isFinishingOrDestroyed return"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings$5;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;

    iget-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mIsSCMenuUpdated:Z

    if-eqz v1, :cond_1

    const-string p0, "mIsSCMenuUpdated is true"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    const-string/jumbo p0, "preCondition is null"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->-$$Nest$mupdateCloudPreference(Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;)V

    :goto_0
    return-void
.end method
