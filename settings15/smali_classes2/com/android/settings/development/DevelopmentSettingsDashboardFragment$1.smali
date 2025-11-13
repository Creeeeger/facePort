.class public final Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$1;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "mBluetoothA2dpReceiver.onReceive intent="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DevSettingsDashboard"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "android.bluetooth.a2dp.profile.action.CODEC_CONFIG_CHANGED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "android.bluetooth.extra.CODEC_STATUS"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothCodecStatus;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Received BluetoothCodecStatus="

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$1;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    iget-object p0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mPreferenceControllers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/core/AbstractPreferenceController;

    instance-of p2, p1, Lcom/android/settings/development/BluetoothServiceConnectionListener;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/android/settings/development/BluetoothServiceConnectionListener;

    invoke-interface {p1}, Lcom/android/settings/development/BluetoothServiceConnectionListener;->onBluetoothCodecUpdated()V

    goto :goto_0

    :cond_1
    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$1;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    iget-object p0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mPreferenceControllers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/core/AbstractPreferenceController;

    instance-of p2, p1, Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;

    if-eqz p2, :cond_2

    check-cast p1, Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;

    invoke-virtual {p1}, Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;->isAvailable()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p1, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p1, p2}, Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;->updateState(Landroidx/preference/Preference;)V

    goto :goto_1

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
