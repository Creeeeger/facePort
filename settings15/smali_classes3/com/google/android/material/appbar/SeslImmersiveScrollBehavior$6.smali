.class public final Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$6;
.super Landroid/view/WindowInsetsAnimation$Callback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;


# direct methods
.method public constructor <init>(Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$6;->this$0:Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroid/view/WindowInsetsAnimation$Callback;-><init>(I)V

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
