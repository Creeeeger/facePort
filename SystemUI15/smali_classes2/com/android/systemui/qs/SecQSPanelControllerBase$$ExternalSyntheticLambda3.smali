.class public final synthetic Lcom/android/systemui/qs/SecQSPanelControllerBase$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/qs/SecQSPanelControllerBase;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/SecQSPanelControllerBase;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/qs/SecQSPanelControllerBase;

    iput-object p2, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase$$ExternalSyntheticLambda3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/qs/SecQSPanelControllerBase;

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mQsPanelHost:Lcom/android/systemui/qs/QSPanelHost;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/QSPanelHost;->getTileView(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTileView;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setPressed(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setPressed(Z)V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/qs/SecQSPanelControllerBase;

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mQsPanelHost:Lcom/android/systemui/qs/QSPanelHost;

    iget-object v1, v0, Lcom/android/systemui/qs/QSPanelHost;->mTargetView:Lcom/android/systemui/qs/SecQSPanel;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/QSPanelHost;->getTileView(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTileView;

    move-result-object p0

    if-eqz v1, :cond_1

    instance-of v0, v1, Lcom/android/systemui/qs/NonInterceptingScrollView;

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast v1, Lcom/android/systemui/qs/NonInterceptingScrollView;

    invoke-virtual {v1, p0}, Lcom/android/systemui/qs/NonInterceptingScrollView;->smoothScrollToDescendant(Lcom/android/systemui/plugins/qs/QSTileView;)V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
