.class public Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;
.super Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior<",
        "Lcom/google/android/material/bottomappbar/BottomAppBar;",
        ">;"
    }
.end annotation


# instance fields
.field public final fabContentRect:Landroid/graphics/Rect;

.field public final fabLayoutListener:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior$1;

.field public originalBottomMargin:I

.field public viewRef:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;-><init>()V

    new-instance v0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior$1;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;)V

    iput-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->fabLayoutListener:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior$1;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->fabContentRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior$1;

    invoke-direct {p1, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior$1;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;)V

    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->fabLayoutListener:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior$1;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->fabContentRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 6

    check-cast p2, Lcom/google/android/material/bottomappbar/BottomAppBar;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->viewRef:Ljava/lang/ref/WeakReference;

    sget v0, Lcom/google/android/material/bottomappbar/BottomAppBar;->$r8$clinit:I

    invoke-virtual {p2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->findDependentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9

    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    const/16 v2, 0x11

    iput v2, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    iget v2, p2, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAnchorMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/16 v3, 0x31

    iput v3, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    :cond_0
    if-nez v2, :cond_1

    iget v2, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    or-int/lit8 v2, v2, 0x50

    iput v2, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->originalBottomMargin:I

    instance-of v1, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-eqz v1, :cond_8

    move-object v1, v0

    check-cast v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget v2, p2, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAnchorMode:I

    if-nez v2, :cond_2

    iget-boolean v2, p2, Lcom/google/android/material/bottomappbar/BottomAppBar;->removeEmbeddedFabElevation:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat$Api21Impl;->setElevation(Landroid/view/View;F)V

    invoke-virtual {v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v3

    iget v4, v3, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->elevation:F

    cmpl-float v4, v4, v2

    if-eqz v4, :cond_2

    iput v2, v3, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->elevation:F

    iget v4, v3, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->hoveredFocusedTranslationZ:F

    iget v5, v3, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->pressedTranslationZ:F

    invoke-virtual {v3, v2, v4, v5}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->onElevationsChanged(FFF)V

    :cond_2
    invoke-virtual {v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->showMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    if-nez v2, :cond_3

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f020033

    invoke-static {v3, v2}, Lcom/google/android/material/animation/MotionSpec;->createFromResource(ILandroid/content/Context;)Lcom/google/android/material/animation/MotionSpec;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v3

    iput-object v2, v3, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->showMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    :cond_3
    invoke-virtual {v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->hideMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    if-nez v2, :cond_4

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f020032

    invoke-static {v3, v2}, Lcom/google/android/material/animation/MotionSpec;->createFromResource(ILandroid/content/Context;)Lcom/google/android/material/animation/MotionSpec;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v3

    iput-object v2, v3, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->hideMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    :cond_4
    iget-object v2, p2, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAnimationListener:Lcom/google/android/material/bottomappbar/BottomAppBar$1;

    invoke-virtual {v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v3

    iget-object v4, v3, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->hideListeners:Ljava/util/ArrayList;

    if-nez v4, :cond_5

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->hideListeners:Ljava/util/ArrayList;

    :cond_5
    iget-object v3, v3, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->hideListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/google/android/material/bottomappbar/BottomAppBar$9;

    invoke-direct {v2, p2}, Lcom/google/android/material/bottomappbar/BottomAppBar$9;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    invoke-virtual {v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v3

    iget-object v4, v3, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->showListeners:Ljava/util/ArrayList;

    if-nez v4, :cond_6

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->showListeners:Ljava/util/ArrayList;

    :cond_6
    iget-object v3, v3, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->showListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p2, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabTransformationCallback:Lcom/google/android/material/bottomappbar/BottomAppBar$2;

    invoke-virtual {v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v3

    new-instance v4, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$TransformationCallbackWrapper;

    invoke-direct {v4, v1, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$TransformationCallbackWrapper;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lcom/google/android/material/animation/TransformationCallback;)V

    iget-object v1, v3, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->transformationCallbacks:Ljava/util/ArrayList;

    if-nez v1, :cond_7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v3, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->transformationCallbacks:Ljava/util/ArrayList;

    :cond_7
    iget-object v1, v3, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->transformationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    iget-object v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->fabLayoutListener:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior$1;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {p2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->setCutoutStateAndTranslateFab()V

    :cond_9
    invoke-virtual {p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z

    const/4 p0, 0x0

    return p0
.end method

.method public final onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .locals 7

    move-object v2, p2

    check-cast v2, Lcom/google/android/material/bottomappbar/BottomAppBar;

    iget-boolean p2, v2, Lcom/google/android/material/bottomappbar/BottomAppBar;->hideOnScroll:Z

    if-eqz p2, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-super/range {v0 .. v6}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
