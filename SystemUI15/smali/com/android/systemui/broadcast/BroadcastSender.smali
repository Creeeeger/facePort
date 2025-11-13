.class public final Lcom/android/systemui/broadcast/BroadcastSender;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final bgExecutor:Ljava/util/concurrent/Executor;

.field public final context:Landroid/content/Context;

.field public final wakeLockBuilder:Lcom/android/systemui/util/wakelock/WakeLock$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/broadcast/BroadcastSender$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/broadcast/BroadcastSender$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/wakelock/WakeLock$Builder;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/broadcast/BroadcastSender;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/broadcast/BroadcastSender;->wakeLockBuilder:Lcom/android/systemui/util/wakelock/WakeLock$Builder;

    iput-object p3, p0, Lcom/android/systemui/broadcast/BroadcastSender;->bgExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final closeSystemDialogs()V
    .locals 2

    new-instance v0, Lcom/android/systemui/broadcast/BroadcastSender$closeSystemDialogs$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/broadcast/BroadcastSender$closeSystemDialogs$1;-><init>(Lcom/android/systemui/broadcast/BroadcastSender;)V

    const-string v1, "closeSystemDialogs"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/broadcast/BroadcastSender;->sendInBackground(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final sendBroadcast(Landroid/content/Intent;)V
    .locals 2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/broadcast/BroadcastSender$sendBroadcast$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/broadcast/BroadcastSender$sendBroadcast$1;-><init>(Lcom/android/systemui/broadcast/BroadcastSender;Landroid/content/Intent;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/broadcast/BroadcastSender;->sendInBackground(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final sendBroadcast$1(Landroid/content/Intent;)V
    .locals 3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/broadcast/BroadcastSender$sendBroadcast$2;

    const-string v2, "com.android.systemui.permission.SELF"

    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/broadcast/BroadcastSender$sendBroadcast$2;-><init>(Lcom/android/systemui/broadcast/BroadcastSender;Landroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/broadcast/BroadcastSender;->sendInBackground(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/broadcast/BroadcastSender$sendBroadcastAsUser$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/broadcast/BroadcastSender$sendBroadcastAsUser$1;-><init>(Lcom/android/systemui/broadcast/BroadcastSender;Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/broadcast/BroadcastSender;->sendInBackground(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final sendInBackground(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/broadcast/BroadcastSender;->wakeLockBuilder:Lcom/android/systemui/util/wakelock/WakeLock$Builder;

    const-string v1, "SysUI:BroadcastSender"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/wakelock/WakeLock$Builder;->setTag(Ljava/lang/String;)Lcom/android/systemui/util/wakelock/WakeLock$Builder;

    move-result-object v0

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/util/wakelock/WakeLock$Builder;->setMaxTimeout(J)Lcom/android/systemui/util/wakelock/WakeLock$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/wakelock/WakeLock$Builder;->build()Lcom/android/systemui/util/wakelock/WakeLock;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/systemui/util/wakelock/WakeLock;->acquire(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/broadcast/BroadcastSender;->bgExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/broadcast/BroadcastSender$sendInBackground$1;

    invoke-direct {v1, p2, v0, p1}, Lcom/android/systemui/broadcast/BroadcastSender$sendInBackground$1;-><init>(Lkotlin/jvm/functions/Function0;Lcom/android/systemui/util/wakelock/WakeLock;Ljava/lang/String;)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
