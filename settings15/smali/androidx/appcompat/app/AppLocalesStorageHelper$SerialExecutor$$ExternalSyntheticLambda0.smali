.class public final synthetic Landroidx/appcompat/app/AppLocalesStorageHelper$SerialExecutor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/appcompat/app/AppLocalesStorageHelper$SerialExecutor;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/app/AppLocalesStorageHelper$SerialExecutor;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/app/AppLocalesStorageHelper$SerialExecutor$$ExternalSyntheticLambda0;->f$0:Landroidx/appcompat/app/AppLocalesStorageHelper$SerialExecutor;

    iput-object p2, p0, Landroidx/appcompat/app/AppLocalesStorageHelper$SerialExecutor$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/AppLocalesStorageHelper$SerialExecutor$$ExternalSyntheticLambda0;->f$0:Landroidx/appcompat/app/AppLocalesStorageHelper$SerialExecutor;

    iget-object p0, p0, Landroidx/appcompat/app/AppLocalesStorageHelper$SerialExecutor$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppLocalesStorageHelper$SerialExecutor;->scheduleNext()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppLocalesStorageHelper$SerialExecutor;->scheduleNext()V

    throw p0
.end method
