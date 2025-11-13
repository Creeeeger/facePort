.class public final Lcom/android/systemui/qp/customize/SubscreenCustomizer$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnDragListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qp/customize/SubscreenCustomizer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qp/customize/SubscreenCustomizer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizer$2;->this$0:Lcom/android/systemui/qp/customize/SubscreenCustomizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizer$2;->this$0:Lcom/android/systemui/qp/customize/SubscreenCustomizer;

    iget-object v0, v0, Lcom/android/systemui/qp/customize/SubscreenCustomizer;->mLongClickedViewInfo:Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView$SubscreenTileRecord;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizer$2;->this$0:Lcom/android/systemui/qp/customize/SubscreenCustomizer;

    iget-object v0, v0, Lcom/android/systemui/qp/customize/SubscreenCustomizer;->mLongClickedViewInfo:Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView$SubscreenTileRecord;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    const-string v1, "onDrag,event-"

    const-string v2, ",pos-"

    const-string v3, ",x-0.0,y=0.0"

    invoke-static {p2, v0, v1, v2, v3}, Landroidx/compose/foundation/text/HeightInLinesModifierKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SubscreenCustomizer"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-eq p2, v3, :cond_7

    const/4 v4, 0x3

    if-eq p2, v4, :cond_6

    const/4 v4, 0x4

    if-eq p2, v4, :cond_2

    const/4 v1, 0x5

    if-eq p2, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const p2, 0x7f0a0c64

    if-ne p1, p2, :cond_8

    const-string p1, "ACTION_DRAG_ENTERED: pos: "

    const-string p2, ",animateCurrentPage"

    invoke-static {v0, p1, p2, v2}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizer$2;->this$0:Lcom/android/systemui/qp/customize/SubscreenCustomizer;

    iget-object p1, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizer;->mLongClickedViewInfo:Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView$SubscreenTileRecord;

    new-instance p2, Lcom/android/systemui/qp/customize/SubscreenCustomizer$MessageObjectAnim;

    invoke-direct {p2}, Lcom/android/systemui/qp/customize/SubscreenCustomizer$MessageObjectAnim;-><init>()V

    iput v0, p2, Lcom/android/systemui/qp/customize/SubscreenCustomizer$MessageObjectAnim;->touchedPos:I

    iput-object p1, p2, Lcom/android/systemui/qp/customize/SubscreenCustomizer$MessageObjectAnim;->longClickedTileInfo:Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView$SubscreenTileRecord;

    const/16 p1, 0xca

    iput p1, p2, Lcom/android/systemui/qp/customize/SubscreenCustomizer$MessageObjectAnim;->animationType:I

    iget-object p1, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizer;->mHandler:Lcom/android/systemui/qp/customize/SubscreenCustomizer$1;

    const/16 v0, 0x66

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizer;->mHandler:Lcom/android/systemui/qp/customize/SubscreenCustomizer$1;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizer;->mHandler:Lcom/android/systemui/qp/customize/SubscreenCustomizer$1;

    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizer;->mHandler:Lcom/android/systemui/qp/customize/SubscreenCustomizer$1;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizer$2;->this$0:Lcom/android/systemui/qp/customize/SubscreenCustomizer;

    iget-boolean p1, p1, Lcom/android/systemui/qp/customize/SubscreenCustomizer;->mIsDroppedOnView:Z

    if-nez p1, :cond_3

    const-string p1, "ACTION_DRAG_ENDED"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizer$2;->this$0:Lcom/android/systemui/qp/customize/SubscreenCustomizer;

    iget-object p2, p1, Lcom/android/systemui/qp/customize/SubscreenCustomizer;->mLongClickedViewInfo:Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView$SubscreenTileRecord;

    invoke-virtual {p1, p2}, Lcom/android/systemui/qp/customize/SubscreenCustomizer;->animationDrop(Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView$SubscreenTileRecord;)V

    iget-object p1, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizer$2;->this$0:Lcom/android/systemui/qp/customize/SubscreenCustomizer;

    iput-boolean v3, p1, Lcom/android/systemui/qp/customize/SubscreenCustomizer;->mIsDroppedOnView:Z

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizer$2;->this$0:Lcom/android/systemui/qp/customize/SubscreenCustomizer;

    iput-boolean v1, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizer;->mIsDragging:Z

    iget-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    instance-of p2, p1, Lcom/android/systemui/qp/SubscreenPagedTileLayout;

    if-eqz p2, :cond_8

    iget-object p0, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizer;->mSubscreenQsPanelController:Lcom/android/systemui/qp/SubscreenQsPanelController;

    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenQsPanelController;->mHost:Lcom/android/systemui/qs/QSTileHost;

    const/4 p2, 0x0

    if-eqz p0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mSubScreenTileHost:Lcom/android/systemui/qs/SecSubScreenQSTileHost;

    goto :goto_0

    :cond_4
    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_8

    check-cast p1, Lcom/android/systemui/qp/SubscreenPagedTileLayout;

    if-eqz p0, :cond_5

    iget-object p2, p0, Lcom/android/systemui/qs/QSTileHost;->mSubScreenTileHost:Lcom/android/systemui/qs/SecSubScreenQSTileHost;

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iget-object p1, p1, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/qp/SubscreenPagedTileLayout$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qp/SubscreenPagedTileLayout$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;I)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {p2, p0}, Lcom/android/systemui/qs/SecSubScreenQSTileHost;->changeTiles(Ljava/util/List;)V

    goto :goto_1

    :cond_6
    iget-object p0, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizer$2;->this$0:Lcom/android/systemui/qp/customize/SubscreenCustomizer;

    iput-boolean v3, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizer;->mIsDroppedOnView:Z

    iget-object p1, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizer;->mLongClickedViewInfo:Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView$SubscreenTileRecord;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qp/customize/SubscreenCustomizer;->animationDrop(Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView$SubscreenTileRecord;)V

    goto :goto_1

    :cond_7
    iget-object p0, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizer$2;->this$0:Lcom/android/systemui/qp/customize/SubscreenCustomizer;

    iput-boolean v1, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizer;->mIsDroppedOnView:Z

    iput-boolean v3, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizer;->mIsDragging:Z

    :cond_8
    :goto_1
    return v3
.end method
