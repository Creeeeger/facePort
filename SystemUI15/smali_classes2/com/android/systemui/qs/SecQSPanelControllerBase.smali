.class public abstract Lcom/android/systemui/qs/SecQSPanelControllerBase;
.super Lcom/android/systemui/util/ViewController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public mCollapseExpandAction:Ljava/lang/Runnable;

.field public final mDetailController:Lcom/android/systemui/qs/SecQSDetailController;

.field public final mDumpManager:Lcom/android/systemui/dump/DumpManager;

.field public mExpandSettingsPanel:Z

.field public mExpanded:Z

.field public final mHost:Lcom/android/systemui/qs/QSHost;

.field public final mLastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

.field public mListening:Z

.field public final mMediaHost:Lcom/android/systemui/media/controls/ui/view/MediaHost;

.field public final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field protected final mOnConfigurationChangedListener:Lcom/android/systemui/qs/SecQSPanel$OnConfigurationChangedListener;

.field public mOrientation:I

.field public final mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

.field public final mQsPanelHost:Lcom/android/systemui/qs/QSPanelHost;

.field public final mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

.field public mTileLayout:Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public static $r8$lambda$1i4lGWbt4JPhc9SgoAITwPQZoew(Lcom/android/systemui/qs/SecQSPanelControllerBase;Lcom/android/systemui/qs/bar/BarItemImpl;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/bar/BarItemImpl;->inflateViews(Landroid/view/ViewGroup;)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mQsPanelHost:Lcom/android/systemui/qs/QSPanelHost;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanelHost;->isHeader()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p1, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/qs/SecQSPanelControllerBase;->switchToParent(Landroid/view/View;Landroid/view/ViewGroup;)V

    :goto_1
    instance-of v1, p1, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;

    if-eqz v1, :cond_3

    check-cast p1, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mTileLayout:Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;

    check-cast p0, Lcom/android/systemui/qs/SecTileChunkLayout;

    iget-object v1, p1, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mTileLayoutContainer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    iput-object p0, p1, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mTileLayout:Lcom/android/systemui/qs/SecTileChunkLayout;

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object p0, p1, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mTileLayoutContainer:Landroid/view/ViewGroup;

    iget-object v1, p1, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mTileLayout:Lcom/android/systemui/qs/SecTileChunkLayout;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_2
    iput-object v0, p1, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mPanelHost:Lcom/android/systemui/qs/QSPanelHost;

    iget-object p0, v0, Lcom/android/systemui/qs/QSPanelHost;->mCallbacks:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mTilesChangedCallback:Lcom/android/systemui/qs/bar/TileChunkLayoutBar$$ExternalSyntheticLambda0;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public static $r8$lambda$DEp4l-o7MDBmfDD2MwoTLB3AMIw(Lcom/android/systemui/qs/SecQSPanelControllerBase;Lcom/android/systemui/qs/bar/BarItemImpl;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/SecQSPanel;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHandler()Landroid/os/Handler;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/qs/SecQSPanelControllerBase$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1}, Lcom/android/systemui/qs/SecQSPanelControllerBase$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/qs/bar/BarItemImpl;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/SecQSPanel;Lcom/android/systemui/qs/QSHost;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/qs/QSPanelHost;Lcom/android/systemui/qs/bar/BarController;Lcom/android/systemui/qs/SecQSPanelResourcePicker;Lcom/android/systemui/media/controls/ui/view/MediaHost;Lcom/android/systemui/qs/SecQSDetailController;)V
    .locals 9
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
            "Lcom/android/systemui/qs/bar/BarController;",
            "Lcom/android/systemui/qs/SecQSPanelResourcePicker;",
            "Lcom/android/systemui/media/controls/ui/view/MediaHost;",
            "Lcom/android/systemui/qs/SecQSDetailController;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p11

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    new-instance v3, Lcom/android/systemui/util/ConfigurationState;

    sget-object v4, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->ASSET_SEQ:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    sget-object v5, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->ORIENTATION:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    sget-object v6, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->THEME_SEQ:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    sget-object v7, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->UI_MODE:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    sget-object v8, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->SCREEN_LAYOUT:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    filled-new-array {v4, v5, v6, v7, v8}, [Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/systemui/util/ConfigurationState;-><init>(Ljava/util/List;)V

    iput-object v3, v0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mLastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

    new-instance v3, Lcom/android/systemui/qs/SecQSPanelControllerBase$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/SecQSPanelControllerBase$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/SecQSPanelControllerBase;)V

    iput-object v3, v0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mOnConfigurationChangedListener:Lcom/android/systemui/qs/SecQSPanel$OnConfigurationChangedListener;

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mExpandSettingsPanel:Z

    move-object v3, p2

    iput-object v3, v0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mHost:Lcom/android/systemui/qs/QSHost;

    move-object v3, p3

    iput-object v3, v0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    move-object v3, p4

    iput-object v3, v0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    move-object v3, p5

    iput-object v3, v0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    move-object v3, p6

    iput-object v3, v0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    iput-object v1, v0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mQsPanelHost:Lcom/android/systemui/qs/QSPanelHost;

    invoke-static/range {p11 .. p11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/qs/SecQSPanelControllerBase$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Lcom/android/systemui/qs/SecQSPanelControllerBase$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/SecQSDetailController;)V

    iput-object v3, v1, Lcom/android/systemui/qs/QSPanelHost;->mTileCallbackFunction:Ljava/util/function/Function;

    move-object/from16 v3, p8

    iput-object v3, v1, Lcom/android/systemui/qs/QSPanelHost;->mBarController:Lcom/android/systemui/qs/bar/BarController;

    move-object/from16 v1, p9

    iput-object v1, v0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    move-object/from16 v1, p10

    iput-object v1, v0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mMediaHost:Lcom/android/systemui/media/controls/ui/view/MediaHost;

    iput-object v2, v0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mDetailController:Lcom/android/systemui/qs/SecQSDetailController;

    return-void
