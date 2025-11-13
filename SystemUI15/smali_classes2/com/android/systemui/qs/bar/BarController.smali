.class public final Lcom/android/systemui/qs/bar/BarController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/logging/PanelScreenShotLogger$LogProvider;
.implements Lcom/android/systemui/shade/PanelTransitionStateListener;


# instance fields
.field public final mAllBarItems:Ljava/util/ArrayList;

.field public final mBGColorHelper:Lcom/android/systemui/qs/bar/ColoredBGHelper;

.field public final mBarBackUpRestoreHelper:Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper;

.field public mBarListener:Lcom/android/systemui/qs/bar/BarController$3;

.field public final mBarOrderInteractor:Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;

.field public final mCollapsedBarItems:Ljava/util/ArrayList;

.field public final mContext:Landroid/content/Context;

.field public mDisplayCutoutTopInset:I

.field public final mExpandedBarItems:Ljava/util/ArrayList;

.field public final mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

.field public final mKnoxStateMonitorCallback:Lcom/android/systemui/qs/bar/BarController$1;

.field public mNavBarHeight:I

.field public final mOnConfigurationChangedListener:Lcom/android/systemui/qs/bar/BarController$2;

.field public mOrientation:I

.field public mQSLastExpansionInitializer:Ljava/lang/Runnable;

.field public mQsPanel:Lcom/android/systemui/qs/SecQSPanel;

.field public final mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public mThemeSeq:I

.field public mUiMode:I

.field public mUpdateAnimatorsRunner:Ljava/lang/Runnable;


