.class public final Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$Companion$dismissCallback$1$activityControllerListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/app/ActivityManager$SemActivityControllerListener;


# instance fields
.field public final synthetic $$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

.field public final allowList:Ljava/util/List;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ProducerScope;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$Companion$dismissCallback$1$activityControllerListener$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "com.samsung.android.mtp"

    const-string v0, "com.google.android.gms"

    const-string v1, "com.samsung.android.easysetup"

    filled-new-array {v1, p1, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$Companion$dismissCallback$1$activityControllerListener$1;->allowList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onActivityResuming(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final onActivityStarting(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 1

    const-string p1, "onActivityStarting() - pkg = "

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaOutputWindow"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$Companion$dismissCallback$1$activityControllerListener$1;->allowList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$Companion$dismissCallback$1$activityControllerListener$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    new-instance p1, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$Companion$dismissCallback$1$activityControllerListener$1$onActivityStarting$2$1;

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$Companion$dismissCallback$1$activityControllerListener$1$onActivityStarting$2$1;-><init>(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)V

    const/4 p2, 0x3

    invoke-static {p0, v0, v0, p1, p2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final onAppCrashed(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final onAppEarlyNotResponding(Ljava/lang/String;ILjava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onAppNotResponding(Ljava/lang/String;ILjava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onSystemNotResponding(Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