.end method

.method private switchToParent(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public addBarItems()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mQsPanelHost:Lcom/android/systemui/qs/QSPanelHost;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanelHost;->getBarItems()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/android/systemui/qs/SecQSPanelControllerBase$$ExternalSyntheticLambda2;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/qs/SecQSPanelControllerBase$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/qs/SecQSPanelControllerBase;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mQsPanelHost:Lcom/android/systemui/qs/QSPanelHost;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "QSPanelHost:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  Tile records:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/systemui/qs/QSPanelHost;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda1;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda14;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, p2}, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda14;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    sget-boolean p2, Lcom/android/systemui/QpRune;->QUICK_PANEL_DEBUG_LOG:Z

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/SecQSPanel;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p0

    const-string p2, "SecQSPanelControllerBase"

    invoke-virtual {p0, p2, p1}, Landroid/view/ViewRootImpl;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_0
    return-void
.end method

.method public final flipPageWithTile(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mTileLayout:Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    instance-of v0, v0, Lcom/android/systemui/qs/SecTileChunkLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mQsPanelHost:Lcom/android/systemui/qs/QSPanelHost;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanelHost;->getBarItems()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/SecQSPanelControllerBase$$ExternalSyntheticLambda2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/qs/SecQSPanelControllerBase$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/qs/SecQSPanelControllerBase;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mTileLayout:Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;

    instance-of v0, v0, Lcom/android/systemui/qs/SecTileChunkLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/SecQSPanel;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/SecQSPanelControllerBase$$ExternalSyntheticLambda3;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/qs/SecQSPanelControllerBase$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/qs/SecQSPanelControllerBase;Ljava/lang/String;I)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/SecQSPanel;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/SecQSPanelControllerBase$$ExternalSyntheticLambda3;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/qs/SecQSPanelControllerBase$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/qs/SecQSPanelControllerBase;Ljava/lang/String;I)V

    const-wide/16 p0, 0x2bc

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method public getOrCreateTileLayout()Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mTileLayout:Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/SecQSPanel;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    const v3, 0x7f0d0304

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mTileLayout:Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;

    iget-object v1, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;->setLogger(Lcom/android/systemui/qs/logging/QSLogger;)V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mTileLayout:Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;

    return-object p0
