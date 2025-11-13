.class final Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel$button$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function6;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function6;"
    }
.end annotation


# instance fields
.field final synthetic $position:Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;

.field final synthetic $previewMode:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel$PreviewMode;

.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field synthetic Z$0:Z

.field synthetic Z$1:Z

.field synthetic Z$2:Z

.field label:I

.field final synthetic this$0:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel$PreviewMode;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;",
            "Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;",
            "Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel$PreviewMode;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel$button$1$1;->$position:Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;

    iput-object p2, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel$button$1$1;->this$0:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;

    iput-object p3, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel$button$1$1;->$previewMode:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel$PreviewMode;

    const/4 p1, 0x6

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lcom/android/systemui/keyguard/domain/model/KeyguardQuickAffordanceModel;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    check-cast p4, Ljava/lang/String;

    check-cast p5, Ljava/lang/Boolean;

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p5

    check-cast p6, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel$button$1$1;

    iget-object v1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel$button$1$1;->$position:Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;

    iget-object v2, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel$button$1$1;->this$0:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel$button$1$1;->$previewMode:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel$PreviewMode;

    invoke-direct {v0, v1, v2, p0, p6}, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel$button$1$1;-><init>(Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel$PreviewMode;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel$button$1$1;->L$0:Ljava/lang/Object;

    iput-boolean p2, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel$button$1$1;->Z$0:Z

    iput-boolean p3, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel$button$1$1;->Z$1:Z

    iput-object p4, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel$button$1$1;->L$1:Ljava/lang/Object;

    iput-boolean p5, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel$button$1$1;->Z$2:Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel$button$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 29

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel$button$1$1;->label:I

    if-nez v1, :cond_7

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel$button$1$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/keyguard/domain/model/KeyguardQuickAffordanceModel;

    iget-boolean v2, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel$button$1$1;->Z$0:Z

    iget-boolean v3, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel$button$1$1;->Z$1:Z

    iget-object v4, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel$button$1$1;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-boolean v14, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel$button$1$1;->Z$2:Z

    iget-object v5, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel$button$1$1;->$position:Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;

    invoke-virtual {v5}, Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;->toSlotId()Ljava/lang/String;

    move-result-object v15

    invoke-static {v4, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    iget-object v5, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel$button$1$1;->this$0:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;

    iget-object v0, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel$button$1$1;->$previewMode:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel$PreviewMode;

    iget-boolean v6, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel$PreviewMode;->isInPreviewMode:Z

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v6, :cond_0

    if-eqz v2, :cond_0

    move v2, v8

    goto :goto_0

    :cond_0
    move v2, v7

    :goto_0
    if-eqz v3, :cond_1

    if-nez v6, :cond_1

    move v11, v8

    goto :goto_1

    :cond_1
    move v11, v7

    :goto_1
    if-eqz v6, :cond_2

    iget-boolean v3, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel$PreviewMode;->shouldHighlightSelectedAffordance:Z

    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    move v13, v8

    goto :goto_2

    :cond_2
    move v13, v7

    :goto_2
    if-eqz v6, :cond_3

    iget-boolean v0, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel$PreviewMode;->shouldHighlightSelectedAffordance:Z

    if-eqz v0, :cond_3

    if-nez v4, :cond_3

    move v0, v8

    goto :goto_3

    :cond_3
    move v0, v7

    :goto_3
    sget v3, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;->$r8$clinit:I

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v3, v1, Lcom/android/systemui/keyguard/domain/model/KeyguardQuickAffordanceModel$Visible;

    if-eqz v3, :cond_5

    new-instance v3, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardQuickAffordanceViewModel;

    check-cast v1, Lcom/android/systemui/keyguard/domain/model/KeyguardQuickAffordanceModel$Visible;

    iget-object v4, v1, Lcom/android/systemui/keyguard/domain/model/KeyguardQuickAffordanceModel$Visible;->configKey:Ljava/lang/String;

    new-instance v10, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel$toViewModel$1;

    invoke-direct {v10, v5}, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel$toViewModel$1;-><init>(Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;)V

    if-nez v6, :cond_4

    iget-object v5, v1, Lcom/android/systemui/keyguard/domain/model/KeyguardQuickAffordanceModel$Visible;->activationState:Lcom/android/systemui/keyguard/shared/quickaffordance/ActivationState;

    instance-of v5, v5, Lcom/android/systemui/keyguard/shared/quickaffordance/ActivationState$Active;

    if-eqz v5, :cond_4

    move v12, v8

    goto :goto_4

    :cond_4
    move v12, v7

    :goto_4
    const/4 v7, 0x1

    iget-object v9, v1, Lcom/android/systemui/keyguard/domain/model/KeyguardQuickAffordanceModel$Visible;->icon:Lcom/android/systemui/common/shared/model/Icon;

    move-object v5, v3

    move-object v6, v4

    move v8, v2

    move-object v2, v15

    move v15, v0

    move-object/from16 v16, v2

    invoke-direct/range {v5 .. v16}, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardQuickAffordanceViewModel;-><init>(Ljava/lang/String;ZZLcom/android/systemui/common/shared/model/Icon;Lkotlin/jvm/functions/Function1;ZZZZZLjava/lang/String;)V

    goto :goto_5

    :cond_5
    move-object v2, v15

    instance-of v0, v1, Lcom/android/systemui/keyguard/domain/model/KeyguardQuickAffordanceModel$Hidden;

    if-eqz v0, :cond_6

    new-instance v3, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardQuickAffordanceViewModel;

    const/16 v27, 0x3ff

    const/16 v28, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object v15, v3

    move-object/from16 v26, v2

    invoke-direct/range {v15 .. v28}, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardQuickAffordanceViewModel;-><init>(Ljava/lang/String;ZZLcom/android/systemui/common/shared/model/Icon;Lkotlin/jvm/functions/Function1;ZZZZZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_5
    return-object v3

    :cond_6
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
