.class public final Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$6;
.super Landroid/view/WindowInsetsAnimation$Callback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;


# direct methods
.method public constructor <init>(Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$6;->this$0:Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;

    invoke-direct {p0, p2}, Landroid/view/WindowInsetsAnimation$Callback;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final onEnd(Landroid/view/WindowInsetsAnimation;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/WindowInsetsAnimation$Callback;->onEnd(Landroid/view/WindowInsetsAnimation;)V

    iget-object p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$6;->this$0:Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;

    iget-object v0, p1, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    iget-boolean v1, v1, Lcom/google/android/material/appbar/AppBarLayout;->mIsDetachedState:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mDecorViewInset:Landroid/view/WindowInsets;

    iget-object p0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$6;->this$0:Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;

    iget-object p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mDecorViewInset:Landroid/view/WindowInsets;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mContentView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    :cond_0
    return-void
.end method

.method public final onProgress(Landroid/view/WindowInsets;Ljava/util/List;)Landroid/view/WindowInsets;
    .locals 0

    return-object p1
.end method
