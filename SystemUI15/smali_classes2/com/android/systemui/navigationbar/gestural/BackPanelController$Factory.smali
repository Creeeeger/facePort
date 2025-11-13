.class public final Lcom/android/systemui/navigationbar/gestural/BackPanelController$Factory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final interactionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

.field public final latencyTracker:Lcom/android/internal/util/LatencyTracker;

.field public final systemClock:Lcom/android/systemui/util/time/SystemClock;

.field public final uiThreadContext:Lcom/android/systemui/util/concurrency/UiThreadContext;

.field public final vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

.field public final viewConfiguration:Landroid/view/ViewConfiguration;

.field public final windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/view/WindowManager;Landroid/view/ViewConfiguration;Lcom/android/systemui/util/concurrency/UiThreadContext;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/internal/util/LatencyTracker;Lcom/android/internal/jank/InteractionJankMonitor;)V
    .locals 0
    .param p3    # Lcom/android/systemui/util/concurrency/UiThreadContext;
        .annotation runtime Lcom/android/systemui/util/concurrency/BackPanelUiThread;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$Factory;->windowManager:Landroid/view/WindowManager;

    iput-object p2, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$Factory;->viewConfiguration:Landroid/view/ViewConfiguration;

    iput-object p3, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$Factory;->uiThreadContext:Lcom/android/systemui/util/concurrency/UiThreadContext;

    iput-object p4, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$Factory;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    iput-object p5, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$Factory;->vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    iput-object p6, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$Factory;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iput-object p7, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$Factory;->latencyTracker:Lcom/android/internal/util/LatencyTracker;

    iput-object p8, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$Factory;->interactionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    return-void
.end method
