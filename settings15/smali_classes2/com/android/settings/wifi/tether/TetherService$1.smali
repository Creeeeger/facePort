.class public final Lcom/android/settings/wifi/tether/TetherService$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/wifi/tether/TetherService;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/tether/TetherService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/tether/TetherService$1;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    sget-boolean p1, Lcom/android/settings/wifi/tether/TetherService;->DEBUG:Z

    const-string v0, "TetherService"

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Got provision result "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/wifi/tether/TetherService$1;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    iget-object v1, v1, Lcom/android/settings/wifi/tether/TetherService;->mExpectedProvisionResponseAction:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Received provisioning response for unexpected action="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", expected="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/wifi/tether/TetherService$1;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    iget-object p0, p0, Lcom/android/settings/wifi/tether/TetherService;->mExpectedProvisionResponseAction:Ljava/lang/String;

    invoke-static {p1, p0, v0}, Lcom/android/settings/MainClear$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/android/settings/wifi/tether/TetherService$1;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    iget-boolean v1, p1, Lcom/android/settings/wifi/tether/TetherService;->mInProvisionCheck:Z

    if-nez v1, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Unexpected provisioning response when not in provisioning check"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v1, p1, Lcom/android/settings/wifi/tether/TetherService;->mCurrentTethers:Ljava/util/ArrayList;

    iget p1, p1, Lcom/android/settings/wifi/tether/TetherService;->mCurrentTypeIndex:I

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/wifi/tether/TetherService$1;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/settings/wifi/tether/TetherService;->mInProvisionCheck:Z

    const-string v2, "EntitlementResult"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 v2, -0x1

    if-eq p2, v2, :cond_3

    iget-object v4, p0, Lcom/android/settings/wifi/tether/TetherService$1;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Disable tethering, type:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "tethering"

    invoke-virtual {v4, v5}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/TetheringManager;

    invoke-virtual {v4, v1}, Landroid/net/TetheringManager;->stopTethering(I)V

    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/tether/TetherService$1;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    iget-object v1, v1, Lcom/android/settings/wifi/tether/TetherService;->mPendingCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    if-ne p2, v2, :cond_5

    goto :goto_0

    :cond_5
    const/16 v3, 0xb

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    sget-boolean v2, Lcom/android/settings/wifi/tether/TetherService;->DEBUG:Z

    if-eqz v2, :cond_6

    const-string v2, "Firing result: "

    const-string v4, " to callback"

    invoke-static {v3, v2, v4, v0}, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_1

    :cond_7
    invoke-interface {p1}, Ljava/util/List;->clear()V

    :goto_2
    iget-object p1, p0, Lcom/android/settings/wifi/tether/TetherService$1;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    iget p2, p1, Lcom/android/settings/wifi/tether/TetherService;->mCurrentTypeIndex:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/android/settings/wifi/tether/TetherService;->mCurrentTypeIndex:I

    iget-object p1, p1, Lcom/android/settings/wifi/tether/TetherService;->mCurrentTethers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt p2, p1, :cond_8

    iget-object p0, p0, Lcom/android/settings/wifi/tether/TetherService$1;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    goto :goto_3

    :cond_8
    iget-object p0, p0, Lcom/android/settings/wifi/tether/TetherService$1;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    iget p1, p0, Lcom/android/settings/wifi/tether/TetherService;->mCurrentTypeIndex:I

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/tether/TetherService;->startProvisioning(I)V

    :goto_3
    return-void
.end method
