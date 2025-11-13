.class public final Lcom/android/systemui/volume/VolumeDialogComponent;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/volume/VolumeComponent;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Lcom/android/systemui/volume/VolumeDialogControllerImpl$UserActivityListener;


# static fields
.field public static final ZEN_PRIORITY_SETTINGS:Landroid/content/Intent;

.field public static final ZEN_SETTINGS:Landroid/content/Intent;


# instance fields
.field public final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final mConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

.field public final mContext:Landroid/content/Context;

.field public final mController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

.field public mDialog:Lcom/android/systemui/plugins/VolumeDialog;

.field public final mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field public final mSamsungVolumeDialog:Lcom/android/systemui/volume/SamsungVolumeDialogImpl;

.field public final mVolumeDialogCallback:Lcom/android/systemui/volume/VolumeDialogComponent$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ZEN_MODE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/volume/VolumeDialogComponent;->ZEN_SETTINGS:Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ZEN_MODE_PRIORITY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/volume/VolumeDialogComponent;->ZEN_PRIORITY_SETTINGS:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/volume/VolumeDialogControllerImpl;Lcom/android/systemui/demomode/DemoModeController;Lcom/android/systemui/plugins/PluginDependencyProvider;Lcom/android/systemui/statusbar/policy/ExtensionController;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/plugins/VolumeDialog;Lcom/android/systemui/volume/SamsungVolumeDialogImpl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p8, Lcom/android/settingslib/applications/InterestingConfigChanges;

    const v0, -0x3ffffdfc    # -2.000123f

    invoke-direct {p8, v0}, Lcom/android/settingslib/applications/InterestingConfigChanges;-><init>(I)V

    iput-object p8, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    new-instance p8, Lcom/android/systemui/volume/VolumeDialogComponent$1;

    invoke-direct {p8, p0}, Lcom/android/systemui/volume/VolumeDialogComponent$1;-><init>(Lcom/android/systemui/volume/VolumeDialogComponent;)V

    iput-object p8, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mVolumeDialogCallback:Lcom/android/systemui/volume/VolumeDialogComponent$1;

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iput-object p3, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iput-object p4, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    monitor-enter p4

    :try_start_0
    iput-object p0, p4, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mUserActivityListener:Lcom/android/systemui/volume/VolumeDialogControllerImpl$UserActivityListener;

    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object p10, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mSamsungVolumeDialog:Lcom/android/systemui/volume/SamsungVolumeDialogImpl;

    const-class p2, Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-virtual {p6, p2}, Lcom/android/systemui/plugins/PluginDependencyProvider;->allowPluginDependency(Ljava/lang/Class;)V

    check-cast p7, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;

    const/4 p3, 0x0

    invoke-direct {p2, p7, p3}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;-><init>(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;I)V

    const-class p6, Lcom/android/systemui/plugins/VolumeDialog;

    invoke-virtual {p2, p6}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;->withPlugin(Ljava/lang/Class;)V

    new-instance p6, Lcom/android/systemui/volume/VolumeDialogComponent$$ExternalSyntheticLambda0;

    invoke-direct {p6, p0, p9}, Lcom/android/systemui/volume/VolumeDialogComponent$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/volume/VolumeDialogComponent;Lcom/android/systemui/plugins/VolumeDialog;)V

    iget-object p7, p2, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;->mExtension:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;

    iget-object p8, p7, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->mProducers:Ljava/util/ArrayList;

    new-instance p9, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$Default;

    invoke-direct {p9, p7, p6}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$Default;-><init>(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;Ljava/util/function/Supplier;)V

    invoke-virtual {p8, p9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p6, Lcom/android/systemui/volume/VolumeDialogComponent$$ExternalSyntheticLambda1;

    invoke-direct {p6, p0}, Lcom/android/systemui/volume/VolumeDialogComponent$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/volume/VolumeDialogComponent;)V

    iget-object p7, p2, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;->mExtension:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;

    iget-object p7, p7, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p7, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;->build()Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p6, 0x1110289

    invoke-virtual {p2, p6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p6, 0x111028a

    invoke-virtual {p1, p6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    new-instance p6, Landroid/media/VolumePolicy;

    const/16 p7, 0x190

    invoke-direct {p6, p2, p1, p3, p7}, Landroid/media/VolumePolicy;-><init>(ZZZI)V

    sget-boolean p1, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "showDndTile"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p4, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    sget-object p2, Lcom/android/systemui/qs/tiles/DndTile;->DND_SETTINGS:Landroid/content/Intent;

    const/4 p2, 0x1

    const-string p3, "DndTileVisible"

    invoke-static {p1, p3, p2}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-virtual {p5, p0}, Lcom/android/systemui/demomode/DemoModeController;->addCallback(Lcom/android/systemui/demomode/DemoMode;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public final demoCommands()Ljava/util/List;
    .locals 1

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v0, "volume"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final dispatchDemoCommand(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
