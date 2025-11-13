.class public final Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionDecisionProviderImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionDecisionProvider;


# instance fields
.field public final eventLog:Lcom/android/systemui/util/EventLog;

.field public final globalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

.field public final headsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field public final logger:Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionDecisionLogger;

.field public final mainHandler:Landroid/os/Handler;

.field public final statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final systemClock:Lcom/android/systemui/util/time/SystemClock;

.field public final systemSettings:Lcom/android/systemui/util/settings/SystemSettings;


# direct methods
.method public constructor <init>(Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/util/EventLog;Lcom/android/systemui/util/settings/GlobalSettings;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProvider;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionDecisionLogger;Landroid/os/Handler;Landroid/os/PowerManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/util/time/SystemClock;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/statusbar/notification/interruption/AvalancheProvider;Lcom/android/systemui/util/settings/SystemSettings;Landroid/content/pm/PackageManager;Ljava/util/Optional;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/display/AmbientDisplayConfiguration;",
            "Lcom/android/systemui/statusbar/policy/BatteryController;",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;",
            "Lcom/android/systemui/util/EventLog;",
            "Lcom/android/systemui/util/settings/GlobalSettings;",
            "Lcom/android/systemui/statusbar/policy/HeadsUpManager;",
            "Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProvider;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionDecisionLogger;",
            "Landroid/os/Handler;",
            "Landroid/os/PowerManager;",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            "Lcom/android/systemui/util/time/SystemClock;",
            "Lcom/android/internal/logging/UiEventLogger;",
            "Lcom/android/systemui/settings/UserTracker;",
            "Lcom/android/systemui/statusbar/notification/interruption/AvalancheProvider;",
            "Lcom/android/systemui/util/settings/SystemSettings;",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/bubbles/Bubbles;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p4

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionDecisionProviderImpl;->eventLog:Lcom/android/systemui/util/EventLog;

    move-object v1, p5

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionDecisionProviderImpl;->globalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    move-object v1, p6

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionDecisionProviderImpl;->headsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-object v1, p9

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionDecisionProviderImpl;->logger:Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionDecisionLogger;

    move-object v1, p10

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionDecisionProviderImpl;->mainHandler:Landroid/os/Handler;

    move-object v1, p12

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionDecisionProviderImpl;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    move-object v1, p13

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionDecisionProviderImpl;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionDecisionProviderImpl;->systemSettings:Lcom/android/systemui/util/settings/SystemSettings;

    sget-object v0, Lcom/android/systemui/flags/RefactorFlagUtils;->INSTANCE:Lcom/android/systemui/flags/RefactorFlagUtils;

    sget v1, Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionRefactor;->$r8$clinit:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "New code path expects com.android.systemui.visual_interruptions_refactor to be enabled."

    invoke-static {v0}, Lcom/android/systemui/flags/RefactorFlagUtils;->assertOnEngBuild(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final addLegacySuppressor(Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptSuppressor;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final logFullScreenIntentDecision(Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$FullScreenIntentDecisionImpl;)V
    .locals 1

    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p1, "VisualInterruptionDecisionProviderImpl#logFullScreenIntentDecision"

    invoke-static {p1}, Lcom/android/app/tracing/TraceUtilsKt;->beginSlice(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    const-string p1, "Check failed."

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_1
    throw p1
.end method

.method public final makeAndLogBubbleDecision(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionDecisionProvider$Decision;
    .locals 1

    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p1, "VisualInterruptionDecisionProviderImpl#makeAndLogBubbleDecision"

    invoke-static {p1}, Lcom/android/app/tracing/TraceUtilsKt;->beginSlice(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    const-string p1, "Check failed."

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_1
    throw p1
.end method

.method public final makeAndLogHeadsUpDecision(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionDecisionProvider$Decision;
    .locals 1

    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p1, "VisualInterruptionDecisionProviderImpl#makeAndLogHeadsUpDecision"

    invoke-static {p1}, Lcom/android/app/tracing/TraceUtilsKt;->beginSlice(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    const-string p1, "Check failed."

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_1
    throw p1
.end method

.method public final makeUnloggedFullScreenIntentDecision(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$FullScreenIntentDecisionImpl;
    .locals 1

    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p1, "VisualInterruptionDecisionProviderImpl#makeUnloggedFullScreenIntentDecision"

    invoke-static {p1}, Lcom/android/app/tracing/TraceUtilsKt;->beginSlice(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    const-string p1, "Check failed."

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_1
    throw p1
.end method

.method public final makeUnloggedHeadsUpDecision(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionDecisionProvider$Decision;
    .locals 1

    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p1, "VisualInterruptionDecisionProviderImpl#makeUnloggedHeadsUpDecision"

    invoke-static {p1}, Lcom/android/app/tracing/TraceUtilsKt;->beginSlice(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    const-string p1, "Check failed."

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_1
    throw p1
.end method

.method public removeCondition(Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionCondition;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public removeFilter(Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionFilter;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final removeLegacySuppressor(Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptSuppressor;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final start()V
    .locals 4

    new-instance v0, Lcom/android/systemui/statusbar/notification/interruption/PeekDisabledSuppressor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionDecisionProviderImpl;->globalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionDecisionProviderImpl;->headsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionDecisionProviderImpl;->logger:Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionDecisionLogger;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionDecisionProviderImpl;->mainHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/systemui/statusbar/notification/interruption/PeekDisabledSuppressor;-><init>(Lcom/android/systemui/util/settings/GlobalSettings;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionDecisionLogger;Landroid/os/Handler;)V

    const/4 p0, 0x0

    throw p0
.end method
