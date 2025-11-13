.class public final Lcom/android/systemui/navigationbar/NavigationBarView$NavTransitionListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/LayoutTransition$TransitionListener;


# instance fields
.field public mBackTransitioning:Z

.field public mDuration:J

.field public mHomeAppearing:Z

.field public mInterpolator:Landroid/animation/TimeInterpolator;

.field public mStartDelay:J

.field public final synthetic this$0:Lcom/android/systemui/navigationbar/NavigationBarView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/navigationbar/NavigationBarView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView$NavTransitionListener;->this$0:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/navigationbar/NavigationBarView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView$NavTransitionListener;-><init>(Lcom/android/systemui/navigationbar/NavigationBarView;)V

    return-void
.end method


# virtual methods
.method public final endTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 1

    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result p1

    const p2, 0x7f0a013a

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView$NavTransitionListener;->mBackTransitioning:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result p1

    const p2, 0x7f0a04f8

    if-ne p1, p2, :cond_1

    const/4 p1, 0x2

    if-ne p4, p1, :cond_1

    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView$NavTransitionListener;->mHomeAppearing:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final startTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 2

    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result p2

    const v0, 0x7f0a013a

    const/4 v1, 0x1

    if-ne p2, v0, :cond_0

    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView$NavTransitionListener;->mBackTransitioning:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result p2

    const p3, 0x7f0a04f8

    if-ne p2, p3, :cond_1

    const/4 p2, 0x2

    if-ne p4, p2, :cond_1

    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView$NavTransitionListener;->mHomeAppearing:Z

    invoke-virtual {p1, p4}, Landroid/animation/LayoutTransition;->getStartDelay(I)J

    move-result-wide p2

    iput-wide p2, p0, Lcom/android/systemui/navigationbar/NavigationBarView$NavTransitionListener;->mStartDelay:J

    invoke-virtual {p1, p4}, Landroid/animation/LayoutTransition;->getDuration(I)J

    move-result-wide p2

    iput-wide p2, p0, Lcom/android/systemui/navigationbar/NavigationBarView$NavTransitionListener;->mDuration:J

    invoke-virtual {p1, p4}, Landroid/animation/LayoutTransition;->getInterpolator(I)Landroid/animation/TimeInterpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView$NavTransitionListener;->mInterpolator:Landroid/animation/TimeInterpolator;

    :cond_1
    :goto_0
    return-void
.end method
