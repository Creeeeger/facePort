.class public final Lcom/android/systemui/qs/SecQuickQSPanelController;
.super Lcom/android/systemui/qs/SecQSPanelControllerBase;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mBrightnessMediaDeviceBar:Landroid/view/View;

.field public final mLastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

.field public mOrientation:I

.field public mPanelSplitEnabled:Z

.field public final mPanelSplitHelper:Lcom/android/systemui/shade/SecPanelSplitHelper;

.field public final mPanelTransitionStateListener:Lcom/android/systemui/qs/SecQuickQSPanelController$1;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/SecQuickQSPanel;Lcom/android/systemui/qs/QSHost;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/qs/QSPanelHost;Ljavax/inject/Provider;Lcom/android/systemui/qs/SecQSPanelResourcePicker;Lcom/android/systemui/media/controls/ui/view/MediaHost;Lcom/android/systemui/qs/SecQSDetailController;Lcom/android/systemui/shade/SecPanelSplitHelper;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/SecQuickQSPanel;",
            "Lcom/android/systemui/qs/QSHost;",
            "Lcom/android/internal/logging/MetricsLogger;",
            "Lcom/android/internal/logging/UiEventLogger;",
            "Lcom/android/systemui/qs/logging/QSLogger;",
            "Lcom/android/systemui/dump/DumpManager;",
            "Lcom/android/systemui/qs/QSPanelHost;",
            "Ljavax/inject/Provider;",
            "Lcom/android/systemui/qs/SecQSPanelResourcePicker;",
            "Lcom/android/systemui/media/controls/ui/view/MediaHost;",
            "Lcom/android/systemui/qs/SecQSDetailController;",
            "Lcom/android/systemui/shade/SecPanelSplitHelper;",
            ")V"
        }
    .end annotation

    move-object v12, p0

    invoke-interface/range {p8 .. p8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/systemui/qs/bar/BarController;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Lcom/android/systemui/qs/SecQSPanelControllerBase;-><init>(Lcom/android/systemui/qs/SecQSPanel;Lcom/android/systemui/qs/QSHost;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/qs/QSPanelHost;Lcom/android/systemui/qs/bar/BarController;Lcom/android/systemui/qs/SecQSPanelResourcePicker;Lcom/android/systemui/media/controls/ui/view/MediaHost;Lcom/android/systemui/qs/SecQSDetailController;)V

    new-instance v0, Lcom/android/systemui/util/ConfigurationState;

    sget-object v1, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->ORIENTATION:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    sget-object v2, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->SCREEN_HEIGHT_DP:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    sget-object v3, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->SCREEN_LAYOUT:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    sget-object v4, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->UI_MODE:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    filled-new-array {v1, v2, v3, v4}, [Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/util/ConfigurationState;-><init>(Ljava/util/List;)V

    iput-object v0, v12, Lcom/android/systemui/qs/SecQuickQSPanelController;->mLastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

    new-instance v0, Lcom/android/systemui/qs/SecQuickQSPanelController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/SecQuickQSPanelController$1;-><init>(Lcom/android/systemui/qs/SecQuickQSPanelController;)V

    iput-object v0, v12, Lcom/android/systemui/qs/SecQuickQSPanelController;->mPanelTransitionStateListener:Lcom/android/systemui/qs/SecQuickQSPanelController$1;

    invoke-static {}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled()Z

    move-result v0

    iput-boolean v0, v12, Lcom/android/systemui/qs/SecQuickQSPanelController;->mPanelSplitEnabled:Z

    invoke-interface/range {p8 .. p8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/bar/BarController;

    iget-object v1, v12, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/qs/SecQuickQSPanel;

    new-instance v2, Lcom/android/systemui/qs/SecQuickQSPanelController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/qs/SecQuickQSPanelController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/SecQuickQSPanelController;Lcom/android/systemui/qs/bar/BarController;)V

    iput-object v2, v1, Lcom/android/systemui/qs/SecQuickQSPanel;->mMeasuredHeightSupplier:Ljava/util/function/DoubleSupplier;

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, p12

    iput-object v0, v12, Lcom/android/systemui/qs/SecQuickQSPanelController;->mPanelSplitHelper:Lcom/android/systemui/shade/SecPanelSplitHelper;

    iget-object v0, v12, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mQsPanelHost:Lcom/android/systemui/qs/QSPanelHost;

    new-instance v1, Lcom/android/systemui/qs/SecQuickQSPanelController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/SecQuickQSPanelController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/SecQuickQSPanelController;)V

    iput-object v1, v0, Lcom/android/systemui/qs/QSPanelHost;->mOrientationSupplier:Ljava/util/function/IntSupplier;

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQuickQSPanelController;->updateVisibility$4()V

    return-void
.end method


# virtual methods
.method public final getOrCreateTileLayout()Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/SecHeaderTileLayout;

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/SecQuickQSPanel;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/SecHeaderTileLayout;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/systemui/qs/SecQSPanelControllerBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget-object v1, p0, Lcom/android/systemui/qs/SecQuickQSPanelController;->mLastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

    invoke-virtual {v1, p1}, Lcom/android/systemui/util/ConfigurationState;->needToUpdate(Landroid/content/res/Configuration;)Z

    move-result v2

    const-string v3, "onConfigurationChanged currentOrientation = "

    const-string v4, ", newConfig.orientation = "

    invoke-static {v0, v3, v4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mOrientation = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/systemui/qs/SecQuickQSPanelController;->mOrientation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", needToUpdate = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SecQuickQSPanelController"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v3, Lcom/android/systemui/QpRune;->QUICK_PANEL_DEBUG_LOG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "onConfigurationChanged diff = "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/android/systemui/util/ConfigurationState;->toCompareString(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/systemui/qs/SecQuickQSPanelController;->mOrientation:I

    if-eq v2, v0, :cond_2

    :cond_1
    iput v0, p0, Lcom/android/systemui/qs/SecQuickQSPanelController;->mOrientation:I

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mQsPanelHost:Lcom/android/systemui/qs/QSPanelHost;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanelHost;->setTiles()V

    invoke-virtual {v1, p1}, Lcom/android/systemui/util/ConfigurationState;->update(Landroid/content/res/Configuration;)V

    :cond_2
    return-void
.end method

.method public final onInit()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/qs/SecQSPanelControllerBase;->onInit()V

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mMediaHost:Lcom/android/systemui/media/controls/ui/view/MediaHost;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/media/controls/ui/view/MediaHost;->init(I)V

    return-void
.end method

.method public final onViewAttached()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/qs/SecQSPanelControllerBase;->onViewAttached()V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/SecQuickQSPanel;

    const v1, 0x7f0a01d0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/SecQuickQSPanelController;->mBrightnessMediaDeviceBar:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQuickQSPanelController;->updatePaddingAndMargins()V

    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickQSPanelController;->mPanelTransitionStateListener:Lcom/android/systemui/qs/SecQuickQSPanelController$1;

    iget-object v1, p0, Lcom/android/systemui/qs/SecQuickQSPanelController;->mPanelSplitHelper:Lcom/android/systemui/shade/SecPanelSplitHelper;

    invoke-virtual {v1, v0}, Lcom/android/systemui/shade/SecPanelSplitHelper;->addListener(Lcom/android/systemui/shade/PanelTransitionStateListener;)V

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/qs/SecQuickQSPanelController;->mOrientation:I

    return-void
.end method

.method public final onViewDetached()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/qs/SecQSPanelControllerBase;->onViewDetached()V

    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickQSPanelController;->mPanelTransitionStateListener:Lcom/android/systemui/qs/SecQuickQSPanelController$1;

    iget-object p0, p0, Lcom/android/systemui/qs/SecQuickQSPanelController;->mPanelSplitHelper:Lcom/android/systemui/shade/SecPanelSplitHelper;

    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/SecPanelSplitHelper;->removeListener(Lcom/android/systemui/shade/PanelTransitionStateListener;)V

    return-void
.end method

.method public final setExpanded(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/qs/SecQSPanelControllerBase;->setExpanded(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQuickQSPanelController;->updateVisibility$4()V

    return-void
.end method

.method public final updatePaddingAndMargins()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v2, v1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v2}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->getQQSPanelSidePadding(Landroid/content/Context;)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v3, Lcom/android/systemui/qs/SecQuickQSPanel;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v4, v2, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iget-object v1, v1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->getQQSPanelStartEndPadding(ILandroid/content/Context;)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mTileLayout:Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->getQuickSettingExtraSidePadding(Landroid/content/Context;)I

    move-result v0

    sub-int v0, v2, v0

    iget-object v1, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mTileLayout:Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;

    check-cast v1, Lcom/android/systemui/qs/SecHeaderTileLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    invoke-virtual {v1, v0, v3, v0, v5}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickQSPanelController;->mBrightnessMediaDeviceBar:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget-object p0, p0, Lcom/android/systemui/qs/SecQuickQSPanelController;->mBrightnessMediaDeviceBar:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    invoke-virtual {v0, v2, v1, v2, p0}, Landroid/view/View;->setPadding(IIII)V

    :cond_2
    return-void
.end method

.method public final updatePanelContents()V
    .locals 2

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/qs/SecQuickQSPanel;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const-string v1, "qqs_expand_anim"

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mTileLayout:Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/qs/SecQuickQSPanel;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSPanelControllerBase;->addBarItems()V

    return-void
.end method

.method public final updateVisibility$4()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/SecQuickQSPanelController;->mPanelSplitEnabled:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/SecQuickQSPanel;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/SecQuickQSPanel;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/SecQuickQSPanel;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/SecQuickQSPanel;->setVisibility(I)V

    :goto_0
    return-void
.end method
