.class public final Lcom/android/systemui/qs/SecQSDetailController$detailCallback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/animator/QsTransitionAnimator$DetailCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/SecQSDetailController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/SecQSDetailController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/SecQSDetailController$detailCallback$1;->this$0:Lcom/android/systemui/qs/SecQSDetailController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final hideDetailAnimEnd()V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSDetailController$detailCallback$1;->this$0:Lcom/android/systemui/qs/SecQSDetailController;

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetailController;->detailAdapterDismissRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iput-object v1, p0, Lcom/android/systemui/qs/SecQSDetailController;->detailAdapterDismissRunnable:Ljava/lang/Runnable;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetailController;->detailContent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetailController;->view:Lcom/android/systemui/qs/SecQSDetail;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/SecQSDetailController;->handleShowingDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;)V

    return-void
.end method

.method public final showDetailAnimEnd()V
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSDetailController$detailCallback$1;->this$0:Lcom/android/systemui/qs/SecQSDetailController;

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetailController;->panelController:Lcom/android/systemui/qs/SecQSPanelController;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/SecQSDetailController;->detailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    if-eqz v0, :cond_1

    sget-boolean v1, Lcom/android/systemui/qs/animator/QsAnimatorState;->isDetailClosing:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SecQSPanelController;->setGridContentVisibility(Z)V

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/qs/SecQSDetailController;->switchState:Z

    iget-object v1, p0, Lcom/android/systemui/qs/SecQSDetailController;->detailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getToggleEnabled()Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    move v2, v3

    :cond_2
    invoke-static {p0, v0, v2}, Lcom/android/systemui/qs/SecQSDetailController;->access$handleToggleStateChanged(Lcom/android/systemui/qs/SecQSDetailController;ZZ)V

    return-void
.end method
