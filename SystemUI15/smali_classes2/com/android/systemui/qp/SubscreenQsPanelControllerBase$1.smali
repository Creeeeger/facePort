.class public final Lcom/android/systemui/qp/SubscreenQsPanelControllerBase$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase$1;->this$0:Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFolderStateChanged(Z)V
    .locals 2

    const-string v0, "onFolderStateChanged"

    const-string v1, "SubscreenQsPanelControllerBase"

    invoke-static {v0, v1, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase$1;->this$0:Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;->setListening$1(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;->removeAllTileViews()V

    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;->mSubScreenTileHost:Lcom/android/systemui/qs/SecSubScreenQSTileHost;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/android/systemui/qs/SecSubScreenQSTileHost;->mCallbacks:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;->mQSHostCallback:Lcom/android/systemui/qp/SubscreenQsPanelControllerBase$$ExternalSyntheticLambda0;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;->mSubScreenTileHost:Lcom/android/systemui/qs/SecSubScreenQSTileHost;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/android/systemui/qs/SecSubScreenQSTileHost;->mCallbacks:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;->mQSHostCallback:Lcom/android/systemui/qp/SubscreenQsPanelControllerBase$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;->setTiles()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;->setListening$1(Z)V

    invoke-static {p0}, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;->access$000(Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {p0}, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;->access$100(Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView;

    invoke-virtual {p1}, Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView;->addPagedTileLayout()V

    invoke-static {p0}, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;->access$200(Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView;

    invoke-virtual {p0}, Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView;->updateResources$1()V

    :cond_2
    :goto_0
    return-void
.end method
