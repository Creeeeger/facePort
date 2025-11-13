.class public final Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$Factory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

.field public final mHandler:Landroid/os/Handler;

.field public final mKeyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/keyguard/DisplayLifecycle;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/keyguard/KeyguardEditModeController;Lcom/android/systemui/lockstar/PluginLockStarManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$Factory;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p3, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$Factory;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iput-object p4, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$Factory;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iput-object p5, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$Factory;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    iput-object p6, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$Factory;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iput-object p7, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$Factory;->mKeyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    iput-object p8, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$Factory;->mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    return-void
.end method


# virtual methods
.method public final create(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;)Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;
    .locals 11

    new-instance v10, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;

    iget-object v5, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$Factory;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v6, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$Factory;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-object v7, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$Factory;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v2, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$Factory;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v4, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$Factory;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object v8, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$Factory;->mKeyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    iget-object v9, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$Factory;->mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    move-object v0, v10

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;-><init>(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;Landroid/os/Handler;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/keyguard/DisplayLifecycle;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/keyguard/KeyguardEditModeController;Lcom/android/systemui/lockstar/PluginLockStarManager;)V

    return-object v10
.end method
