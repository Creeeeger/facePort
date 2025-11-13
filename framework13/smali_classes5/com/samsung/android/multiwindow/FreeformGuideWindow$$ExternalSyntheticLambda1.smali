.class public final synthetic Lcom/samsung/android/multiwindow/FreeformGuideWindow$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/multiwindow/FreeformGuideWindow;

.field public final synthetic blacklist f$1:Landroid/widget/FrameLayout$LayoutParams;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/multiwindow/FreeformGuideWindow;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/multiwindow/FreeformGuideWindow$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/multiwindow/FreeformGuideWindow;

    iput-object p2, p0, Lcom/samsung/android/multiwindow/FreeformGuideWindow$$ExternalSyntheticLambda1;->f$1:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method


# virtual methods
.method public final whitelist onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformGuideWindow$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/multiwindow/FreeformGuideWindow;

    iget-object v1, p0, Lcom/samsung/android/multiwindow/FreeformGuideWindow$$ExternalSyntheticLambda1;->f$1:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->lambda$show$1$com-samsung-android-multiwindow-FreeformGuideWindow(Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V

    return-void
.end method
