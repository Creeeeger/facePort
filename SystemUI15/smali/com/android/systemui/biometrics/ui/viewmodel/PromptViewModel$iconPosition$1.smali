.class final Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$iconPosition$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function5;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function5;"
    }
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field synthetic L$2:Ljava/lang/Object;

.field synthetic L$3:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$iconPosition$1;->this$0:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    const/4 p1, 0x5

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroid/graphics/Rect;

    check-cast p2, Lcom/android/systemui/biometrics/ui/viewmodel/PromptSize;

    check-cast p3, Lcom/android/systemui/biometrics/ui/viewmodel/PromptPosition;

    check-cast p4, Lcom/android/systemui/biometrics/shared/model/BiometricModalities;

    check-cast p5, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$iconPosition$1;

    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$iconPosition$1;->this$0:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    invoke-direct {v0, p0, p5}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$iconPosition$1;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$iconPosition$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$iconPosition$1;->L$1:Ljava/lang/Object;

    iput-object p3, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$iconPosition$1;->L$2:Ljava/lang/Object;

    iput-object p4, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$iconPosition$1;->L$3:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$iconPosition$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$iconPosition$1;->label:I

    if-nez v0, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$iconPosition$1;->L$0:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$iconPosition$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptSize;

    iget-object v1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$iconPosition$1;->L$2:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/biometrics/ui/viewmodel/PromptPosition;

    iget-object v2, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$iconPosition$1;->L$3:Ljava/lang/Object;

    check-cast v2, Lcom/android/systemui/biometrics/shared/model/BiometricModalities;

    sget-object v3, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$iconPosition$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v3, v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v3, :cond_b

    const/4 v3, 0x2

    if-eq v1, v3, :cond_7

    const/4 v3, 0x3

    if-eq v1, v3, :cond_3

    const/4 v3, 0x4

    if-ne v1, v3, :cond_2

    invoke-static {v0}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptSizeKt;->isSmall(Lcom/android/systemui/biometrics/ui/viewmodel/PromptSize;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p1, Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$iconPosition$1;->this$0:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    iget p0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->portraitSmallBottomPadding:I

    invoke-direct {p1, v4, v4, v4, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/16 :goto_3

    :cond_0
    invoke-static {v0}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptSizeKt;->isMedium(Lcom/android/systemui/biometrics/ui/viewmodel/PromptSize;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lcom/android/systemui/biometrics/shared/model/BiometricModalities;->getHasUdfps()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v4, v4, v4, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_0
    move-object p1, p0

    goto/16 :goto_3

    :cond_1
    new-instance p1, Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$iconPosition$1;->this$0:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    iget p0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->portraitMediumBottomPadding:I

    invoke-direct {p1, v4, v4, v4, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/16 :goto_3

    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_3
    invoke-static {v0}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptSizeKt;->isSmall(Lcom/android/systemui/biometrics/ui/viewmodel/PromptSize;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v2}, Lcom/android/systemui/biometrics/shared/model/BiometricModalities;->getHasFaceOnly()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {v0}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptSizeKt;->isMedium(Lcom/android/systemui/biometrics/ui/viewmodel/PromptSize;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v2}, Lcom/android/systemui/biometrics/shared/model/BiometricModalities;->getHasUdfps()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance p0, Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v0, v4, v4, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :cond_5
    new-instance p1, Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$iconPosition$1;->this$0:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    iget v0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->landscapeMediumHorizontalPadding:I

    iget p0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->landscapeMediumBottomPadding:I

    invoke-direct {p1, v0, v4, v4, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/16 :goto_3

    :cond_6
    :goto_1
    new-instance p1, Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$iconPosition$1;->this$0:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    iget v0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->landscapeSmallHorizontalPadding:I

    iget p0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->landscapeSmallBottomPadding:I

    invoke-direct {p1, v0, v4, v4, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/16 :goto_3

    :cond_7
    invoke-static {v0}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptSizeKt;->isSmall(Lcom/android/systemui/biometrics/ui/viewmodel/PromptSize;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {v2}, Lcom/android/systemui/biometrics/shared/model/BiometricModalities;->getHasFaceOnly()Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_2

    :cond_8
    invoke-static {v0}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptSizeKt;->isMedium(Lcom/android/systemui/biometrics/ui/viewmodel/PromptSize;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v2}, Lcom/android/systemui/biometrics/shared/model/BiometricModalities;->getHasUdfps()Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance p0, Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v4, v4, v0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :cond_9
    new-instance p1, Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$iconPosition$1;->this$0:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    iget v0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->landscapeMediumHorizontalPadding:I

    iget p0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->landscapeMediumBottomPadding:I

    invoke-direct {p1, v4, v4, v0, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_3

    :cond_a
    :goto_2
    new-instance p1, Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$iconPosition$1;->this$0:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    iget v0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->landscapeSmallHorizontalPadding:I

    iget p0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->landscapeSmallBottomPadding:I

    invoke-direct {p1, v4, v4, v0, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_3

    :cond_b
    invoke-static {v0}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptSizeKt;->isSmall(Lcom/android/systemui/biometrics/ui/viewmodel/PromptSize;)Z

    move-result v1

    if-eqz v1, :cond_c

    new-instance p1, Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$iconPosition$1;->this$0:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    iget p0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->portraitSmallBottomPadding:I

    invoke-direct {p1, v4, v4, v4, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_3

    :cond_c
    invoke-static {v0}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptSizeKt;->isMedium(Lcom/android/systemui/biometrics/ui/viewmodel/PromptSize;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {v2}, Lcom/android/systemui/biometrics/shared/model/BiometricModalities;->getHasUdfps()Z

    move-result v1

    if-eqz v1, :cond_d

    new-instance p0, Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v4, v4, v4, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/16 :goto_0

    :cond_d
    invoke-static {v0}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptSizeKt;->isMedium(Lcom/android/systemui/biometrics/ui/viewmodel/PromptSize;)Z

    move-result p1

    if-eqz p1, :cond_e

    new-instance p1, Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$iconPosition$1;->this$0:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    iget p0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->portraitMediumBottomPadding:I

    invoke-direct {p1, v4, v4, v4, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_3

    :cond_e
    new-instance p1, Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$iconPosition$1;->this$0:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    iget p0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->portraitLargeScreenBottomPadding:I

    invoke-direct {p1, v4, v4, v4, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_3
    return-object p1

    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
