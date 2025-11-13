.class public Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;
.super Landroid/widget/RelativeLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/knox/ui/viewmodel/KnoxStatusBarViewControl;


# instance fields
.field public isMultiUserAvatarHidden:Z

.field public mBatteryCharging:Z

.field public mBatteryView:Lcom/android/systemui/battery/BatteryMeterView;

.field public mCarrierLabel:Landroid/widget/TextView;

.field public final mClipRect:Landroid/graphics/Rect;

.field public mCutoutSpace:Landroid/view/View;

.field public final mDarkChange:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final mEmptyTintRect:Ljava/util/ArrayList;

.field public final mExt:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewExt;

.field public mHiddenByDeX:Z

.field public mIsUserSwitcherEnabled:Z

.field public mKeyguardStatusBarWallpaperHelper:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarWallpaperHelper;

.field public mKeyguardUserAvatarEnabled:Z

.field public mKeyguardUserSwitcherEnabled:Z

.field public mMultiUserAvatar:Landroid/widget/ImageView;

.field public mMultiUserName:Ljava/lang/String;

.field public mNetspeedView:Lcom/android/systemui/statusbar/policy/NetspeedView;

.field public mNotifIconColor:I

.field public mShowPercentAvailable:Z

.field public mStatusIconArea:Landroid/view/ViewGroup;

.field public mSystemIcons:Landroid/view/View;

.field public mSystemIconsContainer:Landroid/view/View;

.field public mTopClipping:I

.field public mUserCount:I

