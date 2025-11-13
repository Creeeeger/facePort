.class public final Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;
.super Lcom/android/systemui/qs/bar/BarItemImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mBrightnessBar:Lcom/android/systemui/qs/bar/BrightnessBar;

.field public final mLastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

.field public final mMediaDevicesBar:Lcom/android/systemui/qs/bar/MediaDevicesBar;

.field public mOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/bar/BarFactory;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/bar/BarItemImpl;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/android/systemui/util/ConfigurationState;

    sget-object v0, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->ORIENTATION:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    sget-object v1, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->SCREEN_HEIGHT_DP:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    sget-object v2, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->DISPLAY_DEVICE_TYPE:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    filled-new-array {v0, v1, v2}, [Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/systemui/util/ConfigurationState;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;->mLastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

    sget-object p1, Lcom/android/systemui/qs/bar/BarType;->BRIGHTNESS:Lcom/android/systemui/qs/bar/BarType;

    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/bar/BarFactory;->createBarItem(Lcom/android/systemui/qs/bar/BarType;)Lcom/android/systemui/qs/bar/BarItemImpl;

    move-result-object p1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/systemui/qs/bar/BarItemImpl;->mIsOnCollapsedState:Z

    check-cast p1, Lcom/android/systemui/qs/bar/BrightnessBar;

    iput-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;->mBrightnessBar:Lcom/android/systemui/qs/bar/BrightnessBar;

    sget-object p1, Lcom/android/systemui/qs/bar/BarType;->MEDIA_DEVICES:Lcom/android/systemui/qs/bar/BarType;

    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/bar/BarFactory;->createBarItem(Lcom/android/systemui/qs/bar/BarType;)Lcom/android/systemui/qs/bar/BarItemImpl;

    move-result-object p1

    iput-boolean v0, p1, Lcom/android/systemui/qs/bar/BarItemImpl;->mIsOnCollapsedState:Z

    check-cast p1, Lcom/android/systemui/qs/bar/MediaDevicesBar;

    iput-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;->mMediaDevicesBar:Lcom/android/systemui/qs/bar/MediaDevicesBar;

    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mCallback:Lcom/android/systemui/qs/bar/BarController$4;

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;->mBrightnessBar:Lcom/android/systemui/qs/bar/BrightnessBar;

    invoke-virtual {v0}, Lcom/android/systemui/qs/bar/BrightnessBar;->destroy()V

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;->mMediaDevicesBar:Lcom/android/systemui/qs/bar/MediaDevicesBar;

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/MediaDevicesBar;->destroy()V

    return-void
.end method

.method public final getBarHeight()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;->mBrightnessBar:Lcom/android/systemui/qs/bar/BrightnessBar;

    invoke-virtual {v0}, Lcom/android/systemui/qs/bar/BrightnessBar;->getBarHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;->mMediaDevicesBar:Lcom/android/systemui/qs/bar/MediaDevicesBar;

    invoke-virtual {v1}, Lcom/android/systemui/qs/bar/MediaDevicesBar;->getBarHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;->haveEnoughSpace()Z

    move-result p0

    if-eqz p0, :cond_0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    return v0
.end method

.method public final getBarLayout()I
    .locals 0

    const p0, 0x7f0d0318

    return p0
.end method

.method public final haveEnoughSpace()Z
    .locals 4

    sget-object v0, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->ORIENTATION:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;->mLastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

    invoke-virtual {v1, v0}, Lcom/android/systemui/util/ConfigurationState;->getValue(Lcom/android/systemui/util/ConfigurationState$ConfigurationField;)I

    move-result v2

    const/16 v3, -0x64

    if-ne v2, v3, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/systemui/util/ConfigurationState;->update(Landroid/content/res/Configuration;)V

    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/util/ConfigurationState;->getValue(Lcom/android/systemui/util/ConfigurationState$ConfigurationField;)I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    sget-boolean p0, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    if-nez p0, :cond_1

    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method public final inflateViews(Landroid/view/ViewGroup;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0318

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;->mBrightnessBar:Lcom/android/systemui/qs/bar/BrightnessBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/bar/BrightnessBar;->inflateViews(Landroid/view/ViewGroup;)V

    iget-object p1, v0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;->mMediaDevicesBar:Lcom/android/systemui/qs/bar/MediaDevicesBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/bar/MediaDevicesBar;->inflateViews(Landroid/view/ViewGroup;)V

    iget-object p1, v0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/bar/BarItemImpl;->showBar(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;->updateHeightMargins()V

    return-void
.end method

.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;->mLastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

    invoke-virtual {v1, p1}, Lcom/android/systemui/util/ConfigurationState;->needToUpdate(Landroid/content/res/Configuration;)Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;->mOrientation:I

    if-eq v2, v0, :cond_2

    :cond_1
    iput v0, p0, Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;->mOrientation:I

    invoke-virtual {v1, p1}, Lcom/android/systemui/util/ConfigurationState;->update(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;->mMediaDevicesBar:Lcom/android/systemui/qs/bar/MediaDevicesBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/bar/MediaDevicesBar;->onConfigChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;->mBrightnessBar:Lcom/android/systemui/qs/bar/BrightnessBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/bar/BrightnessBar;->onConfigChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;->updateHeightMargins()V

    :cond_2
    return-void
.end method

.method public final onKnoxPolicyChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;->mBrightnessBar:Lcom/android/systemui/qs/bar/BrightnessBar;

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BrightnessBar;->updateVisibility$7()V

    return-void
.end method

.method public final onUiModeChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;->mBrightnessBar:Lcom/android/systemui/qs/bar/BrightnessBar;

    invoke-virtual {v0}, Lcom/android/systemui/qs/bar/BrightnessBar;->onUiModeChanged()V

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;->mMediaDevicesBar:Lcom/android/systemui/qs/bar/MediaDevicesBar;

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/MediaDevicesBar;->onUiModeChanged()V

    return-void
.end method

.method public final setExpanded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mQsExpanded:Z

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;->mBrightnessBar:Lcom/android/systemui/qs/bar/BrightnessBar;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/bar/BrightnessBar;->setExpanded(Z)V

    return-void
.end method

.method public final setUnderneathQqs(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mIsUnderneathQqs:Z

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;->updateHeightMargins()V

    return-void
.end method

.method public final updateHeightMargins()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;->haveEnoughSpace()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    move v0, v2

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v4, -0x1

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    move v0, v2

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v2, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-ne v0, v1, :cond_2

    iget-object v5, p0, Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;->mBrightnessBar:Lcom/android/systemui/qs/bar/BrightnessBar;

    iget-boolean v5, v5, Lcom/android/systemui/qs/bar/BarItemImpl;->mShowing:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070099

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    :goto_2
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method
