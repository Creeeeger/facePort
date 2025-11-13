.class final Lcom/android/settingslib/media/data/repository/SpatializerRepositoryImpl$isHeadTrackingAvailableForDevice$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic $audioDeviceAttributes:Landroid/media/AudioDeviceAttributes;

.field label:I

.field final synthetic this$0:Lcom/android/settingslib/media/data/repository/SpatializerRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/media/data/repository/SpatializerRepositoryImpl;Landroid/media/AudioDeviceAttributes;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settingslib/media/data/repository/SpatializerRepositoryImpl;",
            "Landroid/media/AudioDeviceAttributes;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/settingslib/media/data/repository/SpatializerRepositoryImpl$isHeadTrackingAvailableForDevice$2;->this$0:Lcom/android/settingslib/media/data/repository/SpatializerRepositoryImpl;

    iput-object p2, p0, Lcom/android/settingslib/media/data/repository/SpatializerRepositoryImpl$isHeadTrackingAvailableForDevice$2;->$audioDeviceAttributes:Landroid/media/AudioDeviceAttributes;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/android/settingslib/media/data/repository/SpatializerRepositoryImpl$isHeadTrackingAvailableForDevice$2;

    iget-object v0, p0, Lcom/android/settingslib/media/data/repository/SpatializerRepositoryImpl$isHeadTrackingAvailableForDevice$2;->this$0:Lcom/android/settingslib/media/data/repository/SpatializerRepositoryImpl;

    iget-object p0, p0, Lcom/android/settingslib/media/data/repository/SpatializerRepositoryImpl$isHeadTrackingAvailableForDevice$2;->$audioDeviceAttributes:Landroid/media/AudioDeviceAttributes;

    invoke-direct {p1, v0, p0, p2}, Lcom/android/settingslib/media/data/repository/SpatializerRepositoryImpl$isHeadTrackingAvailableForDevice$2;-><init>(Lcom/android/settingslib/media/data/repository/SpatializerRepositoryImpl;Landroid/media/AudioDeviceAttributes;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/media/data/repository/SpatializerRepositoryImpl$isHeadTrackingAvailableForDevice$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/media/data/repository/SpatializerRepositoryImpl$isHeadTrackingAvailableForDevice$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/media/data/repository/SpatializerRepositoryImpl$isHeadTrackingAvailableForDevice$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/settingslib/media/data/repository/SpatializerRepositoryImpl$isHeadTrackingAvailableForDevice$2;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/settingslib/media/data/repository/SpatializerRepositoryImpl$isHeadTrackingAvailableForDevice$2;->this$0:Lcom/android/settingslib/media/data/repository/SpatializerRepositoryImpl;

    iget-object p1, p1, Lcom/android/settingslib/media/data/repository/SpatializerRepositoryImpl;->spatializer:Landroid/media/Spatializer;

    iget-object p0, p0, Lcom/android/settingslib/media/data/repository/SpatializerRepositoryImpl$isHeadTrackingAvailableForDevice$2;->$audioDeviceAttributes:Landroid/media/AudioDeviceAttributes;

    invoke-virtual {p1, p0}, Landroid/media/Spatializer;->hasHeadTracker(Landroid/media/AudioDeviceAttributes;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
