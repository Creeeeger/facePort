.class public final Lcom/android/systemui/flags/RestartDozeListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/flags/RestartDozeListener$Companion;

.field public static final RESTART_SLEEP_KEY:Ljava/lang/String;


# instance fields
.field public final bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public inited:Z

.field public final listener:Lcom/android/systemui/flags/RestartDozeListener$listener$1;

.field public final powerManager:Landroid/os/PowerManager;

.field public final settings:Lcom/android/systemui/util/settings/SecureSettings;

.field public final statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final systemClock:Lcom/android/systemui/util/time/SystemClock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/flags/RestartDozeListener$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/flags/RestartDozeListener$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/flags/RestartDozeListener;->Companion:Lcom/android/systemui/flags/RestartDozeListener$Companion;

    const-string/jumbo v0, "restart_nap_after_start"

    sput-object v0, Lcom/android/systemui/flags/RestartDozeListener;->RESTART_SLEEP_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Landroid/os/PowerManager;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/flags/RestartDozeListener;->settings:Lcom/android/systemui/util/settings/SecureSettings;

    iput-object p2, p0, Lcom/android/systemui/flags/RestartDozeListener;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object p3, p0, Lcom/android/systemui/flags/RestartDozeListener;->powerManager:Landroid/os/PowerManager;

    iput-object p4, p0, Lcom/android/systemui/flags/RestartDozeListener;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    iput-object p5, p0, Lcom/android/systemui/flags/RestartDozeListener;->bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance p1, Lcom/android/systemui/flags/RestartDozeListener$listener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/flags/RestartDozeListener$listener$1;-><init>(Lcom/android/systemui/flags/RestartDozeListener;)V

    iput-object p1, p0, Lcom/android/systemui/flags/RestartDozeListener;->listener:Lcom/android/systemui/flags/RestartDozeListener$listener$1;

    return-void
.end method
