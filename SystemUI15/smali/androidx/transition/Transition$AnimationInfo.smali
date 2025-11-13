.class public final Landroidx/transition/Transition$AnimationInfo;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mAnimator:Landroid/animation/Animator;

.field public final mName:Ljava/lang/String;

.field public final mTransition:Landroidx/transition/Transition;

.field public final mValues:Landroidx/transition/TransitionValues;

.field public final mView:Landroid/view/View;

.field public final mWindowId:Landroid/view/WindowId;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/String;Landroidx/transition/Transition;Landroid/view/WindowId;Landroidx/transition/TransitionValues;Landroid/animation/Animator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/transition/Transition$AnimationInfo;->mView:Landroid/view/View;

    iput-object p2, p0, Landroidx/transition/Transition$AnimationInfo;->mName:Ljava/lang/String;

    iput-object p5, p0, Landroidx/transition/Transition$AnimationInfo;->mValues:Landroidx/transition/TransitionValues;

    iput-object p4, p0, Landroidx/transition/Transition$AnimationInfo;->mWindowId:Landroid/view/WindowId;

    iput-object p3, p0, Landroidx/transition/Transition$AnimationInfo;->mTransition:Landroidx/transition/Transition;

    iput-object p6, p0, Landroidx/transition/Transition$AnimationInfo;->mAnimator:Landroid/animation/Animator;

    return-void
.end method
