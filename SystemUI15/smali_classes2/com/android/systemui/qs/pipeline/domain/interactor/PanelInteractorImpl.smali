.class public final Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractorImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;


# instance fields
.field public final shadeController:Lcom/android/systemui/shade/ShadeController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/ShadeController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractorImpl;->shadeController:Lcom/android/systemui/shade/ShadeController;

    return-void
.end method


# virtual methods
.method public final collapsePanels()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractorImpl;->shadeController:Lcom/android/systemui/shade/ShadeController;

    invoke-interface {p0}, Lcom/android/systemui/shade/ShadeController;->postAnimateCollapseShade()V

    return-void
.end method

.method public final forceCollapsePanels()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractorImpl;->shadeController:Lcom/android/systemui/shade/ShadeController;

    invoke-interface {p0}, Lcom/android/systemui/shade/ShadeController;->postAnimateForceCollapseShade()V

    return-void
.end method
