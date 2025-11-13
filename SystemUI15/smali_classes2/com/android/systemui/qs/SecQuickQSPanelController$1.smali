.class public final Lcom/android/systemui/qs/SecQuickQSPanelController$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/shade/PanelTransitionStateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/SecQuickQSPanelController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/SecQuickQSPanelController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/SecQuickQSPanelController$1;->this$0:Lcom/android/systemui/qs/SecQuickQSPanelController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPanelTransitionStateChanged(Lcom/android/systemui/shade/PanelTransitionStateChangeEvent;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/SecQuickQSPanelController$1;->this$0:Lcom/android/systemui/qs/SecQuickQSPanelController;

    iget-boolean v0, p0, Lcom/android/systemui/qs/SecQuickQSPanelController;->mPanelSplitEnabled:Z

    iget-boolean p1, p1, Lcom/android/systemui/shade/PanelTransitionStateChangeEvent;->enabled:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/SecQuickQSPanelController;->mPanelSplitEnabled:Z

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQuickQSPanelController;->updateVisibility$4()V

    return-void
.end method
