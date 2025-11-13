.class final Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager$requestGWPluginModel$success$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic $device:Landroid/bluetooth/BluetoothDevice;

.field final synthetic this$0:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager$requestGWPluginModel$success$1;->this$0:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager;

    iput-object p2, p0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager$requestGWPluginModel$success$1;->$device:Landroid/bluetooth/BluetoothDevice;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "onGWPluginModelReceived: modelList size="

    const-string v2, "SoundCraft.SoundCraftManager"

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager$requestGWPluginModel$success$1;->$device:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/systemui/audio/soundcraft/model/buds/plugin/GWPluginModel;

    iget-object v4, v3, Lcom/android/systemui/audio/soundcraft/model/buds/plugin/GWPluginModel;->packageName:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onGWPluginModelReceived: model.packageName="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    iget-object v3, v3, Lcom/android/systemui/audio/soundcraft/model/buds/plugin/GWPluginModel;->deviceId:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/android/systemui/audio/soundcraft/model/buds/plugin/GWPluginModel;

    const/4 p1, 0x1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager$requestGWPluginModel$success$1;->this$0:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager;

    sget-object v0, Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettingConstants;->INSTANCE:Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettingConstants;

    iget-object v2, p0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, p1}, Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettingConstants;->isBudsConnected(Landroid/content/Context;Z)V

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager;->context:Landroid/content/Context;

    iget-object p1, v1, Lcom/android/systemui/audio/soundcraft/model/buds/plugin/GWPluginModel;->packageName:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettingConstants;->budsPluginPackageName(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager$requestGWPluginModel$success$1;->this$0:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager;

    sget-object v0, Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettingConstants;->INSTANCE:Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettingConstants;

    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p1}, Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettingConstants;->isBudsConnected(Landroid/content/Context;Z)V

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager;->context:Landroid/content/Context;

    const-string p1, ""

    invoke-static {p0, p1}, Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettingConstants;->budsPluginPackageName(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
