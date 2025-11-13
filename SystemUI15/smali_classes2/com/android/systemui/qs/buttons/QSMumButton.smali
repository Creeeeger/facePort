.class public Lcom/android/systemui/qs/buttons/QSMumButton;
.super Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/buttons/QSButtonsContainer$CloseTooltipWindow;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public isExpandedOnLockScreen:Z

.field public final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field public final mContext:Landroid/content/Context;

.field public mExpanded:Z

.field public mListening:Z

.field public mMainHandler:Landroid/os/Handler;

.field public mMultiUserAvatar:Landroid/widget/ImageView;

.field public mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

.field public final mMumAndDexHelper:Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;

.field public mPanelSplitEnabled:Z

.field public final mPanelSplitHelper:Lcom/android/systemui/shade/SecPanelSplitHelper;

.field public final mPanelTransitionStateListener:Lcom/android/systemui/qs/buttons/QSMumButton$$ExternalSyntheticLambda0;

.field public final mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

.field public final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final mTipWindow:Lcom/android/systemui/qs/buttons/QSTooltipWindow;

.field public final mToolTipString:I

.field public final mUserSwitcherInteractor:Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mMainHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mPanelSplitEnabled:Z

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->isExpandedOnLockScreen:Z

    new-instance p2, Lcom/android/systemui/qs/buttons/QSMumButton$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/buttons/QSMumButton$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/buttons/QSMumButton;)V

    iput-object p2, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mPanelTransitionStateListener:Lcom/android/systemui/qs/buttons/QSMumButton$$ExternalSyntheticLambda0;

    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mContext:Landroid/content/Context;

    const-class p2, Lcom/android/systemui/statusbar/CommandQueue;

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, p2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/CommandQueue;

    iput-object p2, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    new-instance p2, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;-><init>(Lcom/android/systemui/qs/buttons/QSMumButton;)V

    iput-object p2, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mMumAndDexHelper:Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;

    sget-object p2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-virtual {p2, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iput-object p2, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-static {p1}, Lcom/android/systemui/qs/buttons/QSTooltipWindow;->getInstance(Landroid/content/Context;)Lcom/android/systemui/qs/buttons/QSTooltipWindow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mTipWindow:Lcom/android/systemui/qs/buttons/QSTooltipWindow;

    const p1, 0x7f13137e

    iput p1, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mToolTipString:I

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p2, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;

    invoke-virtual {p1, p2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;

    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mUserSwitcherInteractor:Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p2, Lcom/android/systemui/shade/SecPanelSplitHelper;

    invoke-virtual {p1, p2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/shade/SecPanelSplitHelper;

    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mPanelSplitHelper:Lcom/android/systemui/shade/SecPanelSplitHelper;

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p2, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-virtual {p1, p2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    return-void
.end method


# virtual methods
.method public final closeTooltip()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mTipWindow:Lcom/android/systemui/qs/buttons/QSTooltipWindow;

    invoke-virtual {p0}, Lcom/android/systemui/qs/buttons/QSTooltipWindow;->hideToolTip()V

    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mMumAndDexHelper:Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->init()V

    :cond_0
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/buttons/QSMumButton;->updateTouchTargetArea$1()V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/buttons/QSMumButton;->setListening(Z)V

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mMumAndDexHelper:Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->destroy()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mPanelSplitHelper:Lcom/android/systemui/shade/SecPanelSplitHelper;

    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mPanelTransitionStateListener:Lcom/android/systemui/qs/buttons/QSMumButton$$ExternalSyntheticLambda0;

    invoke-virtual {v0, p0}, Lcom/android/systemui/shade/SecPanelSplitHelper;->removeListener(Lcom/android/systemui/shade/PanelTransitionStateListener;)V

    return-void
.end method

.method public final onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/buttons/QSMumButton;->updateTouchTargetArea$1()V

    const v0, 0x7f0a07aa

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    iput-object v0, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    const v1, 0x7f0a07a8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mMultiUserAvatar:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    const v1, 0x7f0a07a9

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    const v0, 0x7f0a07ac

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/buttons/QSMumButton$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/buttons/QSMumButton$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/qs/buttons/QSMumButton;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    new-instance v1, Lcom/android/systemui/qs/buttons/QSMumButton$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/buttons/QSMumButton$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/qs/buttons/QSMumButton;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    new-instance v1, Lcom/android/systemui/qs/buttons/QSMumButton$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/buttons/QSMumButton$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/qs/buttons/QSMumButton;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mPanelSplitHelper:Lcom/android/systemui/shade/SecPanelSplitHelper;

    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mPanelTransitionStateListener:Lcom/android/systemui/qs/buttons/QSMumButton$$ExternalSyntheticLambda0;

    invoke-virtual {v0, p0}, Lcom/android/systemui/shade/SecPanelSplitHelper;->addListener(Lcom/android/systemui/shade/PanelTransitionStateListener;)V

    return-void
.end method

.method public final setListening(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mListening:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mListening:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->isExpandedOnLockScreen:Z

    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mMumAndDexHelper:Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/android/systemui/qs/buttons/QSMumButton$$ExternalSyntheticLambda1;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/android/systemui/qs/buttons/QSMumButton$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public final updateTouchTargetArea$1()V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v2, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mContext:Landroid/content/Context;

    iget-object v1, v1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->getButtonsWidth(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v1, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07105a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
