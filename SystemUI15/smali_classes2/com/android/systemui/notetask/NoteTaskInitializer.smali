.class public final Lcom/android/systemui/notetask/NoteTaskInitializer;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I

.field public static final LONG_PRESS_TIMEOUT:J

.field public static final MULTI_PRESS_TIMEOUT:J


# instance fields
.field public final backgroundExecutor:Ljava/util/concurrent/Executor;

.field public final callbacks:Lcom/android/systemui/notetask/NoteTaskInitializer$callbacks$1;

.field public final commandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field public final controller:Lcom/android/systemui/notetask/NoteTaskController;

.field public final isEnabled:Z

.field public final keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public lastStylusButtonTailUpEventTime:J

.field public final optionalBubbles:Ljava/util/Optional;

.field public final roleManager:Landroid/app/role/RoleManager;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/notetask/NoteTaskInitializer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/notetask/NoteTaskInitializer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getMultiPressTimeout()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/android/systemui/notetask/NoteTaskInitializer;->MULTI_PRESS_TIMEOUT:J

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/android/systemui/notetask/NoteTaskInitializer;->LONG_PRESS_TIMEOUT:J

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/notetask/NoteTaskController;Landroid/app/role/RoleManager;Lcom/android/systemui/statusbar/CommandQueue;Ljava/util/Optional;Lcom/android/systemui/settings/UserTracker;Lcom/android/keyguard/KeyguardUpdateMonitor;Ljava/util/concurrent/Executor;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/notetask/NoteTaskController;",
            "Landroid/app/role/RoleManager;",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/bubbles/Bubbles;",
            ">;",
            "Lcom/android/systemui/settings/UserTracker;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Ljava/util/concurrent/Executor;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/notetask/NoteTaskInitializer;->controller:Lcom/android/systemui/notetask/NoteTaskController;

    iput-object p2, p0, Lcom/android/systemui/notetask/NoteTaskInitializer;->roleManager:Landroid/app/role/RoleManager;

    iput-object p3, p0, Lcom/android/systemui/notetask/NoteTaskInitializer;->commandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iput-object p4, p0, Lcom/android/systemui/notetask/NoteTaskInitializer;->optionalBubbles:Ljava/util/Optional;

    iput-object p5, p0, Lcom/android/systemui/notetask/NoteTaskInitializer;->userTracker:Lcom/android/systemui/settings/UserTracker;

    iput-object p6, p0, Lcom/android/systemui/notetask/NoteTaskInitializer;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p7, p0, Lcom/android/systemui/notetask/NoteTaskInitializer;->backgroundExecutor:Ljava/util/concurrent/Executor;

    iput-boolean p8, p0, Lcom/android/systemui/notetask/NoteTaskInitializer;->isEnabled:Z

    new-instance p1, Lcom/android/systemui/notetask/NoteTaskInitializer$callbacks$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/notetask/NoteTaskInitializer$callbacks$1;-><init>(Lcom/android/systemui/notetask/NoteTaskInitializer;)V

    iput-object p1, p0, Lcom/android/systemui/notetask/NoteTaskInitializer;->callbacks:Lcom/android/systemui/notetask/NoteTaskInitializer$callbacks$1;

    sget-wide p1, Lcom/android/systemui/notetask/NoteTaskInitializer;->MULTI_PRESS_TIMEOUT:J

    neg-long p1, p1

    iput-wide p1, p0, Lcom/android/systemui/notetask/NoteTaskInitializer;->lastStylusButtonTailUpEventTime:J

    return-void
.end method
