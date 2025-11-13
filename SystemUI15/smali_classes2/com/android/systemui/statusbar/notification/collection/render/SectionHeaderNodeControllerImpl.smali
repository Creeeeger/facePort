.class public final Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/render/NodeController;
.implements Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;


# instance fields
.field public _view:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

.field public final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public clearAllButtonEnabled:Z

.field public clearAllClickListener:Landroid/view/View$OnClickListener;

.field public final clickIntentAction:Ljava/lang/String;

.field public final headerTextResId:I

.field public final layoutInflater:Landroid/view/LayoutInflater;

.field public final nodeLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/view/LayoutInflater;ILcom/android/systemui/plugins/ActivityStarter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;->nodeLabel:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;->layoutInflater:Landroid/view/LayoutInflater;

    iput p3, p0, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;->headerTextResId:I

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;->clickIntentAction:Ljava/lang/String;

    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl$onHeaderClickListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl$onHeaderClickListener$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;)V

    return-void
.end method


# virtual methods
.method public final getNodeLabel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;->nodeLabel:Ljava/lang/String;

    return-object p0
.end method

.method public final getView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;->_view:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final offerToKeepInParentForAnimation()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onViewAdded()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;->_view:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->setContentVisibleAnimated(Z)V

    :cond_0
    return-void
.end method

.method public final onViewRemoved()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;->_view:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v0}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->setContentVisible(ZZLjava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public final reinflateView(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;->_view:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->removeFromTransientContainer()V

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-ne v2, p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;->layoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0d0461

    const/4 v4, 0x0

    invoke-virtual {v0, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    iget v3, p0, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;->headerTextResId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->mLabelTextId:Ljava/lang/Integer;

    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->mLabelView:Lcom/android/systemui/HighlightingTextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;->clearAllClickListener:Landroid/view/View$OnClickListener;

    if-eqz v3, :cond_1

    iput-object v3, v0, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->mOnClearClickListener:Landroid/view/View$OnClickListener;

    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->mClearAllButton:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    if-eq v2, v1, :cond_2

    invoke-virtual {p1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_2
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;->_view:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;->clearAllButtonEnabled:Z

    iget-object p1, v0, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->mClearAllButton:Landroid/widget/ImageView;

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    const/16 v4, 0x8

    :goto_1
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public final removeFromParentIfKeptForAnimation()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final resetKeepInParentForAnimation()V
    .locals 0

    return-void
.end method
