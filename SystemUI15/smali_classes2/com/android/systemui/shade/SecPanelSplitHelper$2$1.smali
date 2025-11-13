.class final Lcom/android/systemui/shade/SecPanelSplitHelper$2$1;
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
.field synthetic F$0:F

.field synthetic F$1:F

.field label:I

.field final synthetic this$0:Lcom/android/systemui/shade/SecPanelSplitHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/SecPanelSplitHelper;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shade/SecPanelSplitHelper;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/shade/SecPanelSplitHelper$2$1;->this$0:Lcom/android/systemui/shade/SecPanelSplitHelper;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/android/systemui/shade/SecPanelSplitHelper$2$1;

    iget-object p0, p0, Lcom/android/systemui/shade/SecPanelSplitHelper$2$1;->this$0:Lcom/android/systemui/shade/SecPanelSplitHelper;

    invoke-direct {v0, p0, p3}, Lcom/android/systemui/shade/SecPanelSplitHelper$2$1;-><init>(Lcom/android/systemui/shade/SecPanelSplitHelper;Lkotlin/coroutines/Continuation;)V

    iput p1, v0, Lcom/android/systemui/shade/SecPanelSplitHelper$2$1;->F$0:F

    iput p2, v0, Lcom/android/systemui/shade/SecPanelSplitHelper$2$1;->F$1:F

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/systemui/shade/SecPanelSplitHelper$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/shade/SecPanelSplitHelper$2$1;->label:I

    if-nez v0, :cond_3

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget p1, p0, Lcom/android/systemui/shade/SecPanelSplitHelper$2$1;->F$0:F

    iget v0, p0, Lcom/android/systemui/shade/SecPanelSplitHelper$2$1;->F$1:F

    iget-object v1, p0, Lcom/android/systemui/shade/SecPanelSplitHelper$2$1;->this$0:Lcom/android/systemui/shade/SecPanelSplitHelper;

    iget-boolean v2, v1, Lcom/android/systemui/shade/SecPanelSplitHelper;->enabled:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    iget v2, v1, Lcom/android/systemui/shade/SecPanelSplitHelper;->currentState:I

    sget v5, Lcom/android/systemui/shade/PanelTransitionState;->$r8$clinit:I

    const/4 v5, 0x3

    if-ne v2, v5, :cond_1

    cmpl-float v2, p1, v4

    if-gtz v2, :cond_0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_1

    :cond_0
    invoke-virtual {v1, v3}, Lcom/android/systemui/shade/SecPanelSplitHelper;->slide$1(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/shade/SecPanelSplitHelper$2$1;->this$0:Lcom/android/systemui/shade/SecPanelSplitHelper;

    iget-boolean v1, v0, Lcom/android/systemui/shade/SecPanelSplitHelper;->enabled:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/shade/SecPanelSplitHelper;->getStatusBarStateController$2()Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    if-ne v0, v3, :cond_2

    cmpg-float p1, p1, v4

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/shade/SecPanelSplitHelper$2$1;->this$0:Lcom/android/systemui/shade/SecPanelSplitHelper;

    iget-object p1, p1, Lcom/android/systemui/shade/SecPanelSplitHelper;->quickSettingsControllerImpl:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->getExpanded$1()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/shade/SecPanelSplitHelper$2$1;->this$0:Lcom/android/systemui/shade/SecPanelSplitHelper;

    iget-object p0, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->quickSettingsControllerImpl:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->setExpanded(Z)V

    :cond_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
