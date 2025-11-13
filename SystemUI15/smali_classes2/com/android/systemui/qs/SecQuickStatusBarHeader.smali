.class public Lcom/android/systemui/qs/SecQuickStatusBarHeader;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mClockView:Lcom/android/systemui/statusbar/policy/QSClockHeaderView;

.field public mCutOutHeight:I

.field public mDateButtonContainer:Landroid/view/View;

.field public mDateView:Landroid/widget/TextView;

.field public mExpanded:Z

.field public mHeaderQsPanel:Lcom/android/systemui/qs/SecQuickQSPanel;

.field public final mLogBuilder:Ljava/lang/StringBuilder;

.field public mNavBarHeight:I

.field public mPrivacyChip:Landroid/view/View;

.field public mQsDisabled:Z

.field public final mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

.field public mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mCutOutHeight:I

    iput p2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mNavBarHeight:I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mLogBuilder:Ljava/lang/StringBuilder;

    sget-object p2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-virtual {p2, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iput-object p2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    new-instance p0, Lcom/android/systemui/DualToneHandler;

    new-instance p2, Landroid/view/ContextThemeWrapper;

    const v0, 0x7f140616

    invoke-direct {p2, p1, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, p2}, Lcom/android/systemui/DualToneHandler;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getNavBarHeight(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v0

    sub-int/2addr v3, v0

    if-gez v3, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mCutOutHeight:I

    if-ne v0, v2, :cond_2

    iget v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mNavBarHeight:I

    if-eq v1, v0, :cond_3

    :cond_2
    iput v1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mNavBarHeight:I

    iput v2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mCutOutHeight:I

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->updateContentsPadding()V

    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->updateContentsPadding()V

    return-void
.end method

.method public final onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a0990

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mDateButtonContainer:Landroid/view/View;

    const v0, 0x7f0a0993

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/SecQuickQSPanel;

    iput-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/SecQuickQSPanel;

    const v0, 0x7f0a04db

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/QSClockHeaderView;

    iput-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mClockView:Lcom/android/systemui/statusbar/policy/QSClockHeaderView;

    const v0, 0x7f0a04dc

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mDateView:Landroid/widget/TextView;

    const v0, 0x7f0a04d8

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mView:Landroid/view/View;

    const v0, 0x7f0a091f

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mPrivacyChip:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/SecQuickQSPanel;

    if-eqz v0, :cond_0

    const/high16 v1, 0x40000

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setDescendantFocusability(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/SecQuickQSPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mClockView:Lcom/android/systemui/statusbar/policy/QSClockHeaderView;

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const v2, 0x7f0605cb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mDateView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->updateContentsPadding()V

    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mLogBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mLogBuilder:Ljava/lang/StringBuilder;

    const-string v1, "mExpanded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mExpanded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final updateContentsPadding()V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mDateButtonContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v2, v2, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v2}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->getDateButtonContainerTopMargin(Landroid/content/Context;)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07105b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object v2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mDateButtonContainer:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v1, v1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->getDateButtonContainerPadding(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v2, v2, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v2}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->getNotificationSidePadding(Landroid/content/Context;Z)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mDateButtonContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mDateButtonContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget-object p0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method
