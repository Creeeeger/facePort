.class Lcom/samsung/android/multiwindow/OverlayHandlerView$FadeAnimListener;
.super Ljava/lang/Object;
.source "OverlayHandlerView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/multiwindow/OverlayHandlerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FadeAnimListener"
.end annotation


# instance fields
.field private blacklist mCanceled:Z

.field private blacklist mFadeIn:Z

.field final synthetic blacklist this$0:Lcom/samsung/android/multiwindow/OverlayHandlerView;


# direct methods
.method private constructor blacklist <init>(Lcom/samsung/android/multiwindow/OverlayHandlerView;)V
    .locals 0

    .line 935
    iput-object p1, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView$FadeAnimListener;->this$0:Lcom/samsung/android/multiwindow/OverlayHandlerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 936
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView$FadeAnimListener;->mCanceled:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/samsung/android/multiwindow/OverlayHandlerView;Lcom/samsung/android/multiwindow/OverlayHandlerView$FadeAnimListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/multiwindow/OverlayHandlerView$FadeAnimListener;-><init>(Lcom/samsung/android/multiwindow/OverlayHandlerView;)V

    return-void
.end method


# virtual methods
.method public blacklist get(Z)Lcom/samsung/android/multiwindow/OverlayHandlerView$FadeAnimListener;
    .locals 0
    .param p1, "fadeIn"    # Z

    .line 940
    iput-boolean p1, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView$FadeAnimListener;->mFadeIn:Z

    .line 941
    return-object p0
.end method

.method public whitelist onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 964
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView$FadeAnimListener;->mCanceled:Z

    .line 965
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView$FadeAnimListener;->this$0:Lcom/samsung/android/multiwindow/OverlayHandlerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->-$$Nest$fputmResizeFadeAnim(Lcom/samsung/android/multiwindow/OverlayHandlerView;Z)V

    .line 966
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView$FadeAnimListener;->mFadeIn:Z

    if-nez v0, :cond_0

    .line 967
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView$FadeAnimListener;->this$0:Lcom/samsung/android/multiwindow/OverlayHandlerView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->setAlpha(F)V

    .line 969
    :cond_0
    return-void
.end method

.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 952
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView$FadeAnimListener;->mCanceled:Z

    if-eqz v0, :cond_0

    .line 953
    return-void

    .line 955
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView$FadeAnimListener;->mFadeIn:Z

    if-nez v0, :cond_1

    .line 956
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView$FadeAnimListener;->this$0:Lcom/samsung/android/multiwindow/OverlayHandlerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->setVisibility(I)V

    .line 958
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView$FadeAnimListener;->this$0:Lcom/samsung/android/multiwindow/OverlayHandlerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->-$$Nest$fputmFadeAnim(Lcom/samsung/android/multiwindow/OverlayHandlerView;Landroid/animation/AnimatorSet;)V

    .line 959
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView$FadeAnimListener;->this$0:Lcom/samsung/android/multiwindow/OverlayHandlerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->-$$Nest$fputmResizeFadeAnim(Lcom/samsung/android/multiwindow/OverlayHandlerView;Z)V

    .line 960
    return-void
.end method

.method public whitelist onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 973
    return-void
.end method

.method public whitelist onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 946
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView$FadeAnimListener;->this$0:Lcom/samsung/android/multiwindow/OverlayHandlerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->setVisibility(I)V

    .line 947
    iput-boolean v1, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView$FadeAnimListener;->mCanceled:Z

    .line 948
    return-void
.end method
