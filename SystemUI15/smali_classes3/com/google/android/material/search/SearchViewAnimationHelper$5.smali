.class public final Lcom/google/android/material/search/SearchViewAnimationHelper$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

.field public final synthetic val$show:Z


# direct methods
.method public constructor <init>(Lcom/google/android/material/search/SearchViewAnimationHelper;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$5;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    iput-boolean p2, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$5;->val$show:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$5;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    iget-boolean v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$5;->val$show:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {p1, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$200(Lcom/google/android/material/search/SearchViewAnimationHelper;F)V

    iget-object p0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$5;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    iget-object p0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->rootView:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->path:Landroid/graphics/Path;

    iput v1, p0, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->cornerRadius:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$5;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    iget-boolean p0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$5;->val$show:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_0
    invoke-static {p1, p0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$200(Lcom/google/android/material/search/SearchViewAnimationHelper;F)V

    return-void
.end method
