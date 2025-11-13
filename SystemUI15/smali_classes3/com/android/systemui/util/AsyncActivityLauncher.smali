.class public final Lcom/android/systemui/util/AsyncActivityLauncher;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final activityTaskManager:Landroid/app/IActivityTaskManager;

.field private final backgroundExecutor:Ljava/util/concurrent/Executor;

.field private final context:Landroid/content/Context;

.field private final mainExecutor:Ljava/util/concurrent/Executor;

.field private pendingCallback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityTaskManager;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/AsyncActivityLauncher;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/util/AsyncActivityLauncher;->activityTaskManager:Landroid/app/IActivityTaskManager;

    iput-object p3, p0, Lcom/android/systemui/util/AsyncActivityLauncher;->backgroundExecutor:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lcom/android/systemui/util/AsyncActivityLauncher;->mainExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static final synthetic access$getActivityTaskManager$p(Lcom/android/systemui/util/AsyncActivityLauncher;)Landroid/app/IActivityTaskManager;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/AsyncActivityLauncher;->activityTaskManager:Landroid/app/IActivityTaskManager;

    return-object p0
.end method

.method public static final synthetic access$getContext$p(Lcom/android/systemui/util/AsyncActivityLauncher;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/AsyncActivityLauncher;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getMainExecutor$p(Lcom/android/systemui/util/AsyncActivityLauncher;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/AsyncActivityLauncher;->mainExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public static final synthetic access$getPendingCallback$p(Lcom/android/systemui/util/AsyncActivityLauncher;)Lkotlin/jvm/functions/Function1;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/AsyncActivityLauncher;->pendingCallback:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static synthetic startActivityAsUser$default(Lcom/android/systemui/util/AsyncActivityLauncher;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/Bundle;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/util/AsyncActivityLauncher;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/Bundle;Lkotlin/jvm/functions/Function1;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/util/AsyncActivityLauncher;->pendingCallback:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/Bundle;Lkotlin/jvm/functions/Function1;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/os/UserHandle;",
            "Landroid/os/Bundle;",
            "Lkotlin/jvm/functions/Function1;",
            ")Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/util/AsyncActivityLauncher;->pendingCallback:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iput-object p4, p0, Lcom/android/systemui/util/AsyncActivityLauncher;->pendingCallback:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result p4

    const/high16 v0, 0x10000000

    or-int/2addr p4, v0

    invoke-virtual {p1, p4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object p4, p0, Lcom/android/systemui/util/AsyncActivityLauncher;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/systemui/util/AsyncActivityLauncher$startActivityAsUser$1;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/android/systemui/util/AsyncActivityLauncher$startActivityAsUser$1;-><init>(Lcom/android/systemui/util/AsyncActivityLauncher;Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    invoke-interface {p4, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method
