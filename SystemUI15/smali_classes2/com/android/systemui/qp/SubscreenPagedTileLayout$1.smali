.class public final Lcom/android/systemui/qp/SubscreenPagedTileLayout$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qp/SubscreenPagedTileLayout;

.field public final synthetic val$addTileRecord:Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView$SubscreenTileRecord;

.field public final synthetic val$cur:I

.field public final synthetic val$curAddPos:I

.field public final synthetic val$pageOffset:I

.field public final synthetic val$removeTileRecord:Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView$SubscreenTileRecord;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qp/SubscreenPagedTileLayout;IILcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView$SubscreenTileRecord;Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView$SubscreenTileRecord;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout$1;->this$0:Lcom/android/systemui/qp/SubscreenPagedTileLayout;

    iput p2, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout$1;->val$cur:I

    iput p3, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout$1;->val$pageOffset:I

    iput-object p4, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout$1;->val$addTileRecord:Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView$SubscreenTileRecord;

    iput-object p5, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout$1;->val$removeTileRecord:Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView$SubscreenTileRecord;

    iput p6, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout$1;->val$curAddPos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout$1;->this$0:Lcom/android/systemui/qp/SubscreenPagedTileLayout;

    iget p2, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout$1;->val$cur:I

    iget p3, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout$1;->val$pageOffset:I

    add-int/2addr p2, p3

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->setCurrentItem(IZ)V

    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout$1;->this$0:Lcom/android/systemui/qp/SubscreenPagedTileLayout;

    iget-object p1, p1, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    iget p2, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout$1;->val$cur:I

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qp/SubscreenTileLayout;

    iget-object p2, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout$1;->val$addTileRecord:Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView$SubscreenTileRecord;

    invoke-virtual {p1, p2}, Lcom/android/systemui/qp/SubscreenTileLayout;->removeTile(Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView$SubscreenTileRecord;)V

    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout$1;->this$0:Lcom/android/systemui/qp/SubscreenPagedTileLayout;

    iget-object p1, p1, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    iget p2, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout$1;->val$cur:I

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qp/SubscreenTileLayout;

    iget-object p2, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout$1;->val$removeTileRecord:Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView$SubscreenTileRecord;

    iget p3, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout$1;->val$curAddPos:I

    invoke-virtual {p1, p2, p3}, Lcom/android/systemui/qp/SubscreenTileLayout;->addTile(Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView$SubscreenTileRecord;I)V

    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout$1;->this$0:Lcom/android/systemui/qp/SubscreenPagedTileLayout;

    iget-object p1, p1, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    iget p2, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout$1;->val$cur:I

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qp/SubscreenTileLayout;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout$1;->this$0:Lcom/android/systemui/qp/SubscreenPagedTileLayout;

    iget-object p1, p1, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    iget p2, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout$1;->val$cur:I

    iget p3, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout$1;->val$pageOffset:I

    add-int/2addr p2, p3

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qp/SubscreenTileLayout;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method
