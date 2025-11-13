.class public final Lcom/android/systemui/statusbar/events/SystemEventCoordinator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final context:Landroid/content/Context;

.field public final privacyController:Lcom/android/systemui/privacy/PrivacyItemController;

.field public final privacyStateListener:Lcom/android/systemui/statusbar/events/SystemEventCoordinator$privacyStateListener$1;

.field public scheduler:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

.field public final systemClock:Lcom/android/systemui/util/time/SystemClock;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/privacy/PrivacyItemController;Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/display/domain/interactor/ConnectedDisplayInteractor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemEventCoordinator;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    iput-object p3, p0, Lcom/android/systemui/statusbar/events/SystemEventCoordinator;->privacyController:Lcom/android/systemui/privacy/PrivacyItemController;

    iput-object p4, p0, Lcom/android/systemui/statusbar/events/SystemEventCoordinator;->context:Landroid/content/Context;

    new-instance p1, Lcom/android/systemui/statusbar/events/SystemEventCoordinator$batteryStateListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/events/SystemEventCoordinator$batteryStateListener$1;-><init>(Lcom/android/systemui/statusbar/events/SystemEventCoordinator;)V

    new-instance p1, Lcom/android/systemui/statusbar/events/SystemEventCoordinator$privacyStateListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/events/SystemEventCoordinator$privacyStateListener$1;-><init>(Lcom/android/systemui/statusbar/events/SystemEventCoordinator;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemEventCoordinator;->privacyStateListener:Lcom/android/systemui/statusbar/events/SystemEventCoordinator$privacyStateListener$1;

    return-void
.end method
