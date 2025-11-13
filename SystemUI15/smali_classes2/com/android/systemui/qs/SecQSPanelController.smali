.class public final Lcom/android/systemui/qs/SecQSPanelController;
.super Lcom/android/systemui/qs/SecQSPanelControllerBase;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mBarOrderInteractor:Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;

.field public mGridContentVisible:Z

.field public final mHideRemovableTileHelper:Lcom/android/systemui/qs/SecQSPanelController$HideRemovableTileHelper;

.field public final mLastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

.field public mOrientation:I

.field public final mQSCMainViewController:Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;

.field public mSecAnimatorManager:Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/SecQSPanel;Lcom/android/systemui/qs/QSHost;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/qs/QSPanelHost;Ljavax/inject/Provider;Lcom/android/systemui/qs/SecQSPanelResourcePicker;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;Lcom/android/systemui/media/controls/ui/view/MediaHost;Lcom/android/systemui/qs/SecQSDetailController;Ldagger/Lazy;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/SecQSPanel;",
            "Lcom/android/systemui/qs/QSHost;",
            "Lcom/android/internal/logging/MetricsLogger;",
            "Lcom/android/internal/logging/UiEventLogger;",
            "Lcom/android/systemui/qs/logging/QSLogger;",
            "Lcom/android/systemui/dump/DumpManager;",
            "Lcom/android/systemui/qs/QSPanelHost;",
            "Ljavax/inject/Provider;",
            "Lcom/android/systemui/qs/SecQSPanelResourcePicker;",
            "Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;",
            "Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;",
            "Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;",
            "Lcom/android/systemui/media/controls/ui/view/MediaHost;",
            "Lcom/android/systemui/qs/SecQSDetailController;",
            "Ldagger/Lazy;",
            ")V"
        }
    .end annotation

    move-object/from16 v12, p0

    move-object/from16 v13, p7

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    invoke-interface/range {p8 .. p8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/systemui/qs/bar/BarController;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v9, p9

    move-object/from16 v10, p13

    move-object/from16 v11, p14

    invoke-direct/range {v0 .. v11}, Lcom/android/systemui/qs/SecQSPanelControllerBase;-><init>(Lcom/android/systemui/qs/SecQSPanel;Lcom/android/systemui/qs/QSHost;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/qs/QSPanelHost;Lcom/android/systemui/qs/bar/BarController;Lcom/android/systemui/qs/SecQSPanelResourcePicker;Lcom/android/systemui/media/controls/ui/view/MediaHost;Lcom/android/systemui/qs/SecQSDetailController;)V

    new-instance v0, Lcom/android/systemui/util/ConfigurationState;

    sget-object v1, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->ORIENTATION:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    sget-object v2, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->SCREEN_HEIGHT_DP:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    sget-object v3, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->DISPLAY_DEVICE_TYPE:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    sget-object v4, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->UI_MODE:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    sget-object v5, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->DENSITY_DPI:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    filled-new-array {v1, v2, v3, v4, v5}, [Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/util/ConfigurationState;-><init>(Ljava/util/List;)V

    iput-object v0, v12, Lcom/android/systemui/qs/SecQSPanelController;->mLastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

    const/4 v0, 0x1

    iput-boolean v0, v12, Lcom/android/systemui/qs/SecQSPanelController;->mGridContentVisible:Z

    new-instance v0, Lcom/android/systemui/qs/SecQSPanelController$HideRemovableTileHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v12, v1}, Lcom/android/systemui/qs/SecQSPanelController$HideRemovableTileHelper;-><init>(Lcom/android/systemui/qs/SecQSPanelController;I)V

    iput-object v0, v12, Lcom/android/systemui/qs/SecQSPanelController;->mHideRemovableTileHelper:Lcom/android/systemui/qs/SecQSPanelController$HideRemovableTileHelper;

    iput-object v14, v12, Lcom/android/systemui/qs/SecQSPanelController;->mQSCMainViewController:Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;

    iput-object v13, v14, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->panelHost:Lcom/android/systemui/qs/QSPanelHost;

    move-object/from16 v0, p9

    iget-object v0, v0, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v0}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v0

    iput-object v12, v0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->qsPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    iput-object v15, v12, Lcom/android/systemui/qs/SecQSPanelController;->mBarOrderInteractor:Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;

    iput-object v13, v15, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;->host:Lcom/android/systemui/qs/QSPanelHost;

    new-instance v0, Lcom/android/systemui/qs/SecQSPanelController$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, v15, v1}, Lcom/android/systemui/qs/SecQSPanelController$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    iput-object v0, v13, Lcom/android/systemui/qs/QSPanelHost;->resetBarSettingsRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/qs/SecQSPanelController$$ExternalSyntheticLambda1;

    const/4 v1, 0x0

    invoke-direct {v0, v12, v1}, Lcom/android/systemui/qs/SecQSPanelController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/SecQSPanelController;I)V

    iput-object v0, v13, Lcom/android/systemui/qs/QSPanelHost;->applyBarOrderRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p14

    iput-object v12, v0, Lcom/android/systemui/qs/SecQSDetailController;->panelController:Lcom/android/systemui/qs/SecQSPanelController;

    iget-object v0, v12, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mQsPanelHost:Lcom/android/systemui/qs/QSPanelHost;

    new-instance v1, Lcom/android/systemui/qs/SecQSPanelController$$ExternalSyntheticLambda2;

    invoke-direct {v1, v12}, Lcom/android/systemui/qs/SecQSPanelController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/qs/SecQSPanelController;)V

    iput-object v1, v0, Lcom/android/systemui/qs/QSPanelHost;->mOrientationSupplier:Ljava/util/function/IntSupplier;

    return-void
