.class Lcom/samsung/android/settings/display/SecPreviewPagerAdapter$PreviewFrameAnimatorListener;
.super Ljava/lang/Object;
.source "SecPreviewPagerAdapter.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/SecPreviewPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreviewFrameAnimatorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/SecPreviewPagerAdapter;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/display/SecPreviewPagerAdapter;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/samsung/android/settings/display/SecPreviewPagerAdapter$PreviewFrameAnimatorListener;->this$0:Lcom/samsung/android/settings/display/SecPreviewPagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/display/SecPreviewPagerAdapter;Lcom/samsung/android/settings/display/SecPreviewPagerAdapter$PreviewFrameAnimatorListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/SecPreviewPagerAdapter$PreviewFrameAnimatorListener;-><init>(Lcom/samsung/android/settings/display/SecPreviewPagerAdapter;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 204
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecPreviewPagerAdapter$PreviewFrameAnimatorListener;->this$0:Lcom/samsung/android/settings/display/SecPreviewPagerAdapter;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecPreviewPagerAdapter;->-$$Nest$fgetmAnimationCounter(Lcom/samsung/android/settings/display/SecPreviewPagerAdapter;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Lcom/samsung/android/settings/display/SecPreviewPagerAdapter;->-$$Nest$fputmAnimationCounter(Lcom/samsung/android/settings/display/SecPreviewPagerAdapter;I)V

    .line 205
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecPreviewPagerAdapter$PreviewFrameAnimatorListener;->this$0:Lcom/samsung/android/settings/display/SecPreviewPagerAdapter;

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecPreviewPagerAdapter;->-$$Nest$mrunAnimationEndAction(Lcom/samsung/android/settings/display/SecPreviewPagerAdapter;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecPreviewPagerAdapter$PreviewFrameAnimatorListener;->this$0:Lcom/samsung/android/settings/display/SecPreviewPagerAdapter;

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecPreviewPagerAdapter;->-$$Nest$fgetmAnimationCounter(Lcom/samsung/android/settings/display/SecPreviewPagerAdapter;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/display/SecPreviewPagerAdapter;->-$$Nest$fputmAnimationCounter(Lcom/samsung/android/settings/display/SecPreviewPagerAdapter;I)V

    return-void
.end method
