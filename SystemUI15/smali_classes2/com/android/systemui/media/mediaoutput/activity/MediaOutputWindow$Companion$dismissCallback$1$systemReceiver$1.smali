.class public final Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$Companion$dismissCallback$1$systemReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic $$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

.field public final SYSTEM_DIALOG_REASON_DREAM:Ljava/lang/String;

.field public final SYSTEM_DIALOG_REASON_HOME_KEY:Ljava/lang/String;

.field public final SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String;

.field public final SYSTEM_DIALOG_REASON_RECENT_APPS:Ljava/lang/String;

.field public final reasons$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ProducerScope;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$Companion$dismissCallback$1$systemReceiver$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string p1, "reason"

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$Companion$dismissCallback$1$systemReceiver$1;->SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String;

    const-string p1, "recentapps"

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$Companion$dismissCallback$1$systemReceiver$1;->SYSTEM_DIALOG_REASON_RECENT_APPS:Ljava/lang/String;

    const-string p1, "homekey"

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$Companion$dismissCallback$1$systemReceiver$1;->SYSTEM_DIALOG_REASON_HOME_KEY:Ljava/lang/String;

    const-string p1, "dream"

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$Companion$dismissCallback$1$systemReceiver$1;->SYSTEM_DIALOG_REASON_DREAM:Ljava/lang/String;

    new-instance p1, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$Companion$dismissCallback$1$systemReceiver$1$reasons$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$Companion$dismissCallback$1$systemReceiver$1$reasons$2;-><init>(Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$Companion$dismissCallback$1$systemReceiver$1;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$Companion$dismissCallback$1$systemReceiver$1;->reasons$delegate:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/media/mediaoutput/ext/BundleExtKt;->getSerialize(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onReceive() - action = "

    const-string v2, " - "

    const-string v3, "MediaOutputWindow"

    invoke-static {v1, p1, v2, v0, v3}, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$Companion$dismissCallback$1$systemReceiver$1;->SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$Companion$dismissCallback$1$systemReceiver$1;->SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$Companion$dismissCallback$1$systemReceiver$1;->reasons$delegate:Lkotlin/Lazy;

    invoke-interface {p2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, v0

    :goto_1
    if-eqz p1, :cond_2

    return-void

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$Companion$dismissCallback$1$systemReceiver$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    new-instance p1, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$Companion$dismissCallback$1$systemReceiver$1$onReceive$5;

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$Companion$dismissCallback$1$systemReceiver$1$onReceive$5;-><init>(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)V

    const/4 p2, 0x3

    invoke-static {p0, v0, v0, p1, p2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method
