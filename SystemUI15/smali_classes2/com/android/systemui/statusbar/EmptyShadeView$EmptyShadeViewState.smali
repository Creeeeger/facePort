.class public final Lcom/android/systemui/statusbar/EmptyShadeView$EmptyShadeViewState;
.super Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/EmptyShadeView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/EmptyShadeView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/EmptyShadeView$EmptyShadeViewState;->this$0:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyToView(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->applyToView(Landroid/view/View;)V

    instance-of v0, p1, Lcom/android/systemui/statusbar/EmptyShadeView;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/android/systemui/statusbar/EmptyShadeView;

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipTopAmount:I

    int-to-float v0, v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/EmptyShadeView$EmptyShadeViewState;->this$0:Lcom/android/systemui/statusbar/EmptyShadeView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/EmptyShadeView;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result p0

    int-to-float p0, p0

    const v1, 0x3f19999a    # 0.6f

    mul-float/2addr p0, v1

    cmpg-float p0, v0, p0

    if-gtz p0, :cond_0

    iget-boolean p0, p1, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mIsVisible:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->setContentVisibleAnimated(Z)V

    :cond_1
    return-void
.end method
