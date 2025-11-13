.class final Lcom/android/systemui/statusbar/chips/screenrecord/domain/interactor/ScreenRecordChipInteractor$screenRecordState$1;
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


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/screenrecord/data/model/ScreenRecordModel;

    check-cast p2, Lcom/android/systemui/mediaprojection/data/model/MediaProjectionState;

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance p0, Lcom/android/systemui/statusbar/chips/screenrecord/domain/interactor/ScreenRecordChipInteractor$screenRecordState$1;

    invoke-direct {p0, p3}, Lcom/android/systemui/statusbar/chips/screenrecord/domain/interactor/ScreenRecordChipInteractor$screenRecordState$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/chips/screenrecord/domain/interactor/ScreenRecordChipInteractor$screenRecordState$1;->L$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/statusbar/chips/screenrecord/domain/interactor/ScreenRecordChipInteractor$screenRecordState$1;->L$1:Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/chips/screenrecord/domain/interactor/ScreenRecordChipInteractor$screenRecordState$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/statusbar/chips/screenrecord/domain/interactor/ScreenRecordChipInteractor$screenRecordState$1;->label:I

    if-nez v0, :cond_4

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/chips/screenrecord/domain/interactor/ScreenRecordChipInteractor$screenRecordState$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/screenrecord/data/model/ScreenRecordModel;

    iget-object p0, p0, Lcom/android/systemui/statusbar/chips/screenrecord/domain/interactor/ScreenRecordChipInteractor$screenRecordState$1;->L$1:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/mediaprojection/data/model/MediaProjectionState;

    instance-of v0, p1, Lcom/android/systemui/screenrecord/data/model/ScreenRecordModel$DoingNothing;

    if-eqz v0, :cond_0

    sget-object p0, Lcom/android/systemui/statusbar/chips/screenrecord/domain/model/ScreenRecordChipModel$DoingNothing;->INSTANCE:Lcom/android/systemui/statusbar/chips/screenrecord/domain/model/ScreenRecordChipModel$DoingNothing;

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lcom/android/systemui/screenrecord/data/model/ScreenRecordModel$Starting;

    if-eqz v0, :cond_1

    new-instance p0, Lcom/android/systemui/statusbar/chips/screenrecord/domain/model/ScreenRecordChipModel$Starting;

    check-cast p1, Lcom/android/systemui/screenrecord/data/model/ScreenRecordModel$Starting;

    iget-wide v0, p1, Lcom/android/systemui/screenrecord/data/model/ScreenRecordModel$Starting;->millisUntilStarted:J

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/chips/screenrecord/domain/model/ScreenRecordChipModel$Starting;-><init>(J)V

    goto :goto_1

    :cond_1
    instance-of p1, p1, Lcom/android/systemui/screenrecord/data/model/ScreenRecordModel$Recording;

    if-eqz p1, :cond_3

    instance-of p1, p0, Lcom/android/systemui/mediaprojection/data/model/MediaProjectionState$Projecting$SingleTask;

    if-eqz p1, :cond_2

    check-cast p0, Lcom/android/systemui/mediaprojection/data/model/MediaProjectionState$Projecting$SingleTask;

    iget-object p0, p0, Lcom/android/systemui/mediaprojection/data/model/MediaProjectionState$Projecting$SingleTask;->task:Landroid/app/ActivityManager$RunningTaskInfo;

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    new-instance p1, Lcom/android/systemui/statusbar/chips/screenrecord/domain/model/ScreenRecordChipModel$Recording;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/chips/screenrecord/domain/model/ScreenRecordChipModel$Recording;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;)V

    move-object p0, p1

    :goto_1
    return-object p0

    :cond_3
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
