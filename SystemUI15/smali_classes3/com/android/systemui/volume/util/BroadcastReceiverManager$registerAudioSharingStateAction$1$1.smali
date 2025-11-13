.class public final Lcom/android/systemui/volume/util/BroadcastReceiverManager$registerAudioSharingStateAction$1$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic $changeCallback:Ljava/lang/Runnable;

.field public final synthetic $updateIsBudsTogetherEnabled:Ljava/util/function/Consumer;

.field public final synthetic this$0:Lcom/android/systemui/volume/util/BroadcastReceiverManager;


# direct methods
.method public constructor <init>(Ljava/util/function/Consumer;Ljava/lang/Runnable;Lcom/android/systemui/volume/util/BroadcastReceiverManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/Runnable;",
            "Lcom/android/systemui/volume/util/BroadcastReceiverManager;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/volume/util/BroadcastReceiverManager$registerAudioSharingStateAction$1$1;->$updateIsBudsTogetherEnabled:Ljava/util/function/Consumer;

    iput-object p2, p0, Lcom/android/systemui/volume/util/BroadcastReceiverManager$registerAudioSharingStateAction$1$1;->$changeCallback:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/android/systemui/volume/util/BroadcastReceiverManager$registerAudioSharingStateAction$1$1;->this$0:Lcom/android/systemui/volume/util/BroadcastReceiverManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.android.bluetooth.audiocast.action.device.AUDIO_SHARING_MODE_CHANGED"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, " "

    const-string v2, "onReceive : "

    const-string/jumbo v3, "vol.BroadcastManager"

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    const-string v0, "com.samsung.android.bluetooth.cast.extra.AUDIO_SHARING_MODE"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    move v4, v0

    :cond_0
    iget-object p2, p0, Lcom/android/systemui/volume/util/BroadcastReceiverManager$registerAudioSharingStateAction$1$1;->$updateIsBudsTogetherEnabled:Ljava/util/function/Consumer;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/android/systemui/volume/util/BroadcastReceiverManager$registerAudioSharingStateAction$1$1;->$changeCallback:Ljava/lang/Runnable;

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    iget-object p0, p0, Lcom/android/systemui/volume/util/BroadcastReceiverManager$registerAudioSharingStateAction$1$1;->this$0:Lcom/android/systemui/volume/util/BroadcastReceiverManager;

    iget-object p0, p0, Lcom/android/systemui/volume/util/BroadcastReceiverManager;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "com.samsung.android.bluetooth.audiocast.action.device.AUDIO_SHARING_DEVICE_VOLUME_CHANGED"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "com.samsung.android.bluetooth.cast.extra.AUDIO_SHARING_DEVICE_VOLUME"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iget-object v0, p0, Lcom/android/systemui/volume/util/BroadcastReceiverManager$registerAudioSharingStateAction$1$1;->$changeCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object p0, p0, Lcom/android/systemui/volume/util/BroadcastReceiverManager$registerAudioSharingStateAction$1$1;->this$0:Lcom/android/systemui/volume/util/BroadcastReceiverManager;

    iget-object p0, p0, Lcom/android/systemui/volume/util/BroadcastReceiverManager;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    invoke-static {p2, v2, p1, v1}, Lcom/android/app/tracing/coroutines/TraceData$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
