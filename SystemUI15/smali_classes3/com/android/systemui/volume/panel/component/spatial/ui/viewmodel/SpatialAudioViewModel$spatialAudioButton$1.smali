.class final Lcom/android/systemui/volume/panel/component/spatial/ui/viewmodel/SpatialAudioViewModel$spatialAudioButton$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/volume/panel/component/spatial/ui/viewmodel/SpatialAudioViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/panel/component/spatial/ui/viewmodel/SpatialAudioViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/volume/panel/component/spatial/ui/viewmodel/SpatialAudioViewModel;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/volume/panel/component/spatial/ui/viewmodel/SpatialAudioViewModel$spatialAudioButton$1;->this$0:Lcom/android/systemui/volume/panel/component/spatial/ui/viewmodel/SpatialAudioViewModel;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/android/systemui/volume/panel/component/spatial/domain/model/SpatialAudioEnabledModel;

    check-cast p2, Lcom/android/systemui/volume/panel/component/spatial/domain/model/SpatialAudioAvailabilityModel;

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/android/systemui/volume/panel/component/spatial/ui/viewmodel/SpatialAudioViewModel$spatialAudioButton$1;

    iget-object p0, p0, Lcom/android/systemui/volume/panel/component/spatial/ui/viewmodel/SpatialAudioViewModel$spatialAudioButton$1;->this$0:Lcom/android/systemui/volume/panel/component/spatial/ui/viewmodel/SpatialAudioViewModel;

    invoke-direct {v0, p0, p3}, Lcom/android/systemui/volume/panel/component/spatial/ui/viewmodel/SpatialAudioViewModel$spatialAudioButton$1;-><init>(Lcom/android/systemui/volume/panel/component/spatial/ui/viewmodel/SpatialAudioViewModel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/systemui/volume/panel/component/spatial/ui/viewmodel/SpatialAudioViewModel$spatialAudioButton$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/systemui/volume/panel/component/spatial/ui/viewmodel/SpatialAudioViewModel$spatialAudioButton$1;->L$1:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/systemui/volume/panel/component/spatial/ui/viewmodel/SpatialAudioViewModel$spatialAudioButton$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/volume/panel/component/spatial/ui/viewmodel/SpatialAudioViewModel$spatialAudioButton$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/volume/panel/component/spatial/ui/viewmodel/SpatialAudioViewModel$spatialAudioButton$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/volume/panel/component/spatial/domain/model/SpatialAudioEnabledModel;

    iget-object v0, p0, Lcom/android/systemui/volume/panel/component/spatial/ui/viewmodel/SpatialAudioViewModel$spatialAudioButton$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/volume/panel/component/spatial/domain/model/SpatialAudioAvailabilityModel;

    iget-object v1, p0, Lcom/android/systemui/volume/panel/component/spatial/ui/viewmodel/SpatialAudioViewModel$spatialAudioButton$1;->this$0:Lcom/android/systemui/volume/panel/component/spatial/ui/viewmodel/SpatialAudioViewModel;

    instance-of v2, p1, Lcom/android/systemui/volume/panel/component/spatial/domain/model/SpatialAudioEnabledModel$SpatialAudioEnabled;

    instance-of v0, v0, Lcom/android/systemui/volume/panel/component/spatial/domain/model/SpatialAudioAvailabilityModel$HeadTracking;

    invoke-static {v1, p1, v2, v0}, Lcom/android/systemui/volume/panel/component/spatial/ui/viewmodel/SpatialAudioViewModel;->access$toViewModel(Lcom/android/systemui/volume/panel/component/spatial/ui/viewmodel/SpatialAudioViewModel;Lcom/android/systemui/volume/panel/component/spatial/domain/model/SpatialAudioEnabledModel;ZZ)Lcom/android/systemui/volume/panel/component/button/ui/viewmodel/ButtonViewModel;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/volume/panel/component/spatial/ui/viewmodel/SpatialAudioViewModel$spatialAudioButton$1;->this$0:Lcom/android/systemui/volume/panel/component/spatial/ui/viewmodel/SpatialAudioViewModel;

    iget-object p0, p0, Lcom/android/systemui/volume/panel/component/spatial/ui/viewmodel/SpatialAudioViewModel;->context:Landroid/content/Context;

    const v0, 0x7f13146d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/volume/panel/component/button/ui/viewmodel/ButtonViewModel;

    iget-object v1, p1, Lcom/android/systemui/volume/panel/component/button/ui/viewmodel/ButtonViewModel;->icon:Lcom/android/systemui/common/shared/model/Icon;

    iget-boolean p1, p1, Lcom/android/systemui/volume/panel/component/button/ui/viewmodel/ButtonViewModel;->isActive:Z

    invoke-direct {v0, v1, p0, p1}, Lcom/android/systemui/volume/panel/component/button/ui/viewmodel/ButtonViewModel;-><init>(Lcom/android/systemui/common/shared/model/Icon;Ljava/lang/CharSequence;Z)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
