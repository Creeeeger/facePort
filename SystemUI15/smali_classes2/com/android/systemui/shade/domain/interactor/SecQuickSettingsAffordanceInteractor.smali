.class public final Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final MAX_PANEL_AFFORDANCE_SHOW:I


# instance fields
.field public final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final broadcastReceiver:Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor$broadcastReceiver$1;

.field public final configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final context:Landroid/content/Context;

.field public final displayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

.field public final lockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

.field public secQuickSettingsAffordance:Lcom/android/systemui/shade/SecQuickSettingsAffordance;

.field public final statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final statusBarStateListener:Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor$statusBarStateListener$1;

.field public final transitionCallback:Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor$transitionCallback$1;

.field public final updateMonitorCallback:Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor$updateMonitorCallback$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    :goto_0
    sput v0, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;->MAX_PANEL_AFFORDANCE_SHOW:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lcom/android/systemui/keyguard/DisplayLifecycle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iput-object p3, p0, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object p4, p0, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iput-object p5, p0, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;->lockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    iput-object p6, p0, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;->displayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    new-instance p1, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor$broadcastReceiver$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor$broadcastReceiver$1;-><init>(Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;)V

    iput-object p1, p0, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;->broadcastReceiver:Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor$broadcastReceiver$1;

    new-instance p1, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor$statusBarStateListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor$statusBarStateListener$1;-><init>(Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;)V

    iput-object p1, p0, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;->statusBarStateListener:Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor$statusBarStateListener$1;

    new-instance p1, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor$updateMonitorCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor$updateMonitorCallback$1;-><init>(Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;)V

    iput-object p1, p0, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;->updateMonitorCallback:Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor$updateMonitorCallback$1;

    new-instance p1, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor$transitionCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor$transitionCallback$1;-><init>(Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;)V

    iput-object p1, p0, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;->transitionCallback:Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor$transitionCallback$1;

    return-void
.end method


# virtual methods
.method public final hideEffect()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;->secQuickSettingsAffordance:Lcom/android/systemui/shade/SecQuickSettingsAffordance;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/Prefs;->get(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "PanelAffordanceCount"

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    sget v1, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;->MAX_PANEL_AFFORDANCE_SHOW:I

    if-ge p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->isRemoveView:Z

    :goto_0
    iget-boolean p0, v0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->isVisibleView:Z

    if-eqz p0, :cond_1

    sget-object p0, Lcom/android/systemui/util/AnimHelper$AnimationState;->HIDING:Lcom/android/systemui/util/AnimHelper$AnimationState;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->displayEffect(Lcom/android/systemui/util/AnimHelper$AnimationState;Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public final hideEffectIfNeeded(Ljava/lang/String;Z)V
    .locals 1

    sget-object v0, Lcom/android/systemui/shade/SecPanelSplitHelper;->Companion:Lcom/android/systemui/shade/SecPanelSplitHelper$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " enable = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SecQuickSettingsAffordanceInteractor"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;->hideEffect()V

    :cond_1
    return-void
.end method
