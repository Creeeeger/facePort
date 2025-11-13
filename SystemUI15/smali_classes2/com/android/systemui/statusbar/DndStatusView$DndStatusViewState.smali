.class public final Lcom/android/systemui/statusbar/DndStatusView$DndStatusViewState;
.super Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/DndStatusView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyToView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->applyToView(Landroid/view/View;)V

    instance-of p0, p1, Lcom/android/systemui/statusbar/DndStatusView;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/android/systemui/statusbar/DndStatusView;

    iget-boolean p0, p1, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mIsVisible:Z

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->setContentVisibleAnimated(Z)V

    :cond_0
    return-void
.end method
