.class public final Lcom/android/systemui/shade/transition/ScrimShadeTransitionController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public currentPanelState:Ljava/lang/Integer;

.field public final dumpManager:Lcom/android/systemui/dump/DumpManager;

.field public lastExpansionEvent:Lcom/android/systemui/shade/ShadeExpansionChangeEvent;

.field public lastExpansionFraction:Ljava/lang/Float;

.field public final scrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

.field public final shadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/ShadeExpansionStateManager;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/phone/ScrimController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shade/transition/ScrimShadeTransitionController;->shadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    iput-object p2, p0, Lcom/android/systemui/shade/transition/ScrimShadeTransitionController;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    iput-object p3, p0, Lcom/android/systemui/shade/transition/ScrimShadeTransitionController;->scrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    return-void
.end method


# virtual methods
.method public final onStateChanged()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/shade/transition/ScrimShadeTransitionController;->lastExpansionEvent:Lcom/android/systemui/shade/ShadeExpansionChangeEvent;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/shade/transition/ScrimShadeTransitionController;->scrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, v0, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;->fraction:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_1

    iput v0, v1, Lcom/android/systemui/statusbar/phone/ScrimController;->mRawPanelExpansionFraction:F

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->calculateAndUpdatePanelExpansion()V

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shade/transition/ScrimShadeTransitionController;->lastExpansionFraction:Ljava/lang/Float;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "rawPanelExpansionFraction should not be NaN"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
