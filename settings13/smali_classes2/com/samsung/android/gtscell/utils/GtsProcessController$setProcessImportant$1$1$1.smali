.class public final Lcom/samsung/android/gtscell/utils/GtsProcessController$setProcessImportant$1$1$1;
.super Ljava/lang/Object;
.source "GtsProcessController.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/gtscell/utils/GtsProcessController;->setProcessImportant(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGtsProcessController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GtsProcessController.kt\ncom/samsung/android/gtscell/utils/GtsProcessController$setProcessImportant$1$1$1\n*L\n1#1,72:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $it:Landroid/app/ActivityManager;


# direct methods
.method constructor <init>(Landroid/app/ActivityManager;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/samsung/android/gtscell/utils/GtsProcessController$setProcessImportant$1$1$1;->$it:Landroid/app/ActivityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 41
    monitor-enter p0

    .line 42
    :try_start_0
    sget-object v0, Lcom/samsung/android/gtscell/log/GLogger;->Companion:Lcom/samsung/android/gtscell/log/GLogger$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/gtscell/log/GLogger$Companion;->getGlobal()Lcom/samsung/android/gtscell/log/GLogger;

    move-result-object v0

    const-string/jumbo v1, "timer expired"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lcom/samsung/android/gtscell/log/GLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    iget-object v0, p0, Lcom/samsung/android/gtscell/utils/GtsProcessController$setProcessImportant$1$1$1;->$it:Landroid/app/ActivityManager;

    .line 44
    sget-object v1, Lcom/samsung/android/gtscell/utils/GtsProcessController;->INSTANCE:Lcom/samsung/android/gtscell/utils/GtsProcessController;

    invoke-static {v1}, Lcom/samsung/android/gtscell/utils/GtsProcessController;->access$getToken$p(Lcom/samsung/android/gtscell/utils/GtsProcessController;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    .line 43
    invoke-virtual {v0, v3, v4, v2}, Landroid/app/ActivityManager;->semSetProcessImportant(Landroid/os/IBinder;IZ)V

    .line 46
    invoke-static {v1}, Lcom/samsung/android/gtscell/utils/GtsProcessController;->access$getForcingToImportant$p(Lcom/samsung/android/gtscell/utils/GtsProcessController;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 47
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
