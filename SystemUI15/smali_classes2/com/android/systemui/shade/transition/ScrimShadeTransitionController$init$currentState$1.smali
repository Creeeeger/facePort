.class public final synthetic Lcom/android/systemui/shade/transition/ScrimShadeTransitionController$init$currentState$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/shade/ShadeExpansionListener;
.implements Lkotlin/jvm/internal/FunctionAdapter;


# instance fields
.field public final synthetic $tmp0:Lcom/android/systemui/shade/transition/ScrimShadeTransitionController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/transition/ScrimShadeTransitionController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shade/transition/ScrimShadeTransitionController$init$currentState$1;->$tmp0:Lcom/android/systemui/shade/transition/ScrimShadeTransitionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/android/systemui/shade/ShadeExpansionListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lkotlin/jvm/internal/FunctionAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/shade/transition/ScrimShadeTransitionController$init$currentState$1;->getFunctionDelegate()Lkotlin/Function;

    move-result-object p0

    check-cast p1, Lkotlin/jvm/internal/FunctionAdapter;

    invoke-interface {p1}, Lkotlin/jvm/internal/FunctionAdapter;->getFunctionDelegate()Lkotlin/Function;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_0
    return v1
.end method

.method public final getFunctionDelegate()Lkotlin/Function;
    .locals 8

    new-instance v7, Lkotlin/jvm/internal/FunctionReferenceImpl;

    const-string v5, "onPanelExpansionChanged(Lcom/android/systemui/shade/ShadeExpansionChangeEvent;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/systemui/shade/transition/ScrimShadeTransitionController$init$currentState$1;->$tmp0:Lcom/android/systemui/shade/transition/ScrimShadeTransitionController;

    const-class v3, Lcom/android/systemui/shade/transition/ScrimShadeTransitionController;

    const-string v4, "onPanelExpansionChanged"

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v7
.end method

.method public final hashCode()I
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/shade/transition/ScrimShadeTransitionController$init$currentState$1;->getFunctionDelegate()Lkotlin/Function;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final onPanelExpansionChanged(Lcom/android/systemui/shade/ShadeExpansionChangeEvent;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/transition/ScrimShadeTransitionController$init$currentState$1;->$tmp0:Lcom/android/systemui/shade/transition/ScrimShadeTransitionController;

    iput-object p1, p0, Lcom/android/systemui/shade/transition/ScrimShadeTransitionController;->lastExpansionEvent:Lcom/android/systemui/shade/ShadeExpansionChangeEvent;

    invoke-virtual {p0}, Lcom/android/systemui/shade/transition/ScrimShadeTransitionController;->onStateChanged()V

    return-void
.end method