.field public mUserSwitcherContainer:Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherContainer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mEmptyTintRect:Ljava/util/ArrayList;

    sget-object p1, Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher$DarkChange;->EMPTY:Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher$DarkChange;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mDarkChange:Lkotlinx/coroutines/flow/StateFlowImpl;

    const/4 p1, 0x0

    invoke-static {p1, p1, p1, p1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, p1, p1, p1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mClipRect:Landroid/graphics/Rect;

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mHiddenByDeX:Z

    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mUserCount:I

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->isMultiUserAvatarHidden:Z

    new-instance p1, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewExt;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewExt;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mExt:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewExt;

    return-void
.end method


# virtual methods
.method public final getStatusBarView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public final hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isKeyguardUserAvatarEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mKeyguardUserAvatarEnabled:Z

    return p0
.end method

.method public final loadDimens()V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071711

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    const v1, 0x7f0714a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    const v1, 0x7f070c59

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070341

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110059

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mShowPercentAvailable:Z

    const p0, 0x7f070ed4

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->loadDimens()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mStatusIconArea:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0714aa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mStatusIconArea:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mStatusIconArea:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p0

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    return-void
.end method

.method public final onFinishInflate()V
    .locals 4

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0a0ce8

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsContainer:Landroid/view/View;

    const v0, 0x7f0a0ce7

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIcons:Landroid/view/View;

    const v1, 0x7f0a07a8

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserAvatar:Landroid/widget/ImageView;

    const v1, 0x7f0a057e

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCarrierLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsContainer:Landroid/view/View;

    const v2, 0x7f0a0163

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/battery/BatteryMeterView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryView:Lcom/android/systemui/battery/BatteryMeterView;

    if-eqz v1, :cond_0

    const-string v2, "KeyguardStatusBarView"

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    :cond_0
    const v1, 0x7f0a0335

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCutoutSpace:Landroid/view/View;

    const v1, 0x7f0a0c1e

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mStatusIconArea:Landroid/view/ViewGroup;

    const v1, 0x7f0a0c0f

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    sget-boolean v1, Lcom/android/systemui/BasicRune;->STATUS_REAL_TIME_NETWORK_SPEED:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d033c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetspeedView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mNetspeedView:Lcom/android/systemui/statusbar/policy/NetspeedView;

    sget-boolean v2, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_SIDELING_CUTOUT:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/policy/NetspeedView;->mInStatusBar:Z

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_2
    const v0, 0x7f0a0dfd

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherContainer;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mUserSwitcherContainer:Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherContainer;

    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->loadDimens()V

    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mClipRect:Landroid/graphics/Rect;

    iget p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mTopClipping:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result p3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p4

    const/4 p5, 0x0

    invoke-virtual {p1, p5, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setClipBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 1

    const-string v0, "KeyguardStatusBarView#onMeasure"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final onOverlayChanged()V
    .locals 2

    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    const v1, 0x1010042

    invoke-static {v1, v0}, Lcom/android/settingslib/Utils;->getThemeAttr(ILandroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryView:Lcom/android/systemui/battery/BatteryMeterView;

    invoke-virtual {v1}, Lcom/android/systemui/battery/BatteryMeterView;->updateShowPercent()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mUserSwitcherContainer:Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherContainer;

    const v1, 0x7f0a031f

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    :cond_0
    return-void
.end method

.method public final onThemeChanged(Lcom/android/systemui/statusbar/phone/ui/TintedIconManager;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryView:Lcom/android/systemui/battery/BatteryMeterView;

    iget-object v1, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/android/systemui/battery/BatteryMeterView;->mDualToneHandler:Lcom/android/systemui/DualToneHandler;

    invoke-virtual {v0, v1}, Lcom/android/systemui/DualToneHandler;->setColorsFromContext(Landroid/content/Context;)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateIconsAndTextColors(Lcom/android/systemui/statusbar/phone/ui/TintedIconManager;)V

    return-void
.end method

.method public final setAlpha(F)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mExt:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewExt;

    iget v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewExt;->alpha:F

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_1

    iget v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewExt;->alpha:F

    iput p1, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewExt;->alpha:F

    const-class v2, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;

    sget-object v3, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v3, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;

    iget v3, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewExt;->alpha:F

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;->nioLayoutModel:Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;

    new-instance v4, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository$updateKeyguardStatusBarViewAlpha$1$1;

    invoke-direct {v4, v2, v3}, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository$updateKeyguardStatusBarViewAlpha$1$1;-><init>(Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;F)V

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->updateValues(Ljava/lang/Runnable;)V

    float-to-double v1, v1

    const-wide/16 v3, 0x0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v5

    if-eqz v5, :cond_0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_0

    float-to-double v1, p1

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewExt;->printStatusLog()V

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    return-void
.end method

.method public final setHiddenByKnox(Z)V
    .locals 0

    return-void
.end method

.method public final setVisibility(I)V
    .locals 5

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mHiddenByDeX:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mExt:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewExt;

    iget v2, v1, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewExt;->visibility:I

    if-eq v2, v0, :cond_1

    iput v0, v1, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewExt;->visibility:I

    const-class v2, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;

    sget-object v3, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v3, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;

    iget v3, v1, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewExt;->visibility:I

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;->nioLayoutModel:Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;

    new-instance v4, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository$updateKeyguardStatusBarViewVisibility$1$1;

    invoke-direct {v4, v2, v3}, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository$updateKeyguardStatusBarViewVisibility$1$1;-><init>(Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;I)V

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->updateValues(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewExt;->printStatusLog()V

    :cond_1
    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsContainer:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsContainer:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserAvatar:Landroid/widget/ImageView;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateVisibilities()V

    :goto_1
    return-void
.end method

.method public final updateIconsAndTextColors(Lcom/android/systemui/statusbar/phone/ui/TintedIconManager;)V
    .locals 10

    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    const v1, 0x7f040801

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->luminance(I)F

    move-result v1

    iget-object v3, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    float-to-double v4, v1

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpg-double v1, v4, v6

    const v4, 0x7f0601e9

    if-gez v1, :cond_0

    const v5, 0x7f0600ea

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    invoke-static {v5, v3}, Lcom/android/settingslib/Utils;->getColorStateListDefaultColor(ILandroid/content/Context;)I

    move-result v3

    const/high16 v5, -0x1000000

    const v8, -0x12000001

    if-gez v1, :cond_1

    move v1, v8

    goto :goto_1

    :cond_1
    move v1, v5

    :goto_1
    const/4 v9, -0x1

    if-ne v0, v9, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_2
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mKeyguardStatusBarWallpaperHelper:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarWallpaperHelper;

    if-eqz v9, :cond_4

    iget v3, v9, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarWallpaperHelper;->fontColorFromWallPaper:I

    invoke-static {v3}, Landroid/graphics/Color;->luminance(I)F

    move-result v0

    float-to-double v0, v0

    cmpg-double v0, v0, v6

    if-gez v0, :cond_3

    move v5, v8

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mKeyguardStatusBarWallpaperHelper:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarWallpaperHelper;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarWallpaperHelper;->intensity:F

    move v1, v5

    :cond_4
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iput v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mNotifIconColor:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mUserSwitcherContainer:Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherContainer;

    const v6, 0x7f0a031f

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_5

    iget-object v6, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-static {v4, v6}, Lcom/android/settingslib/Utils;->getColorStateListDefaultColor(ILandroid/content/Context;)I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {p1, v3, v1}, Lcom/android/systemui/statusbar/phone/ui/TintedIconManager;->setTint(II)V

    :cond_6
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mKeyguardStatusBarWallpaperHelper:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarWallpaperHelper;

    if-eqz p1, :cond_8

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryView:Lcom/android/systemui/battery/BatteryMeterView;

    iget p1, p1, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarWallpaperHelper;->fontColorType:I

    const/4 v4, 0x2

    if-ne p1, v4, :cond_7

    const/4 v2, 0x1

    :cond_7
    iput-boolean v2, v1, Lcom/android/systemui/battery/BatteryMeterView;->mIsGrayColor:Z

    iget-object p1, v1, Lcom/android/systemui/battery/BatteryMeterView;->mSamsungDrawable:Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;

    iput-boolean v2, p1, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->shouldShowGrayIcon:Z

    :cond_8
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mDarkChange:Lkotlinx/coroutines/flow/StateFlowImpl;

    new-instance v1, Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher$DarkChange;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mEmptyTintRect:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v0, v3}, Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher$DarkChange;-><init>(Ljava/util/Collection;FI)V

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mEmptyTintRect:Ljava/util/ArrayList;

    const v1, 0x7f0a0163

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;

    if-eqz v2, :cond_9

    check-cast v1, Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;

    invoke-interface {v1, p1, v0, v3}, Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;->onDarkChanged(Ljava/util/ArrayList;FI)V

    :cond_9
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mEmptyTintRect:Ljava/util/ArrayList;

    const v1, 0x7f0a02a2

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;

    if-eqz v2, :cond_a

    check-cast v1, Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;

    invoke-interface {v1, p1, v0, v3}, Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;->onDarkChanged(Ljava/util/ArrayList;FI)V

    :cond_a
    sget-boolean p1, Lcom/android/systemui/BasicRune;->STATUS_REAL_TIME_NETWORK_SPEED:Z

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mNetspeedView:Lcom/android/systemui/statusbar/policy/NetspeedView;

    if-eqz p1, :cond_b

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mEmptyTintRect:Ljava/util/ArrayList;

    invoke-virtual {p1, p0, v0, v3}, Lcom/android/systemui/statusbar/policy/NetspeedView;->onDarkChanged(Ljava/util/ArrayList;FI)V

    :cond_b
    return-void
.end method

.method public final updateVisibilities()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mKeyguardUserAvatarEnabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mStatusIconArea:Landroid/view/ViewGroup;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mStatusIconArea:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mKeyguardUserSwitcherEnabled:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mStatusIconArea:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mStatusIconArea:Landroid/view/ViewGroup;

    if-ne v0, v1, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mKeyguardUserSwitcherEnabled:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_5
    :goto_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mKeyguardUserSwitcherEnabled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mIsUserSwitcherEnabled:Z

    if-eqz v0, :cond_6

    sget-boolean v0, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_MUM_ICON:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mUserCount:I

    if-le v0, v1, :cond_6

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->isMultiUserAvatarHidden:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserAvatar:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryView:Lcom/android/systemui/battery/BatteryMeterView;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryCharging:Z

    if-eqz v3, :cond_8

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mShowPercentAvailable:Z

    if-eqz p0, :cond_8

    move v2, v1

    :cond_8
    invoke-virtual {v0, v2}, Lcom/android/systemui/battery/BatteryMeterView;->setPercentShowMode(I)V

    return-void
.end method

.method public final updateWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method