.end method

.method public final getView()Lcom/android/systemui/qs/SecQSPanel;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/SecQSPanel;

    return-object p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/SecQSPanel;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget-object v1, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mLastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

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

    iget v4, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mOrientation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", needToUpdate = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SecQSPanelControllerBase"

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

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "onConfigurationChanged view.config = "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v5, Lcom/android/systemui/qs/SecQSPanel;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", appContext.config = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v5, Lcom/android/systemui/qs/SecQSPanel;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mOrientation:I

    if-eq v2, v0, :cond_3

    :cond_1
    iput v0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mOrientation:I

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mTileLayout:Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;->updateResources()Z

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSPanelControllerBase;->updatePaddingAndMargins()V

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSPanelControllerBase;->updatePaddingAndMargins()V

    invoke-virtual {v1, p1}, Lcom/android/systemui/util/ConfigurationState;->update(Landroid/content/res/Configuration;)V

    :cond_3
    return-void
.end method

.method public onInit()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSPanelControllerBase;->getOrCreateTileLayout()Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mTileLayout:Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;

    iget-object v1, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mQsPanelHost:Lcom/android/systemui/qs/QSPanelHost;

    iput-object v0, v1, Lcom/android/systemui/qs/QSPanelHost;->mTileLayout:Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;

    iget-boolean v0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mListening:Z

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/qs/SecQSPanel;

    invoke-virtual {v1}, Lcom/android/systemui/qs/SecQSPanel;->getDumpableTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/systemui/qs/logging/QSLogger;->logAllTilesChangeListening(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public onViewAttached()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mTileLayout:Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;->updateResources()Z

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSPanelControllerBase;->updatePaddingAndMargins()V

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSPanelControllerBase;->updatePaddingAndMargins()V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/SecQSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mOnConfigurationChangedListener:Lcom/android/systemui/qs/SecQSPanel$OnConfigurationChangedListener;

    iget-object v0, v0, Lcom/android/systemui/qs/SecQSPanel;->mOnConfigurationChangedListeners:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mQsPanelHost:Lcom/android/systemui/qs/QSPanelHost;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanelHost;->setTiles()V

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/util/QsResetSettingsManager;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/QsResetSettingsManager;

    iget-object v3, v0, Lcom/android/systemui/qs/QSPanelHost;->mResetSettingsApplier:Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda15;

    invoke-virtual {v1, v3}, Lcom/android/systemui/util/QsResetSettingsManager;->registerApplier(Lcom/android/systemui/util/QsResetSettingsManager$ResetSettingsApplier;)V

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/QsResetSettingsManager;

    iget-object v0, v0, Lcom/android/systemui/qs/QSPanelHost;->mDemoResetSettingsApplier:Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda16;

    invoke-virtual {v1, v0}, Lcom/android/systemui/util/QsResetSettingsManager;->registerDemoApplier(Lcom/android/systemui/util/QsResetSettingsManager$DemoResetSettingsApplier;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSPanelControllerBase;->updatePanelContents()V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/SecQSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/SecQSPanel;->getDumpableTag()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v0, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable$default(Lcom/android/systemui/dump/DumpManager;Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    return-void
.end method

.method public onViewDetached()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/SecQSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mOnConfigurationChangedListener:Lcom/android/systemui/qs/SecQSPanel$OnConfigurationChangedListener;

    iget-object v0, v0, Lcom/android/systemui/qs/SecQSPanel;->mOnConfigurationChangedListeners:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mQsPanelHost:Lcom/android/systemui/qs/QSPanelHost;

    iget-object v1, v0, Lcom/android/systemui/qs/QSPanelHost;->mRecords:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda5;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda5;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    iget-object v1, v0, Lcom/android/systemui/qs/QSPanelHost;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanelHost;->isHeader()Z

    move-result v1

    iget-object v2, v0, Lcom/android/systemui/qs/QSPanelHost;->mQsHost:Lcom/android/systemui/qs/QSHost;

    if-eqz v1, :cond_0

    invoke-interface {v2}, Lcom/android/systemui/qs/QSHost;->getQQSTileHost()Lcom/android/systemui/qs/SecQQSTileHost;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/qs/SecQQSTileHost;->mCallbacks:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v2, v0}, Lcom/android/systemui/qs/QSHost;->removeCallback(Lcom/android/systemui/qs/QSHost$Callback;)V

    :goto_0
    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/util/QsResetSettingsManager;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/QsResetSettingsManager;

    iget-object v3, v0, Lcom/android/systemui/qs/QSPanelHost;->mResetSettingsApplier:Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda15;

    invoke-virtual {v1, v3}, Lcom/android/systemui/util/QsResetSettingsManager;->unregisterApplier(Lcom/android/systemui/util/QsResetSettingsManager$ResetSettingsApplier;)V

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/QsResetSettingsManager;

    iget-object v0, v0, Lcom/android/systemui/qs/QSPanelHost;->mDemoResetSettingsApplier:Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda16;

    invoke-virtual {v1, v0}, Lcom/android/systemui/util/QsResetSettingsManager;->unregisterDemoApplier(Lcom/android/systemui/util/QsResetSettingsManager$DemoResetSettingsApplier;)V

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mTileLayout:Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;->setListening(ZLcom/android/internal/logging/UiEventLogger;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/SecQSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/SecQSPanel;->getDumpableTag()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    invoke-virtual {p0, v0}, Lcom/android/systemui/dump/DumpManager;->unregisterDumpable(Ljava/lang/String;)V

    return-void
.end method

.method public final refreshAllTiles()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mQsPanelHost:Lcom/android/systemui/qs/QSPanelHost;

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelHost;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda6;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda6;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda5;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda5;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final setCollapseExpandAction(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mCollapseExpandAction:Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/SecQSPanel;

    iput-object p1, p0, Lcom/android/systemui/qs/SecQSPanel;->mCollapseExpandAction:Ljava/lang/Runnable;

    return-void
.end method

.method public setExpanded(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mExpanded:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mExpanded:Z

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/SecQSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/SecQSPanel;->getDumpableTag()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    invoke-virtual {v1, v0, p1}, Lcom/android/systemui/qs/logging/QSLogger;->logPanelExpanded(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v1, 0x6f

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/logging/MetricsLogger;->visibility(IZ)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/SecQSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/SecQSPanel;->openPanelEvent()Lcom/android/systemui/qs/QSEvent;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mQsPanelHost:Lcom/android/systemui/qs/QSPanelHost;

    iget-object p1, p0, Lcom/android/systemui/qs/QSPanelHost;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda6;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda6;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda6;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda6;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelHost;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda0;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/SecQSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/SecQSPanel;->closePanelEvent()Lcom/android/systemui/qs/QSEvent;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mDetailController:Lcom/android/systemui/qs/SecQSDetailController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSDetailController;->closeDetail()V

    :goto_0
    return-void
.end method

.method public final setListening(Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mListening:Z

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mTileLayout:Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/SecQSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/SecQSPanel;->getDumpableTag()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mQsPanelHost:Lcom/android/systemui/qs/QSPanelHost;

    iget-object v1, v1, Lcom/android/systemui/qs/QSPanelHost;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda6;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda6;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    const-string v2, ","

    invoke-static {v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    invoke-virtual {v2, v0, v1, p1}, Lcom/android/systemui/qs/logging/QSLogger;->logAllTilesChangeListening(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mTileLayout:Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;

    iget-object v1, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-interface {v0, p1, v1}, Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;->setListening(ZLcom/android/internal/logging/UiEventLogger;)V

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSPanelControllerBase;->refreshAllTiles()V

    :cond_2
    return-void
.end method

.method public updatePaddingAndMargins()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getPanelSidePadding(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/qs/SecQSPanel;

    check-cast v1, Lcom/android/systemui/qs/SecQSPanel;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/SecQSPanel;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result p0

    invoke-virtual {v2, v0, v1, v0, p0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-void
.end method

.method public updatePanelContents()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSPanelControllerBase;->addBarItems()V

    return-void
.end method
