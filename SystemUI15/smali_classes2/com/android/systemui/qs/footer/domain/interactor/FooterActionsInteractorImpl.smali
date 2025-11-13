.class public final Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractor;


# instance fields
.field public final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final deviceMonitoringDialogRequests:Lkotlinx/coroutines/flow/Flow;

.field public final deviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field public final foregroundServicesCount:Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

.field public final hasNewForegroundServices:Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

.field public final metricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public final qsSecurityFooterUtils:Lcom/android/systemui/qs/QSSecurityFooterUtils;

.field public final securityButtonConfig:Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl$special$$inlined$map$1;

.field public final uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public final userSwitcherInteractor:Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;

.field public final userSwitcherStatus:Lkotlinx/coroutines/flow/Flow;


# direct methods
.method public constructor <init>(Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/qs/QSSecurityFooterUtils;Lcom/android/systemui/qs/FgsManagerController;Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;Lcom/android/systemui/security/data/repository/SecurityRepository;Lcom/android/systemui/qs/footer/data/repository/ForegroundServicesRepository;Lcom/android/systemui/user/data/repository/UserSwitcherRepository;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iput-object p5, p0, Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl;->qsSecurityFooterUtils:Lcom/android/systemui/qs/QSSecurityFooterUtils;

    check-cast p8, Lcom/android/systemui/security/data/repository/SecurityRepositoryImpl;

    new-instance p1, Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl$special$$inlined$map$1;

    iget-object p2, p8, Lcom/android/systemui/security/data/repository/SecurityRepositoryImpl;->security:Lkotlinx/coroutines/flow/Flow;

    invoke-direct {p1, p2, p12, p0}, Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl;)V

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance p1, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    invoke-direct {p1, p0}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;-><init>(Ljava/lang/Object;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance p1, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    invoke-direct {p1, p0}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;-><init>(Ljava/lang/Object;)V

    check-cast p10, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl;

    iget-object p0, p10, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl;->userSwitcherStatus:Lkotlinx/coroutines/flow/Flow;

    new-instance p0, Landroid/content/IntentFilter;

    const-string p1, "android.app.action.SHOW_DEVICE_MONITORING_DIALOG"

    invoke-direct {p0, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p11, p0, p1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->broadcastFlow(Landroid/content/IntentFilter;Landroid/os/UserHandle;)Lkotlinx/coroutines/flow/Flow;

    return-void
.end method
