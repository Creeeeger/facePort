.class public Lcom/google/android/material/transformation/FabTransformationScrimBehavior;
.super Lcom/google/android/material/transformation/ExpandableTransformationBehavior;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final collapseTiming:Lcom/google/android/material/animation/MotionTiming;

.field public final expandTiming:Lcom/google/android/material/animation/MotionTiming;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;-><init>()V

    new-instance v0, Lcom/google/android/material/animation/MotionTiming;

    const-wide/16 v1, 0x4b

    const-wide/16 v3, 0x96

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/material/animation/MotionTiming;-><init>(JJ)V

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationScrimBehavior;->expandTiming:Lcom/google/android/material/animation/MotionTiming;

    new-instance v0, Lcom/google/android/material/animation/MotionTiming;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/material/animation/MotionTiming;-><init>(JJ)V

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationScrimBehavior;->collapseTiming:Lcom/google/android/material/animation/MotionTiming;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/google/android/material/animation/MotionTiming;

    const-wide/16 v0, 0x4b

    const-wide/16 v2, 0x96

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/google/android/material/animation/MotionTiming;-><init>(JJ)V

    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationScrimBehavior;->expandTiming:Lcom/google/android/material/animation/MotionTiming;

    new-instance p1, Lcom/google/android/material/animation/MotionTiming;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/google/android/material/animation/MotionTiming;-><init>(JJ)V

    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationScrimBehavior;->collapseTiming:Lcom/google/android/material/animation/MotionTiming;

    return-void
.end method


# virtual methods
.method public final layoutDependsOn(Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    instance-of p0, p2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    return p0
.end method

.method public final onCreateExpandedStateChangeAnimation(Landroid/view/View;Landroid/view/View;ZZ)Landroid/animation/AnimatorSet;
    .locals 4

    const/4 p1, 0x0

    const/4 v0, 0x1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_0

    iget-object v2, p0, Lcom/google/android/material/transformation/FabTransformationScrimBehavior;->expandTiming:Lcom/google/android/material/animation/MotionTiming;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/google/android/material/transformation/FabTransformationScrimBehavior;->collapseTiming:Lcom/google/android/material/animation/MotionTiming;

    :goto_0
    const/4 v3, 0x0

    if-eqz p3, :cond_2

    if-nez p4, :cond_1

    invoke-virtual {p2, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    sget-object p4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v0, v0, [F

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v0, p1

    invoke-static {p2, p4, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    goto :goto_1

    :cond_2
    sget-object p4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v0, v0, [F

    aput v3, v0, p1

    invoke-static {p2, p4, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    :goto_1
    invoke-virtual {v2, p1}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {p1, v1}, Lcom/google/android/material/animation/AnimatorSetCompat;->playTogether(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    new-instance p4, Lcom/google/android/material/transformation/FabTransformationScrimBehavior$1;

    invoke-direct {p4, p0, p3, p2}, Lcom/google/android/material/transformation/FabTransformationScrimBehavior$1;-><init>(Lcom/google/android/material/transformation/FabTransformationScrimBehavior;ZLandroid/view/View;)V

    invoke-virtual {p1, p4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p1
.end method

.method public final onTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