.end method


# virtual methods
.method public final addBarItems()V
    .locals 13

    invoke-super {p0}, Lcom/android/systemui/qs/SecQSPanelControllerBase;->addBarItems()V

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mQsPanelHost:Lcom/android/systemui/qs/QSPanelHost;

    iget-object v0, v0, Lcom/android/systemui/qs/QSPanelHost;->mTargetView:Lcom/android/systemui/qs/SecQSPanel;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSPanelController;->mBarOrderInteractor:Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;

    iget-object v1, v0, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;->landscapeBarParents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    instance-of v5, v3, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_1

    move-object v4, v3

    check-cast v4, Landroid/widget/LinearLayout;

    :cond_1
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, v0, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;->landscapeBars:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_13

    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    if-eqz v1, :cond_3

    goto/16 :goto_7

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "BarOrderInteractor"

    const-string v2, "makeLandscapeView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07062a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, v0, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;->host:Lcom/android/systemui/qs/QSPanelHost;

    if-eqz v2, :cond_14

    iget-object v3, v2, Lcom/android/systemui/qs/QSPanelHost;->mBarController:Lcom/android/systemui/qs/bar/BarController;

    sget-object v5, Lcom/android/systemui/qs/bar/BarType;->TILE_CHUNK_LAYOUT:Lcom/android/systemui/qs/bar/BarType;

    invoke-virtual {v3, v5}, Lcom/android/systemui/qs/bar/BarController;->getBarInExpanded(Lcom/android/systemui/qs/bar/BarType;)Lcom/android/systemui/qs/bar/BarItemImpl;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;

    if-eqz v3, :cond_4

    const/4 v6, 0x1

    iput v6, v3, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mCollapsedRowSettingValue:I

    :cond_4
    iget-object v3, v2, Lcom/android/systemui/qs/QSPanelHost;->mBarController:Lcom/android/systemui/qs/bar/BarController;

    invoke-virtual {v3, v5}, Lcom/android/systemui/qs/bar/BarController;->getBarInExpanded(Lcom/android/systemui/qs/bar/BarType;)Lcom/android/systemui/qs/bar/BarItemImpl;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->updateHeightMargins()V

    :cond_5
    invoke-virtual {v2}, Lcom/android/systemui/qs/QSPanelHost;->getBarItems()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_12

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x4

    if-eqz v6, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Lcom/android/systemui/qs/bar/BarItemImpl;

    if-eqz v8, :cond_7

    iget-object v9, v8, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    if-eqz v9, :cond_7

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_7

    goto :goto_2

    :cond_7
    if-eqz v8, :cond_6

    invoke-virtual {v8, p0}, Lcom/android/systemui/qs/bar/BarItemImpl;->getBarWidthWeight(Landroid/content/Context;)I

    move-result v8

    if-ne v8, v7, :cond_6

    :goto_2
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x0

    move-object v6, v4

    move v8, v5

    :cond_9
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/qs/bar/BarItemImpl;

    invoke-virtual {v9, p0}, Lcom/android/systemui/qs/bar/BarItemImpl;->getBarWidthWeight(Landroid/content/Context;)I

    move-result v10

    if-ne v10, v7, :cond_a

    iget-object v10, v0, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;->landscapeBars:Ljava/util/ArrayList;

    iget-object v9, v9, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    if-eqz v8, :cond_c

    add-int v11, v8, v10

    if-le v11, v7, :cond_b

    goto :goto_4

    :cond_b
    move-object v11, v6

    goto :goto_5

    :cond_c
    :goto_4
    new-instance v11, Landroid/widget/LinearLayout;

    invoke-direct {v11, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v11, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v12, 0x40800000    # 4.0f

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    const-string v12, "expand_anim"

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    iget-object v12, v0, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;->landscapeBarParents:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v12, v0, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;->landscapeBars:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    if-eqz v11, :cond_d

    iget-object v6, v9, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    invoke-virtual {v11, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object v6, v11

    :cond_d
    if-eqz v8, :cond_e

    add-int/2addr v8, v10

    if-le v8, v7, :cond_f

    :cond_e
    move v8, v10

    :cond_f
    iget-object v9, v9, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    instance-of v12, v11, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v12, :cond_10

    check-cast v11, Landroid/widget/LinearLayout$LayoutParams;

    goto :goto_6

    :cond_10
    move-object v11, v4

    :goto_6
    if-eqz v11, :cond_9

    if-ge v8, v7, :cond_11

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    :cond_11
    int-to-float v10, v10

    iput v10, v11, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v5, v11, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v5, v11, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v9, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    :cond_12
    iget-object p0, v0, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;->landscapeBars:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Lcom/android/systemui/qs/QSPanelHost;->setBarsToPanel(Ljava/util/List;)V

    goto :goto_8

    :cond_13
    :goto_7
    invoke-virtual {v0}, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;->applyBarOrder()V

    :cond_14
    :goto_8
    return-void
.end method

.method public final getOrCreateTileLayout()Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/SecTileChunkLayout;

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/SecQSPanel;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/SecTileChunkLayout;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final getPaddingBottom()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/SecQSPanel;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result p0

    return p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/systemui/qs/SecQSPanelControllerBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget-object v1, p0, Lcom/android/systemui/qs/SecQSPanelController;->mLastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

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

    iget v4, p0, Lcom/android/systemui/qs/SecQSPanelController;->mOrientation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", needToUpdate = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SecQSPanelController"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v2, Lcom/android/systemui/QpRune;->QUICK_PANEL_DEBUG_LOG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "onConfigurationChanged diff = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/android/systemui/util/ConfigurationState;->toCompareString(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v2, p0, Lcom/android/systemui/qs/SecQSPanelController;->mOrientation:I

    if-eq v2, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSPanelController;->addBarItems()V

    :cond_1
    invoke-virtual {v1, p1}, Lcom/android/systemui/util/ConfigurationState;->needToUpdate(Landroid/content/res/Configuration;)Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lcom/android/systemui/qs/SecQSPanelController;->mOrientation:I

    if-eq v2, v0, :cond_4

    :cond_2
    iput v0, p0, Lcom/android/systemui/qs/SecQSPanelController;->mOrientation:I

    iget-boolean v0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mListening:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSPanelControllerBase;->refreshAllTiles()V

    :cond_3
    invoke-virtual {v1, p1}, Lcom/android/systemui/util/ConfigurationState;->update(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mQsPanelHost:Lcom/android/systemui/qs/QSPanelHost;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanelHost;->setTiles()V

    :cond_4
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelController;->mSecAnimatorManager:Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final onInit()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/qs/SecQSPanelControllerBase;->onInit()V

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mMediaHost:Lcom/android/systemui/media/controls/ui/view/MediaHost;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/media/controls/ui/view/MediaHost;->init(I)V

    return-void
.end method

.method public final onViewAttached()V
    .locals 3

    invoke-super {p0}, Lcom/android/systemui/qs/SecQSPanelControllerBase;->onViewAttached()V

    iget-boolean v0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mListening:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSPanelControllerBase;->refreshAllTiles()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSPanelController;->mBarOrderInteractor:Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;

    iget-object v1, v0, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;->userTracker:Lcom/android/systemui/settings/UserTracker;

    iget-object v2, v0, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;->userChanged:Lcom/android/systemui/settings/UserTracker$Callback;

    iget-object v0, v0, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;->executor:Ljava/util/concurrent/Executor;

    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TILE_HIDE_FROM_BAR:Z

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qs/SecQSPanelController;->mHideRemovableTileHelper:Lcom/android/systemui/qs/SecQSPanelController$HideRemovableTileHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string v2, "hide_smart_view_large_tile_on_panel"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/qs/SecQSPanelController;->mOrientation:I

    return-void
.end method

.method public final onViewDetached()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/qs/SecQSPanelControllerBase;->onViewDetached()V

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSPanelController;->mBarOrderInteractor:Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;

    iget-object v1, v0, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;->userTracker:Lcom/android/systemui/settings/UserTracker;

    iget-object v0, v0, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;->userChanged:Lcom/android/systemui/settings/UserTracker$Callback;

    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v1, v0}, Lcom/android/systemui/settings/UserTrackerImpl;->removeCallback(Lcom/android/systemui/settings/UserTracker$Callback;)V

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TILE_HIDE_FROM_BAR:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelController;->mHideRemovableTileHelper:Lcom/android/systemui/qs/SecQSPanelController$HideRemovableTileHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setGridContentVisibility(Z)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/SecQSPanelController;->setVisibility(I)V

    iget-boolean v1, p0, Lcom/android/systemui/qs/SecQSPanelController;->mGridContentVisible:Z

    if-ne v1, p1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v2, 0x6f

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/logging/MetricsLogger;->visibility(II)V

    iput-boolean p1, p0, Lcom/android/systemui/qs/SecQSPanelController;->mGridContentVisible:Z

    return-void
.end method

.method public final setVisibility(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/SecQSPanel;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/SecQSPanel;->setVisibility(I)V

    return-void
.end method

.method public final showEdit()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSPanelController;->mQSCMainViewController:Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->prepareForShowing(Z)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/SecQSPanel;

    new-instance v1, Lcom/android/systemui/qs/SecQSPanelController$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/qs/SecQSPanelController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/SecQSPanelController;I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final updatePanelContents()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSPanelController;->addBarItems()V

    return-void
.end method
