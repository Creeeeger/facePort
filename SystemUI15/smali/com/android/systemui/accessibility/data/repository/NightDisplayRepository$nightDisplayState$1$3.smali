.class final Lcom/android/systemui/accessibility/data/repository/NightDisplayRepository$nightDisplayState$1$3;
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

    check-cast p1, Lcom/android/systemui/accessibility/data/model/NightDisplayState;

    check-cast p2, Lcom/android/systemui/accessibility/data/model/NightDisplayChangeEvent;

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance p0, Lcom/android/systemui/accessibility/data/repository/NightDisplayRepository$nightDisplayState$1$3;

    invoke-direct {p0, p3}, Lcom/android/systemui/accessibility/data/repository/NightDisplayRepository$nightDisplayState$1$3;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object p1, p0, Lcom/android/systemui/accessibility/data/repository/NightDisplayRepository$nightDisplayState$1$3;->L$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/accessibility/data/repository/NightDisplayRepository$nightDisplayState$1$3;->L$1:Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/accessibility/data/repository/NightDisplayRepository$nightDisplayState$1$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/accessibility/data/repository/NightDisplayRepository$nightDisplayState$1$3;->label:I

    if-nez v0, :cond_6

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/accessibility/data/repository/NightDisplayRepository$nightDisplayState$1$3;->L$0:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/accessibility/data/model/NightDisplayState;

    iget-object p0, p0, Lcom/android/systemui/accessibility/data/repository/NightDisplayRepository$nightDisplayState$1$3;->L$1:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/accessibility/data/model/NightDisplayChangeEvent;

    instance-of p1, p0, Lcom/android/systemui/accessibility/data/model/NightDisplayChangeEvent$OnActivatedChanged;

    if-eqz p1, :cond_0

    check-cast p0, Lcom/android/systemui/accessibility/data/model/NightDisplayChangeEvent$OnActivatedChanged;

    iget-boolean v2, p0, Lcom/android/systemui/accessibility/data/model/NightDisplayChangeEvent$OnActivatedChanged;->isActivated:Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v7, 0x3d

    invoke-static/range {v0 .. v7}, Lcom/android/systemui/accessibility/data/model/NightDisplayState;->copy$default(Lcom/android/systemui/accessibility/data/model/NightDisplayState;IZLjava/time/LocalTime;Ljava/time/LocalTime;ZZI)Lcom/android/systemui/accessibility/data/model/NightDisplayState;

    move-result-object p0

    goto :goto_0

    :cond_0
    instance-of p1, p0, Lcom/android/systemui/accessibility/data/model/NightDisplayChangeEvent$OnAutoModeChanged;

    if-eqz p1, :cond_1

    check-cast p0, Lcom/android/systemui/accessibility/data/model/NightDisplayChangeEvent$OnAutoModeChanged;

    iget v1, p0, Lcom/android/systemui/accessibility/data/model/NightDisplayChangeEvent$OnAutoModeChanged;->autoMode:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v7, 0x3e

    invoke-static/range {v0 .. v7}, Lcom/android/systemui/accessibility/data/model/NightDisplayState;->copy$default(Lcom/android/systemui/accessibility/data/model/NightDisplayState;IZLjava/time/LocalTime;Ljava/time/LocalTime;ZZI)Lcom/android/systemui/accessibility/data/model/NightDisplayState;

    move-result-object p0

    goto :goto_0

    :cond_1
    instance-of p1, p0, Lcom/android/systemui/accessibility/data/model/NightDisplayChangeEvent$OnCustomStartTimeChanged;

    if-eqz p1, :cond_2

    check-cast p0, Lcom/android/systemui/accessibility/data/model/NightDisplayChangeEvent$OnCustomStartTimeChanged;

    iget-object v3, p0, Lcom/android/systemui/accessibility/data/model/NightDisplayChangeEvent$OnCustomStartTimeChanged;->startTime:Ljava/time/LocalTime;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v7, 0x3b

    invoke-static/range {v0 .. v7}, Lcom/android/systemui/accessibility/data/model/NightDisplayState;->copy$default(Lcom/android/systemui/accessibility/data/model/NightDisplayState;IZLjava/time/LocalTime;Ljava/time/LocalTime;ZZI)Lcom/android/systemui/accessibility/data/model/NightDisplayState;

    move-result-object p0

    goto :goto_0

    :cond_2
    instance-of p1, p0, Lcom/android/systemui/accessibility/data/model/NightDisplayChangeEvent$OnCustomEndTimeChanged;

    if-eqz p1, :cond_3

    check-cast p0, Lcom/android/systemui/accessibility/data/model/NightDisplayChangeEvent$OnCustomEndTimeChanged;

    iget-object v4, p0, Lcom/android/systemui/accessibility/data/model/NightDisplayChangeEvent$OnCustomEndTimeChanged;->endTime:Ljava/time/LocalTime;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v7, 0x37

    invoke-static/range {v0 .. v7}, Lcom/android/systemui/accessibility/data/model/NightDisplayState;->copy$default(Lcom/android/systemui/accessibility/data/model/NightDisplayState;IZLjava/time/LocalTime;Ljava/time/LocalTime;ZZI)Lcom/android/systemui/accessibility/data/model/NightDisplayState;

    move-result-object p0

    goto :goto_0

    :cond_3
    instance-of p1, p0, Lcom/android/systemui/accessibility/data/model/NightDisplayChangeEvent$OnForceAutoModeChanged;

    if-eqz p1, :cond_4

    check-cast p0, Lcom/android/systemui/accessibility/data/model/NightDisplayChangeEvent$OnForceAutoModeChanged;

    iget-boolean v5, p0, Lcom/android/systemui/accessibility/data/model/NightDisplayChangeEvent$OnForceAutoModeChanged;->shouldForceAutoMode:Z

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v7, 0x2f

    invoke-static/range {v0 .. v7}, Lcom/android/systemui/accessibility/data/model/NightDisplayState;->copy$default(Lcom/android/systemui/accessibility/data/model/NightDisplayState;IZLjava/time/LocalTime;Ljava/time/LocalTime;ZZI)Lcom/android/systemui/accessibility/data/model/NightDisplayState;

    move-result-object p0

    goto :goto_0

    :cond_4
    instance-of p1, p0, Lcom/android/systemui/accessibility/data/model/NightDisplayChangeEvent$OnLocationEnabledChanged;

    if-eqz p1, :cond_5

    check-cast p0, Lcom/android/systemui/accessibility/data/model/NightDisplayChangeEvent$OnLocationEnabledChanged;

    iget-boolean v6, p0, Lcom/android/systemui/accessibility/data/model/NightDisplayChangeEvent$OnLocationEnabledChanged;->locationEnabled:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v7, 0x1f

    invoke-static/range {v0 .. v7}, Lcom/android/systemui/accessibility/data/model/NightDisplayState;->copy$default(Lcom/android/systemui/accessibility/data/model/NightDisplayState;IZLjava/time/LocalTime;Ljava/time/LocalTime;ZZI)Lcom/android/systemui/accessibility/data/model/NightDisplayState;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_5
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