# direct methods
.method public static -$$Nest$mlogForOpenTheme(Lcom/android/systemui/qs/bar/BarController;Landroid/content/Context;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<QUICK_OPENTHEME is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->getActiveThemePackage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BarController"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda3;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-static {p1, p0}, Lcom/android/systemui/qs/bar/BarController;->logForColors(Landroid/content/Context;Ljava/util/function/Consumer;)V

    const-string p0, ">"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/qs/bar/BarFactory;Lcom/android/systemui/qs/SecQSPanelResourcePicker;Lcom/android/systemui/knox/KnoxStateMonitor;Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;Lcom/android/systemui/qs/bar/ColoredBGHelper;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/qs/bar/BarController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/bar/BarController$1;-><init>(Lcom/android/systemui/qs/bar/BarController;)V

    iput-object v0, p0, Lcom/android/systemui/qs/bar/BarController;->mKnoxStateMonitorCallback:Lcom/android/systemui/qs/bar/BarController$1;

    new-instance v0, Lcom/android/systemui/qs/bar/BarController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/bar/BarController$2;-><init>(Lcom/android/systemui/qs/bar/BarController;)V

    iput-object v0, p0, Lcom/android/systemui/qs/bar/BarController;->mOnConfigurationChangedListener:Lcom/android/systemui/qs/bar/BarController$2;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/qs/bar/BarController;->mDisplayCutoutTopInset:I

    iput v0, p0, Lcom/android/systemui/qs/bar/BarController;->mNavBarHeight:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui/qs/bar/BarController;->mOrientation:I

    iput-object p1, p0, Lcom/android/systemui/qs/bar/BarController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/qs/bar/BarController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iput-object p7, p0, Lcom/android/systemui/qs/bar/BarController;->mBarOrderInteractor:Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;

    iput-object p6, p0, Lcom/android/systemui/qs/bar/BarController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    const-string p6, "BarController"

    invoke-virtual {p3, p6}, Lcom/android/systemui/dump/DumpManager;->unregisterDumpable(Ljava/lang/String;)V

    invoke-static {p3, p6, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable$default(Lcom/android/systemui/dump/DumpManager;Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    iput-object p5, p0, Lcom/android/systemui/qs/bar/BarController;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iput-object p8, p0, Lcom/android/systemui/qs/bar/BarController;->mBGColorHelper:Lcom/android/systemui/qs/bar/ColoredBGHelper;

    new-instance p3, Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/systemui/qs/bar/BarType;->values()[Lcom/android/systemui/qs/bar/BarType;

    move-result-object p6

    invoke-static {p6}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p6

    new-instance p8, Lcom/android/systemui/qs/bar/BarFactory$$ExternalSyntheticLambda1;

    invoke-direct {p8, v1}, Lcom/android/systemui/qs/bar/BarFactory$$ExternalSyntheticLambda1;-><init>(Z)V

    invoke-interface {p6, p8}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p6

    new-instance p8, Lcom/android/systemui/qs/bar/BarFactory$$ExternalSyntheticLambda0;

    invoke-direct {p8, p4, p5, v1}, Lcom/android/systemui/qs/bar/BarFactory$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/bar/BarFactory;Ljava/util/ArrayList;Z)V

    invoke-interface {p6, p8}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    invoke-direct {p3, p5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p3, p0, Lcom/android/systemui/qs/bar/BarController;->mCollapsedBarItems:Ljava/util/ArrayList;

    new-instance p3, Ljava/util/ArrayList;

    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/systemui/qs/bar/BarType;->values()[Lcom/android/systemui/qs/bar/BarType;

    move-result-object p6

    invoke-static {p6}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p6

    new-instance p8, Lcom/android/systemui/qs/bar/BarFactory$$ExternalSyntheticLambda1;

    invoke-direct {p8, v0}, Lcom/android/systemui/qs/bar/BarFactory$$ExternalSyntheticLambda1;-><init>(Z)V

    invoke-interface {p6, p8}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p6

    new-instance p8, Lcom/android/systemui/qs/bar/BarFactory$$ExternalSyntheticLambda0;

    invoke-direct {p8, p4, p5, v0}, Lcom/android/systemui/qs/bar/BarFactory$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/bar/BarFactory;Ljava/util/ArrayList;Z)V

    invoke-interface {p6, p8}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    invoke-direct {p3, p5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p3, p0, Lcom/android/systemui/qs/bar/BarController;->mExpandedBarItems:Ljava/util/ArrayList;

    new-instance p4, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda0;

    const/4 p5, 0x0

    invoke-direct {p4, p0, p5}, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/bar/BarController;I)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/qs/bar/BarController;->mAllBarItems:Ljava/util/ArrayList;

    iget-object p4, p0, Lcom/android/systemui/qs/bar/BarController;->mCollapsedBarItems:Ljava/util/ArrayList;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p3, p0, Lcom/android/systemui/qs/bar/BarController;->mAllBarItems:Ljava/util/ArrayList;

    iget-object p4, p0, Lcom/android/systemui/qs/bar/BarController;->mExpandedBarItems:Ljava/util/ArrayList;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance p3, Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper;

    invoke-direct {p3, p1, p2, p7}, Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper;-><init>(Landroid/content/Context;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;)V

    iput-object p3, p0, Lcom/android/systemui/qs/bar/BarController;->mBarBackUpRestoreHelper:Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper;

    return-void
.end method

.method public static logForColors(Landroid/content/Context;Ljava/util/function/Consumer;)V
    .locals 21

    const v0, 0x7f060541

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v0, 0x7f06066e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v0, 0x7f06003b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const v0, 0x7f060abc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const v0, 0x7f060ac1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const v0, 0x7f0605dc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const v0, 0x7f0605dd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const v0, 0x7f0605d6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const v0, 0x7f0605d7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const v0, 0x7f0605d0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const-string v17, "qs_tile_label"

    const-string v19, "qs_tile_container_bg"

    const-string v1, "open_theme_qp_bg_color"

    const-string/jumbo v3, "sec_panel_background_color"

    const-string v5, "animated_brightness_sun_icon_color"

    const-string/jumbo v7, "tw_progress_color_control_activated"

    const-string/jumbo v9, "tw_progress_color_control_normal"

    const-string v11, "qs_tile_round_background_off"

    const-string v13, "qs_tile_round_background_on"

    const-string v15, "qs_tile_icon_on_dim_tint_color"

    invoke-static/range {v1 .. v20}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda11;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda11;-><init>(Landroid/content/Context;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    const-string p2, "Dump Bar state =============================================== "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarController;->mAllBarItems:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda7;

    invoke-direct {v2, v0, p2}, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda7;-><init>(Ljava/lang/StringBuilder;Ljava/util/function/Consumer;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    iget-object p2, p0, Lcom/android/systemui/qs/bar/BarController;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_0

    new-instance v0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-static {p2, v0}, Lcom/android/systemui/qs/bar/BarController;->logForColors(Landroid/content/Context;Ljava/util/function/Consumer;)V

    :cond_0
    const-string p2, "============================================================== "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController;->mAllBarItems:Ljava/util/ArrayList;

    new-instance p1, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda3;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final gatherState()Ljava/util/ArrayList;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/android/systemui/logging/PanelScreenShotLogger;->INSTANCE:Lcom/android/systemui/logging/PanelScreenShotLogger;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "BarController"

    invoke-static {v1, v0}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addHeaderLine(Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance v1, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda12;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda12;-><init>(Ljava/lang/Object;I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/qs/bar/BarController;->mAllBarItems:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda7;

    invoke-direct {v4, v2, v1}, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda7;-><init>(Ljava/lang/StringBuilder;Ljava/util/function/Consumer;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_0

    new-instance v1, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda12;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda12;-><init>(Ljava/lang/Object;I)V

    invoke-static {p0, v1}, Lcom/android/systemui/qs/bar/BarController;->logForColors(Landroid/content/Context;Ljava/util/function/Consumer;)V

    :cond_0
    return-object v0
.end method

.method public final getBarInExpanded(Lcom/android/systemui/qs/bar/BarType;)Lcom/android/systemui/qs/bar/BarItemImpl;
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController;->mExpandedBarItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->parallelStream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda6;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/qs/bar/BarType;I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/bar/BarItemImpl;

    return-object p0
.end method

.method public final onPanelTransitionStateChanged(Lcom/android/systemui/shade/PanelTransitionStateChangeEvent;)V
    .locals 2

    iget p1, p1, Lcom/android/systemui/shade/PanelTransitionStateChangeEvent;->state:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController;->mExpandedBarItems:Ljava/util/ArrayList;

    new-instance p1, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda1;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda1;-><init>(ZI)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final updateBarUnderneathQqs()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarController;->mCollapsedBarItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda3;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController;->mCollapsedBarItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda3;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method
