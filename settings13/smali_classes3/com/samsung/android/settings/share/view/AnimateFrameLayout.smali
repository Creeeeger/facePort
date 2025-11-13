.class public Lcom/samsung/android/settings/share/view/AnimateFrameLayout;
.super Landroid/widget/FrameLayout;
.source "AnimateFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/share/view/AnimateFrameLayout$ExpandAnim;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDoOnEndRunnable:Ljava/lang/Runnable;

.field private mExpandAnim:Lcom/samsung/android/settings/share/view/AnimateFrameLayout$ExpandAnim;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 26
    iput-object p1, p0, Lcom/samsung/android/settings/share/view/AnimateFrameLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    iput-object p1, p0, Lcom/samsung/android/settings/share/view/AnimateFrameLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    iput-object p1, p0, Lcom/samsung/android/settings/share/view/AnimateFrameLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method private endAnimation()V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/samsung/android/settings/share/view/AnimateFrameLayout;->mDoOnEndRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 74
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/samsung/android/settings/share/view/AnimateFrameLayout;->mExpandAnim:Lcom/samsung/android/settings/share/view/AnimateFrameLayout$ExpandAnim;

    return-void
.end method


# virtual methods
.method public animateHeight(I)V
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/samsung/android/settings/share/view/AnimateFrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "remove_animations"

    const/4 v2, 0x0

    .line 54
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    .line 56
    :cond_0
    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/settings/share/view/AnimateFrameLayout;->animateHeight(IZ)V

    return-void
.end method

.method public animateHeight(IZ)V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/samsung/android/settings/share/view/AnimateFrameLayout;->mExpandAnim:Lcom/samsung/android/settings/share/view/AnimateFrameLayout$ExpandAnim;

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 63
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 64
    invoke-direct {p0}, Lcom/samsung/android/settings/share/view/AnimateFrameLayout;->endAnimation()V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x12c

    .line 68
    :goto_0
    new-instance p2, Lcom/samsung/android/settings/share/view/AnimateFrameLayout$ExpandAnim;

    invoke-direct {p2, p0, p1, v0, v1}, Lcom/samsung/android/settings/share/view/AnimateFrameLayout$ExpandAnim;-><init>(Lcom/samsung/android/settings/share/view/AnimateFrameLayout;IJ)V

    iput-object p2, p0, Lcom/samsung/android/settings/share/view/AnimateFrameLayout;->mExpandAnim:Lcom/samsung/android/settings/share/view/AnimateFrameLayout$ExpandAnim;

    .line 69
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method protected onAnimationEnd()V
    .locals 0

    .line 47
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAnimationEnd()V

    .line 48
    invoke-direct {p0}, Lcom/samsung/android/settings/share/view/AnimateFrameLayout;->endAnimation()V

    return-void
.end method

.method public setDoOnEndRunnable(Ljava/lang/Runnable;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/samsung/android/settings/share/view/AnimateFrameLayout;->mDoOnEndRunnable:Ljava/lang/Runnable;

    return-void
.end method
