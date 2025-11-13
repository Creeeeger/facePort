.class public final synthetic Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda28;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/shade/NotificationPanelViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda28;->f$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 6

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda28;->f$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result p1

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v0

    or-int/2addr p1, v0

    invoke-virtual {p2, p1}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object p1

    iget v0, p1, Landroid/graphics/Insets;->top:I

    iput v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDisplayTopInset:I

    iget v0, p1, Landroid/graphics/Insets;->right:I

    iput v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDisplayRightInset:I

    iget p1, p1, Landroid/graphics/Insets;->left:I

    iput p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDisplayLeftInset:I

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    iput p1, v1, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mDisplayLeftInset:I

    iput v0, v1, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mDisplayRightInset:I

    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSecNotificationPanelViewController:Lcom/android/systemui/shade/SecNotificationPanelViewController;

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNavigationBarBottomHeight:I

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateMaxHeadsUpTranslation()V

    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDisplayTopInset:I

    iget v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNavigationBarBottomHeight:I

    iget-object v3, p1, Lcom/android/systemui/shade/SecNotificationPanelViewController;->resourcePicker$delegate:Lkotlin/Lazy;

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v4, v3, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v4}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->isPortrait(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    iput v1, v4, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->cutoutHeight:I

    goto :goto_1

    :cond_2
    iput v1, v4, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->cutoutHeightLandscape:I

    :goto_1
    iget-object v3, v3, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v3}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput v2, v3, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->navBarHeight:I

    goto :goto_2

    :cond_3
    iput v2, v3, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->navBarHeightLandscape:I

    :goto_2
    iget-object v0, p1, Lcom/android/systemui/shade/SecNotificationPanelViewController;->secQuickSettingsControllerImpl:Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;

    if-eqz v0, :cond_6

    iget v3, v0, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->lastDisplayTopInset:I

    if-ne v1, v3, :cond_4

    iget v3, v0, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->lastNavigationBarBottomHeight:I

    if-ne v2, v3, :cond_4

    goto :goto_3

    :cond_4
    iput v1, v0, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->lastDisplayTopInset:I

    iput v2, v0, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->lastNavigationBarBottomHeight:I

    invoke-virtual {v0}, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->getQsPanelController()Lcom/android/systemui/qs/SecQSPanelController;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, v0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mTileLayout:Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;

    if-nez v1, :cond_5

    goto :goto_3

    :cond_5
    invoke-interface {v1}, Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;->updateResources()Z

    invoke-virtual {v0}, Lcom/android/systemui/qs/SecQSPanelControllerBase;->updatePaddingAndMargins()V

    :cond_6
    :goto_3
    iget-object v0, p1, Lcom/android/systemui/shade/SecNotificationPanelViewController;->notificationsQSContainerController:Lcom/android/systemui/shade/NotificationsQSContainerController;

    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationsQSContainerController;->updateConstraints$1()V

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemGestures()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    iget-object p1, p1, Lcom/android/systemui/shade/SecNotificationPanelViewController;->panelSplitHelper:Lcom/android/systemui/shade/SecPanelSplitHelper;

    if-nez p1, :cond_7

    goto :goto_4

    :cond_7
    iget-object p1, p1, Lcom/android/systemui/shade/SecPanelSplitHelper;->panelSlideEventHandler:Lcom/android/systemui/shade/PanelSlideEventHandler;

    iput-object v0, p1, Lcom/android/systemui/shade/PanelSlideEventHandler;->gestureInsets:Landroid/graphics/Insets;

    :cond_8
    :goto_4
    sget-boolean p1, Lcom/android/systemui/QpRune;->QUICK_DATA_USAGE_LABEL:Z

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDataUsageLabelManagerLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;

    iget p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNavigationBarBottomHeight:I

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->updateNavBarHeight(I)V

    :cond_9
    return-object p2
.end method
