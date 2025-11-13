.class public final Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager$1;->this$0:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager$1;->this$0:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager;

    iget-object v1, v0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager;->qsDetailControllerLazy:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/SecQSDetailController;

    iget-object v2, v0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager;->soundCraftQpDetailAdapter:Lcom/android/systemui/audio/soundcraft/view/SoundCraftQpDetailAdapter;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/SecQSDetailController;->closeTargetDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;)V

    sget-object v1, Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettingConstants;->INSTANCE:Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettingConstants;

    iget-object v2, v0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-static {v2, v1}, Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettingConstants;->isBudsConnected(Landroid/content/Context;Z)V

    iget-object v1, v0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager;->context:Landroid/content/Context;

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettingConstants;->budsPluginPackageName(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager;->soundCraftSettings:Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettings;

    invoke-virtual {v0}, Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettings;->update()V

    const-string v0, "SoundCraft.SoundCraftManager"

    if-nez p1, :cond_0

    const-string p0, "onA2dpActiveDeviceChanged : device is null."

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager$1;->this$0:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager;

    iget-object v1, v1, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager;->bluetoothDeviceManager:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->isBuds3OrNextModel(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onA2dpActiveDeviceChanged : name="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isBuds3OrNextModel="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager$1;->this$0:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager;->requestGWPluginModel(Landroid/bluetooth/BluetoothDevice;)V

    :cond_1
    :goto_0
    return-void
.end method
