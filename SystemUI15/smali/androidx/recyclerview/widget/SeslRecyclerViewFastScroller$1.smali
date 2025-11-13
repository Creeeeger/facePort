.class public final Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;)V
    .locals 0

    iput-object p1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$1;->this$0:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$1;->this$0:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;

    iget-boolean p1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mShowingPrimary:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mShowingPrimary:Z

    return-void
.end method
