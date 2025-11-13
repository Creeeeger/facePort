.class public abstract Lcom/google/android/material/transformation/ExpandableBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public currentState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/transformation/ExpandableBehavior;->currentState:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/material/transformation/ExpandableBehavior;->currentState:I

    return-void
.end method


# virtual methods
.method public abstract layoutDependsOn(Landroid/view/View;Landroid/view/View;)Z
.end method

.method public final onDependentViewChanged(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    check-cast p3, Lcom/google/android/material/expandable/ExpandableWidget;

    move-object p1, p3

    check-cast p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-object p1, p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->expandableWidgetHelper:Lcom/google/android/material/expandable/ExpandableWidgetHelper;

    iget-boolean p1, p1, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->expanded:Z

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget v2, p0, Lcom/google/android/material/transformation/ExpandableBehavior;->currentState:I

    if-eqz v2, :cond_1

    if-ne v2, v0, :cond_3

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/google/android/material/transformation/ExpandableBehavior;->currentState:I

    if-ne v2, v1, :cond_3

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    move v0, v1

    :cond_2
    iput v0, p0, Lcom/google/android/material/transformation/ExpandableBehavior;->currentState:I

    check-cast p3, Landroid/view/View;

    invoke-virtual {p0, p3, p2, p1, v1}, Lcom/google/android/material/transformation/ExpandableBehavior;->onExpandedStateChange(Landroid/view/View;Landroid/view/View;ZZ)V

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public abstract onExpandedStateChange(Landroid/view/View;Landroid/view/View;ZZ)V
.end method

.method public final onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 5

    const/4 p3, 0x1

    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {p2}, Landroid/view/View;->isLaidOut()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDependencies(Landroid/view/View;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {p0, p2, v3}, Lcom/google/android/material/transformation/ExpandableBehavior;->layoutDependsOn(Landroid/view/View;Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    check-cast v3, Lcom/google/android/material/expandable/ExpandableWidget;

    goto :goto_1

    :cond_0
    add-int/2addr v2, p3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_5

    move-object p1, v3

    check-cast p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-object p1, p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->expandableWidgetHelper:Lcom/google/android/material/expandable/ExpandableWidgetHelper;

    iget-boolean p1, p1, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->expanded:Z

    const/4 v0, 0x2

    if-eqz p1, :cond_2

    iget v2, p0, Lcom/google/android/material/transformation/ExpandableBehavior;->currentState:I

    if-eqz v2, :cond_3

    if-ne v2, v0, :cond_5

    goto :goto_2

    :cond_2
    iget v2, p0, Lcom/google/android/material/transformation/ExpandableBehavior;->currentState:I

    if-ne v2, p3, :cond_5

    :cond_3
    :goto_2
    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    move p3, v0

    :goto_3
    iput p3, p0, Lcom/google/android/material/transformation/ExpandableBehavior;->currentState:I

    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/google/android/material/transformation/ExpandableBehavior$1;

    invoke-direct {v0, p0, p2, p3, v3}, Lcom/google/android/material/transformation/ExpandableBehavior$1;-><init>(Lcom/google/android/material/transformation/ExpandableBehavior;Landroid/view/View;ILcom/google/android/material/expandable/ExpandableWidget;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_5
    return v1
.end method
