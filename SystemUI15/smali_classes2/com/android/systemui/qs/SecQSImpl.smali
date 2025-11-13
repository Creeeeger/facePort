.class public final Lcom/android/systemui/qs/SecQSImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/shade/PanelTransitionStateListener;
.implements Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$Callback;


# instance fields
.field public barController:Lcom/android/systemui/qs/bar/BarController;

.field public barState:I

.field public final coloredBGHelper$delegate:Lkotlin/Lazy;

.field public final detailController$delegate:Lkotlin/Lazy;

.field public final lockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

.field public panelListening:Z

.field public final panelSplitHelper:Lcom/android/systemui/shade/SecPanelSplitHelper;

.field public panelTransitionState:I

.field public qsButtonsContainerController:Lcom/android/systemui/qs/buttons/QSButtonsContainerController;

.field public final qsExpanded:Lkotlin/jvm/functions/Function0;

.field public qsPanelController:Lcom/android/systemui/qs/SecQSPanelController;

.field public qscMainViewController:Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;

.field public secQSImplAnimatorManager:Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;

.field public final shadeHeaderController$delegate:Lkotlin/Lazy;

.field public final shadeRepository$delegate:Lkotlin/Lazy;

.field public stackScrollerOverscrolling:Z

.field public final updateQsState:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/SecQSImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/SecQSImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function0;Lcom/android/systemui/shade/SecPanelSplitHelper;Ljava/lang/Runnable;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0;",
            "Lcom/android/systemui/shade/SecPanelSplitHelper;",
            "Ljava/lang/Runnable;",
            "Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/SecQSImpl;->qsExpanded:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lcom/android/systemui/qs/SecQSImpl;->panelSplitHelper:Lcom/android/systemui/shade/SecPanelSplitHelper;

    iput-object p3, p0, Lcom/android/systemui/qs/SecQSImpl;->updateQsState:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/android/systemui/qs/SecQSImpl;->lockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    sget-object p2, Lcom/android/systemui/qs/SecQSImpl$coloredBGHelper$2;->INSTANCE:Lcom/android/systemui/qs/SecQSImpl$coloredBGHelper$2;

    invoke-static {p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/qs/SecQSImpl;->coloredBGHelper$delegate:Lkotlin/Lazy;

    sget-object p2, Lcom/android/systemui/qs/SecQSImpl$detailController$2;->INSTANCE:Lcom/android/systemui/qs/SecQSImpl$detailController$2;

    invoke-static {p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/qs/SecQSImpl;->detailController$delegate:Lkotlin/Lazy;

    sget-object p2, Lcom/android/systemui/qs/SecQSImpl$headsUpManager$2;->INSTANCE:Lcom/android/systemui/qs/SecQSImpl$headsUpManager$2;

    invoke-static {p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    sget-object p2, Lcom/android/systemui/qs/SecQSImpl$shadeHeaderController$2;->INSTANCE:Lcom/android/systemui/qs/SecQSImpl$shadeHeaderController$2;

    invoke-static {p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/qs/SecQSImpl;->shadeHeaderController$delegate:Lkotlin/Lazy;

    sget-object p2, Lcom/android/systemui/qs/SecQSImpl$shadeRepository$2;->INSTANCE:Lcom/android/systemui/qs/SecQSImpl$shadeRepository$2;

    invoke-static {p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/qs/SecQSImpl;->shadeRepository$delegate:Lkotlin/Lazy;

    const/4 p2, 0x1

    iput p2, p0, Lcom/android/systemui/qs/SecQSImpl;->barState:I

    new-instance p0, Lcom/android/systemui/shade/SecPanelFoldHelper;

    new-instance p2, Lcom/android/systemui/qs/SecQSImpl$sam$java_util_function_BooleanSupplier$0;

    invoke-direct {p2, p1}, Lcom/android/systemui/qs/SecQSImpl$sam$java_util_function_BooleanSupplier$0;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-direct {p0, p2}, Lcom/android/systemui/shade/SecPanelFoldHelper;-><init>(Ljava/util/function/BooleanSupplier;)V

    return-void
.end method


# virtual methods
.method public final onPanelTransitionStateChanged(Lcom/android/systemui/shade/PanelTransitionStateChangeEvent;)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/SecQSImpl;->panelTransitionState:I

    iget p1, p1, Lcom/android/systemui/shade/PanelTransitionStateChangeEvent;->state:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/systemui/qs/SecQSImpl;->panelTransitionState:I

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSImpl;->updateQsState:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final setListening(ZZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSImpl;->barController:Lcom/android/systemui/qs/bar/BarController;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/systemui/qs/bar/BarController;->mAllBarItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda1;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v2}, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda1;-><init>(ZI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/SecQSImpl;->panelListening:Z

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/qs/SecQSImpl;->panelListening:Z

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSImpl;->qsButtonsContainerController:Lcom/android/systemui/qs/buttons/QSButtonsContainerController;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/qs/buttons/QSButtonsContainerController;->setListening(ZZ)V

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSImpl;->qsPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    if-eqz p0, :cond_4

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/SecQSPanelControllerBase;->setListening(Z)V

    :cond_4
    return-void
.end method

.method public final setTransitionToFullShadeAmount(F)V
    .locals 3

    iget v0, p0, Lcom/android/systemui/qs/SecQSImpl;->barState:I

    iget-object v1, p0, Lcom/android/systemui/qs/SecQSImpl;->qsExpanded:Lkotlin/jvm/functions/Function0;

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, v2, p1}, Lcom/android/systemui/qs/SecQSImpl;->setListening(ZZ)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/android/systemui/qs/SecQSImpl;->panelListening:Z

    if-eqz p1, :cond_2

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/qs/SecQSImpl;->setListening(ZZ)V

    goto :goto_0

    :cond_2
    iget-boolean p1, p0, Lcom/android/systemui/qs/SecQSImpl;->panelListening:Z

    if-nez p1, :cond_3

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, v2, p1}, Lcom/android/systemui/qs/SecQSImpl;->setListening(ZZ)V

    :cond_3
    :goto_0
    return-void
.end method
