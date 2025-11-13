.class public final Lcom/android/systemui/qs/SecFgsManagerController$setupDialog$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $lock:Ljava/lang/Object;

.field public final synthetic $updateAppItemsLockedRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/SecFgsManagerController$setupDialog$3;->$lock:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/qs/SecFgsManagerController$setupDialog$3;->$updateAppItemsLockedRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/SecFgsManagerController$setupDialog$3;->$lock:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/systemui/qs/SecFgsManagerController$setupDialog$3;->$updateAppItemsLockedRunnable:Ljava/lang/Runnable;

    monitor-enter v0

    :try_start_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
