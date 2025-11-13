.class public final Lcom/android/systemui/statusbar/chips/sharetoapp/ui/viewmodel/ShareToAppChipViewModel$special$$inlined$map$1$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/chips/sharetoapp/ui/viewmodel/ShareToAppChipViewModel;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/android/systemui/statusbar/chips/sharetoapp/ui/viewmodel/ShareToAppChipViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/chips/sharetoapp/ui/viewmodel/ShareToAppChipViewModel$special$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p0, Lcom/android/systemui/statusbar/chips/sharetoapp/ui/viewmodel/ShareToAppChipViewModel$special$$inlined$map$1$2;->this$0:Lcom/android/systemui/statusbar/chips/sharetoapp/ui/viewmodel/ShareToAppChipViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p2, Lcom/android/systemui/statusbar/chips/sharetoapp/ui/viewmodel/ShareToAppChipViewModel$special$$inlined$map$1$2$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/statusbar/chips/sharetoapp/ui/viewmodel/ShareToAppChipViewModel$special$$inlined$map$1$2$1;

    iget v1, v0, Lcom/android/systemui/statusbar/chips/sharetoapp/ui/viewmodel/ShareToAppChipViewModel$special$$inlined$map$1$2$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/statusbar/chips/sharetoapp/ui/viewmodel/ShareToAppChipViewModel$special$$inlined$map$1$2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/chips/sharetoapp/ui/viewmodel/ShareToAppChipViewModel$special$$inlined$map$1$2$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/statusbar/chips/sharetoapp/ui/viewmodel/ShareToAppChipViewModel$special$$inlined$map$1$2$1;-><init>(Lcom/android/systemui/statusbar/chips/sharetoapp/ui/viewmodel/ShareToAppChipViewModel$special$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/systemui/statusbar/chips/sharetoapp/ui/viewmodel/ShareToAppChipViewModel$special$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/statusbar/chips/sharetoapp/ui/viewmodel/ShareToAppChipViewModel$special$$inlined$map$1$2$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lcom/android/systemui/statusbar/chips/mediaprojection/domain/model/ProjectionChipModel;

    instance-of p2, p1, Lcom/android/systemui/statusbar/chips/mediaprojection/domain/model/ProjectionChipModel$NotProjecting;

    if-eqz p2, :cond_3

    sget-object p1, Lcom/android/systemui/statusbar/chips/ui/model/OngoingActivityChipModel$Hidden;->INSTANCE:Lcom/android/systemui/statusbar/chips/ui/model/OngoingActivityChipModel$Hidden;

    goto :goto_1

    :cond_3
    instance-of p2, p1, Lcom/android/systemui/statusbar/chips/mediaprojection/domain/model/ProjectionChipModel$Projecting;

    if-eqz p2, :cond_6

    check-cast p1, Lcom/android/systemui/statusbar/chips/mediaprojection/domain/model/ProjectionChipModel$Projecting;

    iget-object p2, p1, Lcom/android/systemui/statusbar/chips/mediaprojection/domain/model/ProjectionChipModel$Projecting;->type:Lcom/android/systemui/statusbar/chips/mediaprojection/domain/model/ProjectionChipModel$Type;

    sget-object v2, Lcom/android/systemui/statusbar/chips/mediaprojection/domain/model/ProjectionChipModel$Type;->SHARE_TO_APP:Lcom/android/systemui/statusbar/chips/mediaprojection/domain/model/ProjectionChipModel$Type;

    if-eq p2, v2, :cond_4

    sget-object p1, Lcom/android/systemui/statusbar/chips/ui/model/OngoingActivityChipModel$Hidden;->INSTANCE:Lcom/android/systemui/statusbar/chips/ui/model/OngoingActivityChipModel$Hidden;

    goto :goto_1

    :cond_4
    sget-object p2, Lcom/android/systemui/statusbar/chips/sharetoapp/ui/viewmodel/ShareToAppChipViewModel;->Companion:Lcom/android/systemui/statusbar/chips/sharetoapp/ui/viewmodel/ShareToAppChipViewModel$Companion;

    iget-object p2, p0, Lcom/android/systemui/statusbar/chips/sharetoapp/ui/viewmodel/ShareToAppChipViewModel$special$$inlined$map$1$2;->this$0:Lcom/android/systemui/statusbar/chips/sharetoapp/ui/viewmodel/ShareToAppChipViewModel;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/systemui/statusbar/chips/ui/model/OngoingActivityChipModel$Shown;

    new-instance v4, Lcom/android/systemui/common/shared/model/Icon$Resource;

    sget v5, Lcom/android/systemui/statusbar/chips/sharetoapp/ui/viewmodel/ShareToAppChipViewModel;->SHARE_TO_APP_ICON:I

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/android/systemui/common/shared/model/Icon$Resource;-><init>(ILcom/android/systemui/common/shared/model/ContentDescription;)V

    iget-object v5, p2, Lcom/android/systemui/statusbar/chips/sharetoapp/ui/viewmodel/ShareToAppChipViewModel;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v5}, Lcom/android/systemui/util/time/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    new-instance v7, Lcom/android/systemui/statusbar/chips/sharetoapp/ui/view/EndShareToAppDialogDelegate;

    new-instance v8, Lcom/android/systemui/statusbar/chips/sharetoapp/ui/viewmodel/ShareToAppChipViewModel$createShareToAppDialogDelegate$1;

    invoke-direct {v8, p2}, Lcom/android/systemui/statusbar/chips/sharetoapp/ui/viewmodel/ShareToAppChipViewModel$createShareToAppDialogDelegate$1;-><init>(Ljava/lang/Object;)V

    iget-object v9, p2, Lcom/android/systemui/statusbar/chips/sharetoapp/ui/viewmodel/ShareToAppChipViewModel;->endMediaProjectionDialogHelper:Lcom/android/systemui/statusbar/chips/mediaprojection/ui/view/EndMediaProjectionDialogHelper;

    invoke-direct {v7, v9, v8, p1}, Lcom/android/systemui/statusbar/chips/sharetoapp/ui/view/EndShareToAppDialogDelegate;-><init>(Lcom/android/systemui/statusbar/chips/mediaprojection/ui/view/EndMediaProjectionDialogHelper;Lkotlin/jvm/functions/Function0;Lcom/android/systemui/statusbar/chips/mediaprojection/domain/model/ProjectionChipModel$Projecting;)V

    sget-object p1, Lcom/android/systemui/statusbar/chips/ui/viewmodel/OngoingActivityChipViewModel;->Companion:Lcom/android/systemui/statusbar/chips/ui/viewmodel/OngoingActivityChipViewModel$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/systemui/statusbar/chips/ui/viewmodel/OngoingActivityChipViewModel$Companion$createDialogLaunchOnClickListener$1;

    iget-object p2, p2, Lcom/android/systemui/statusbar/chips/sharetoapp/ui/viewmodel/ShareToAppChipViewModel;->dialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

    invoke-direct {p1, v7, p2}, Lcom/android/systemui/statusbar/chips/ui/viewmodel/OngoingActivityChipViewModel$Companion$createDialogLaunchOnClickListener$1;-><init>(Lcom/android/systemui/statusbar/phone/SystemUIDialog$Delegate;Lcom/android/systemui/animation/DialogTransitionAnimator;)V

    invoke-direct {v2, v4, v5, v6, p1}, Lcom/android/systemui/statusbar/chips/ui/model/OngoingActivityChipModel$Shown;-><init>(Lcom/android/systemui/common/shared/model/Icon;JLandroid/view/View$OnClickListener;)V

    move-object p1, v2

    :goto_1
    iput v3, v0, Lcom/android/systemui/statusbar/chips/sharetoapp/ui/viewmodel/ShareToAppChipViewModel$special$$inlined$map$1$2$1;->label:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/chips/sharetoapp/ui/viewmodel/ShareToAppChipViewModel$special$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-interface {p0, p1, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_6
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
