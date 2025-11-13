.class public final Lcom/android/systemui/qs/customize/SecQSSettingEditResources;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final REMOVE_ICON_ID:I


# instance fields
.field public final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final bgExecutor:Ljava/util/concurrent/Executor;

.field public final context:Landroid/content/Context;

.field public final editor:Landroid/content/SharedPreferences$Editor;

.field public isCurrentTopEdit:Z

.field public final mainExecutor:Ljava/util/concurrent/Executor;

.field public final resourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

.field private final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public tileFullAdapter:Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;

.field public final tileHost:Lcom/android/systemui/qs/QSTileHost;

.field public tileTopAdapter:Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/customize/SecQSSettingEditResources$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/customize/SecQSSettingEditResources$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    sput v0, Lcom/android/systemui/qs/customize/SecQSSettingEditResources;->REMOVE_ICON_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/SecQSPanelResourcePicker;Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSSettingEditResources;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/qs/customize/SecQSSettingEditResources;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iput-object p3, p0, Lcom/android/systemui/qs/customize/SecQSSettingEditResources;->resourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iput-object p4, p0, Lcom/android/systemui/qs/customize/SecQSSettingEditResources;->tileHost:Lcom/android/systemui/qs/QSTileHost;

    iput-object p5, p0, Lcom/android/systemui/qs/customize/SecQSSettingEditResources;->userTracker:Lcom/android/systemui/settings/UserTracker;

    iput-object p6, p0, Lcom/android/systemui/qs/customize/SecQSSettingEditResources;->mainExecutor:Ljava/util/concurrent/Executor;

    iput-object p7, p0, Lcom/android/systemui/qs/customize/SecQSSettingEditResources;->bgExecutor:Ljava/util/concurrent/Executor;

    iput-object p8, p0, Lcom/android/systemui/qs/customize/SecQSSettingEditResources;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    const-string p2, "quick_pref"

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSSettingEditResources;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p8}, Lcom/android/systemui/util/SettingsHelper;->isPanelSplit()Z

    move-result p2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const-string/jumbo p2, "view separately"

    goto :goto_0

    :cond_0
    const-string/jumbo p2, "view all"

    :goto_0
    const-string p3, "QPPS1026"

    invoke-interface {p1, p3, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    const-string p1, "brightness_on_top"

    invoke-virtual {p9, p1}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    const-string p3, "QPPS1023"

    invoke-virtual {p0, p3, p1}, Lcom/android/systemui/qs/customize/SecQSSettingEditResources;->updateSALog(Ljava/lang/String;Z)V

    const-string p1, "qspanel_media_quickcontrol_bar_available"

    invoke-virtual {p9, p1}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    const-string p3, "QPPS1024"

    invoke-virtual {p0, p3, p1}, Lcom/android/systemui/qs/customize/SecQSSettingEditResources;->updateSALog(Ljava/lang/String;Z)V

    const-string p1, "multi_sim_bar_show_on_qspanel"

    invoke-virtual {p9, p1}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    const-string p2, "QPPS1025"

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/qs/customize/SecQSSettingEditResources;->updateSALog(Ljava/lang/String;Z)V

    invoke-virtual {p8}, Lcom/android/systemui/util/SettingsHelper;->isPanelSplitReversed()Z

    move-result p1

    const-string p2, "QPPS1027"

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/qs/customize/SecQSSettingEditResources;->updateSALog(Ljava/lang/String;Z)V

    invoke-virtual {p10}, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;->sendOrderStatusLog()V

    invoke-virtual {p10}, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;->sendCollapsedRowStatusLog()V

    return-void
.end method


# virtual methods
.method public final getPanelColumns()I
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSSettingEditResources;->resourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v1, v0, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->qsPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, v1, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mTileLayout:Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;

    instance-of v4, v1, Lcom/android/systemui/qs/SecTileChunkLayout;

    if-eqz v4, :cond_1

    check-cast v1, Lcom/android/systemui/qs/SecTileChunkLayout;

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_2

    iget v3, v1, Lcom/android/systemui/qs/SecTileChunkLayout;->columns:I

    :cond_2
    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-ltz v3, :cond_3

    move-object v2, v1

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_2

    :cond_4
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSSettingEditResources;->context:Landroid/content/Context;

    iget-object v0, v0, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v0}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->getQsTileColumn(Landroid/content/Context;)I

    move-result p0

    :goto_2
    return p0
.end method

.method public final isPhoneLandscape()Z
    .locals 3

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    const/16 v2, 0xd5

    if-le v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSSettingEditResources;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public final updateSALog(Ljava/lang/String;Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSSettingEditResources;->editor:Landroid/content/SharedPreferences$Editor;

    if-eqz p0, :cond_1

    if-eqz p2, :cond_0

    const-string p2, "1"

    goto :goto_0

    :cond_0
    const-string p2, "0"

    :goto_0
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-void
.end method
