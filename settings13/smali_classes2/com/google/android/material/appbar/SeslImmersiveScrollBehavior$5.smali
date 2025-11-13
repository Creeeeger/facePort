.class Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$5;
.super Ljava/lang/Object;
.source "SeslImmersiveScrollBehavior.java"

# interfaces
.implements Landroid/view/WindowInsetsAnimationControlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;


# direct methods
.method constructor <init>(Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;)V
    .locals 0

    .line 796
    iput-object p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$5;->this$0:Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Landroid/view/WindowInsetsAnimationController;)V
    .locals 0

    .line 820
    iget-object p0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$5;->this$0:Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;

    invoke-virtual {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->cancelWindowInsetsAnimationController()V

    return-void
.end method

.method public onFinished(Landroid/view/WindowInsetsAnimationController;)V
    .locals 0

    .line 814
    iget-object p0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$5;->this$0:Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;

    invoke-static {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->access$2700(Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;)V

    return-void
.end method

.method public onReady(Landroid/view/WindowInsetsAnimationController;I)V
    .locals 1

    .line 799
    iget-object p2, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$5;->this$0:Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;

    invoke-static {p2}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->access$900(Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 800
    iget-object p2, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$5;->this$0:Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->access$2502(Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;Landroid/os/CancellationSignal;)Landroid/os/CancellationSignal;

    .line 802
    iget-object p2, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$5;->this$0:Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;

    invoke-static {p2, p1}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->access$1702(Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;Landroid/view/WindowInsetsAnimationController;)Landroid/view/WindowInsetsAnimationController;

    .line 807
    iget-object p0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$5;->this$0:Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;

    invoke-static {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->access$2600(Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;)V

    :cond_0
    return-void
.end method
