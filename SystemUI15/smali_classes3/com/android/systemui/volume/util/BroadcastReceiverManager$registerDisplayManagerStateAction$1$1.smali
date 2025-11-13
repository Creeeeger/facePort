.class public final Lcom/android/systemui/volume/util/BroadcastReceiverManager$registerDisplayManagerStateAction$1$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic $updateIsDLNAEnabled:Ljava/util/function/Consumer;

.field public final synthetic $updateIsSupportTvVolumeControl:Ljava/util/function/Consumer;

.field public final synthetic this$0:Lcom/android/systemui/volume/util/BroadcastReceiverManager;


# direct methods
.method public constructor <init>(Ljava/util/function/Consumer;Lcom/android/systemui/volume/util/BroadcastReceiverManager;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/systemui/volume/util/BroadcastReceiverManager;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/volume/util/BroadcastReceiverManager$registerDisplayManagerStateAction$1$1;->$updateIsSupportTvVolumeControl:Ljava/util/function/Consumer;

    iput-object p2, p0, Lcom/android/systemui/volume/util/BroadcastReceiverManager$registerDisplayManagerStateAction$1$1;->this$0:Lcom/android/systemui/volume/util/BroadcastReceiverManager;

    iput-object p3, p0, Lcom/android/systemui/volume/util/BroadcastReceiverManager$registerDisplayManagerStateAction$1$1;->$updateIsDLNAEnabled:Ljava/util/function/Consumer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x3f4ab253

    const-string v2, "onReceive : SmartView action="

    const-string/jumbo v3, "vol.BroadcastManager"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v0, v1, :cond_4

    const v1, 0x676d493f

    if-eq v0, v1, :cond_3

    const v1, 0x706b3984

    if-eq v0, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v0, "com.samsung.intent.action.DLNA_STATUS_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_3

    :cond_1
    const-string/jumbo p1, "status"

    invoke-virtual {p2, p1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v4, :cond_2

    goto :goto_0

    :cond_2
    move v4, v5

    :goto_0
    iget-object p1, p0, Lcom/android/systemui/volume/util/BroadcastReceiverManager$registerDisplayManagerStateAction$1$1;->$updateIsDLNAEnabled:Ljava/util/function/Consumer;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/volume/util/BroadcastReceiverManager$registerDisplayManagerStateAction$1$1;->this$0:Lcom/android/systemui/volume/util/BroadcastReceiverManager;

    iget-object p0, p0, Lcom/android/systemui/volume/util/BroadcastReceiverManager;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", dlnaEnabled="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    const-string v0, "com.samsung.intent.action.WIFI_DISPLAY_VOLUME_SUPPORT_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_3

    :cond_4
    const-string v0, "com.samsung.intent.action.WIFI_DISPLAY_SOURCE_STATE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    const-string/jumbo p1, "state"

    invoke-virtual {p2, p1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "isSupportDisplayVolumeControl"

    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/volume/util/BroadcastReceiverManager$registerDisplayManagerStateAction$1$1;->$updateIsSupportTvVolumeControl:Ljava/util/function/Consumer;

    if-ne p1, v4, :cond_6

    if-eqz v0, :cond_6

    move v6, v4

    goto :goto_1

    :cond_6
    move v6, v5

    :goto_1
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/volume/util/BroadcastReceiverManager$registerDisplayManagerStateAction$1$1;->this$0:Lcom/android/systemui/volume/util/BroadcastReceiverManager;

    iget-object p0, p0, Lcom/android/systemui/volume/util/BroadcastReceiverManager;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    if-ne p1, v4, :cond_7

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    move v4, v5

    :goto_2
    const-string v1, ", state="

    const-string v5, ", isSupportDisplayVolumeControl="

    invoke-static {p1, v2, p2, v1, v5}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", ret="

    invoke-static {p1, v0, p2, v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_3
    return-void
.end method
