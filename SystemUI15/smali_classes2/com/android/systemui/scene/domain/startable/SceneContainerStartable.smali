.class public final Lcom/android/systemui/scene/domain/startable/SceneContainerStartable;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# instance fields
.field public final authenticationInteractor:Ldagger/Lazy;

.field public final bouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/BouncerInteractor;

.field public final centralSurfacesOptLazy:Ldagger/Lazy;

.field public final deviceEntryInteractor:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor;

.field public final deviceProvisioningInteractor:Lcom/android/systemui/statusbar/policy/domain/interactor/DeviceProvisioningInteractor;

.field public final deviceUnlockedInteractor:Lcom/android/systemui/deviceentry/domain/interactor/DeviceUnlockedInteractor;

.field public final displayId:I

.field public final faceUnlockInteractor:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;

.field public final falsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

.field public final falsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public final headsUpInteractor:Lcom/android/systemui/statusbar/notification/domain/interactor/HeadsUpNotificationInteractor;

.field public final keyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

.field public final occlusionInteractor:Lcom/android/systemui/scene/domain/interactor/SceneContainerOcclusionInteractor;

.field public final powerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

.field public final sceneBackInteractor:Lcom/android/systemui/scene/domain/interactor/SceneBackInteractor;

.field public final sceneInteractor:Lcom/android/systemui/scene/domain/interactor/SceneInteractor;

.field public final sceneLogger:Lcom/android/systemui/scene/shared/logger/SceneLogger;

.field public final shadeInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

.field public final shadeSessionStorage:Lcom/android/systemui/scene/session/shared/SessionStorage;

.field public final simBouncerInteractor:Ldagger/Lazy;

.field public final sysUiState:Lcom/android/systemui/model/SysUiState;

.field public final uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public final windowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

.field public final windowMgrLockscreenVisInteractor:Lcom/android/systemui/keyguard/domain/interactor/WindowManagerLockscreenVisibilityInteractor;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/scene/domain/interactor/SceneInteractor;Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor;Lcom/android/systemui/deviceentry/domain/interactor/DeviceUnlockedInteractor;Lcom/android/systemui/bouncer/domain/interactor/BouncerInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;Lcom/android/systemui/model/SysUiState;ILcom/android/systemui/scene/shared/logger/SceneLogger;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/power/domain/interactor/PowerInteractor;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/statusbar/policy/domain/interactor/DeviceProvisioningInteractor;Ldagger/Lazy;Lcom/android/systemui/statusbar/notification/domain/interactor/HeadsUpNotificationInteractor;Lcom/android/systemui/scene/domain/interactor/SceneContainerOcclusionInteractor;Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/scene/domain/interactor/SceneBackInteractor;Lcom/android/systemui/scene/session/shared/SessionStorage;Lcom/android/systemui/keyguard/domain/interactor/WindowManagerLockscreenVisibilityInteractor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lcom/android/systemui/scene/domain/interactor/SceneInteractor;",
            "Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor;",
            "Lcom/android/systemui/deviceentry/domain/interactor/DeviceUnlockedInteractor;",
            "Lcom/android/systemui/bouncer/domain/interactor/BouncerInteractor;",
            "Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;",
            "Lcom/android/systemui/model/SysUiState;",
            "I",
            "Lcom/android/systemui/scene/shared/logger/SceneLogger;",
            "Lcom/android/systemui/classifier/FalsingCollector;",
            "Lcom/android/systemui/plugins/FalsingManager;",
            "Lcom/android/systemui/power/domain/interactor/PowerInteractor;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/statusbar/NotificationShadeWindowController;",
            "Lcom/android/systemui/statusbar/policy/domain/interactor/DeviceProvisioningInteractor;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/statusbar/notification/domain/interactor/HeadsUpNotificationInteractor;",
            "Lcom/android/systemui/scene/domain/interactor/SceneContainerOcclusionInteractor;",
            "Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;",
            "Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;",
            "Lcom/android/internal/logging/UiEventLogger;",
            "Lcom/android/systemui/scene/domain/interactor/SceneBackInteractor;",
            "Lcom/android/systemui/scene/session/shared/SessionStorage;",
            "Lcom/android/systemui/keyguard/domain/interactor/WindowManagerLockscreenVisibilityInteractor;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p9

    iput-object v1, v0, Lcom/android/systemui/scene/domain/startable/SceneContainerStartable;->sceneLogger:Lcom/android/systemui/scene/shared/logger/SceneLogger;

    move-object v1, p11

    iput-object v1, v0, Lcom/android/systemui/scene/domain/startable/SceneContainerStartable;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/android/systemui/util/DumpUtilsKt;->asIndenting(Ljava/io/PrintWriter;)Landroid/util/IndentingPrintWriter;

    move-result-object p0

    const-string p1, "SceneContainerFlag"

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    :try_start_0
    const-string p1, "isEnabled"

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, p1, v0}, Lcom/android/systemui/util/DumpUtilsKt;->println(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "requirementDescription"

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->requirementDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    throw p1
.end method

.method public final start()V
    .locals 1

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    invoke-static {}, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->requirementDescription()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/scene/domain/startable/SceneContainerStartable;->sceneLogger:Lcom/android/systemui/scene/shared/logger/SceneLogger;

    invoke-virtual {p0, v0}, Lcom/android/systemui/scene/shared/logger/SceneLogger;->logFrameworkEnabled(Ljava/lang/String;)V

    return-void
.end method
