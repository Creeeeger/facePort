.class public Lcom/samsung/android/settings/widget/PlayPauseLottieAnimationView;
.super Lcom/airbnb/lottie/LottieAnimationView;
.source "PlayPauseLottieAnimationView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/widget/PlayPauseLottieAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 17
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setClickable(Z)V

    return-void
.end method

.method private isRemoveAnimationEnabled()Z
    .locals 2

    .line 44
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "remove_animations"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method


# virtual methods
.method public performClick()Z
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->resumeAnimation()V

    .line 40
    :goto_0
    invoke-super {p0}, Landroid/widget/ImageView;->performClick()Z

    move-result p0

    return p0
.end method

.method public playAnimation()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/samsung/android/settings/widget/PlayPauseLottieAnimationView;->isRemoveAnimationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    goto :goto_0

    .line 29
    :cond_0
    invoke-super {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :goto_0
    return-void
.end method
