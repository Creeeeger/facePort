.class public Lcom/android/systemui/qs/buttons/QSButtonsContainer;
.super Landroid/widget/LinearLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public mCloseTooltipWindow:Lcom/android/systemui/qs/buttons/QSButtonsContainer$CloseTooltipWindow;

.field public final mDismissReceiver:Lcom/android/systemui/qs/buttons/QSButtonsContainer$1;

.field public mEditButton:Lcom/android/systemui/qs/buttons/QSEditButton;

.field public mExpanded:Z

.field public mListening:Z

.field public mMumButton:Lcom/android/systemui/qs/buttons/QSMumButton;

.field public mPowerButton:Lcom/android/systemui/qs/buttons/QSPowerButton;

.field public mSettingsButton:Lcom/android/systemui/qs/buttons/QSSettingsButton;

.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private final mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p2, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1, p2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    new-instance p1, Lcom/android/systemui/qs/buttons/QSButtonsContainer$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/buttons/QSButtonsContainer$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/buttons/QSButtonsContainer;)V

    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    new-instance p1, Lcom/android/systemui/qs/buttons/QSButtonsContainer$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/buttons/QSButtonsContainer$1;-><init>(Lcom/android/systemui/qs/buttons/QSButtonsContainer;)V

    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mDismissReceiver:Lcom/android/systemui/qs/buttons/QSButtonsContainer$1;

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p2, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {p1, p2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    return-void
.end method


# virtual methods
.method public final isMassiveLandscape()Z
    .locals 1

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    sget-boolean p0, Lcom/android/systemui/QpRune;->QUICK_PANEL_BLUR_DEFAULT:Z

    if-nez p0, :cond_0

    sget-boolean p0, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v2, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mDismissReceiver:Lcom/android/systemui/qs/buttons/QSButtonsContainer$1;

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->updateButtonsContainerWidth()V

    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    const-string/jumbo v2, "split_quick_panel"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    new-instance p1, Lcom/android/systemui/qs/buttons/QSButtonsContainer$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/buttons/QSButtonsContainer$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/buttons/QSButtonsContainer;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->updateButtonsContainerWidth()V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mCloseTooltipWindow:Lcom/android/systemui/qs/buttons/QSButtonsContainer$CloseTooltipWindow;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mCloseTooltipWindow:Lcom/android/systemui/qs/buttons/QSButtonsContainer$CloseTooltipWindow;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v1, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mDismissReceiver:Lcom/android/systemui/qs/buttons/QSButtonsContainer$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    return-void
.end method

.method public final onFinishInflate()V
    .locals 5

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a0b36

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/buttons/QSSettingsButton;

    iput-object v0, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mSettingsButton:Lcom/android/systemui/qs/buttons/QSSettingsButton;

    const v0, 0x7f0a03e8

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/buttons/QSEditButton;

    iput-object v0, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mEditButton:Lcom/android/systemui/qs/buttons/QSEditButton;

    const v0, 0x7f0a0901

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/buttons/QSPowerButton;

    iput-object v0, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mPowerButton:Lcom/android/systemui/qs/buttons/QSPowerButton;

    const v0, 0x7f0a07ac

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/buttons/QSMumButton;

    iput-object v0, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mMumButton:Lcom/android/systemui/qs/buttons/QSMumButton;

    new-instance v0, Lcom/android/systemui/qs/buttons/QSButtonsContainer$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/buttons/QSButtonsContainer$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/buttons/QSButtonsContainer;)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const v1, 0x7f060683

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mEditButton:Lcom/android/systemui/qs/buttons/QSEditButton;

    const v2, 0x7f0a03e6

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mPowerButton:Lcom/android/systemui/qs/buttons/QSPowerButton;

    const v3, 0x7f0a08ff

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mSettingsButton:Lcom/android/systemui/qs/buttons/QSSettingsButton;

    const v4, 0x7f0a0b34

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mMumButton:Lcom/android/systemui/qs/buttons/QSMumButton;

    const v1, 0x7f0a07a8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/util/RecoilEffectUtil;->getSecRecoilSmallAnimator(Landroid/content/Context;)Landroid/animation/StateListAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mEditButton:Lcom/android/systemui/qs/buttons/QSEditButton;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/util/RecoilEffectUtil;->getSecRecoilSmallAnimator(Landroid/content/Context;)Landroid/animation/StateListAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mPowerButton:Lcom/android/systemui/qs/buttons/QSPowerButton;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/util/RecoilEffectUtil;->getSecRecoilSmallAnimator(Landroid/content/Context;)Landroid/animation/StateListAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSButtonsContainer;->mSettingsButton:Lcom/android/systemui/qs/buttons/QSSettingsButton;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/util/RecoilEffectUtil;->getSecRecoilSmallAnimator(Landroid/content/Context;)Landroid/animation/StateListAnimator;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    return-void
.end method

.method public final updateButtonsContainerWidth()V
    .locals 4

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    iget-object v0, v0, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v0}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->getQQSPanelSidePadding(Landroid/content/Context;)I

    move-result v0

    sget-boolean v2, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    if-eqz v2, :cond_0

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getPanelSidePadding(Landroid/content/Context;)I

    move-result v0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    sget-object v3, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v3, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v3, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    iget-object v1, v1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->getButtonsWidth(Landroid/content/Context;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v1, v0

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
