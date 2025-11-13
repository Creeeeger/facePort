.class public final Landroid/view/InputApplicationHandle;
.super Ljava/lang/Object;
.source "InputApplicationHandle.java"


# instance fields
.field public final blacklist dispatchingTimeoutMillis:J

.field public final blacklist name:Ljava/lang/String;

.field private blacklist ptr:J

.field public final blacklist token:Landroid/os/IBinder;


# direct methods
.method public constructor blacklist <init>(Landroid/os/IBinder;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/InputApplicationHandle;->token:Landroid/os/IBinder;

    iput-object p2, p0, Landroid/view/InputApplicationHandle;->name:Ljava/lang/String;

    iput-wide p3, p0, Landroid/view/InputApplicationHandle;->dispatchingTimeoutMillis:J

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/InputApplicationHandle;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroid/view/InputApplicationHandle;->token:Landroid/os/IBinder;

    iput-object v0, p0, Landroid/view/InputApplicationHandle;->token:Landroid/os/IBinder;

    iget-wide v0, p1, Landroid/view/InputApplicationHandle;->dispatchingTimeoutMillis:J

    iput-wide v0, p0, Landroid/view/InputApplicationHandle;->dispatchingTimeoutMillis:J

    iget-object v0, p1, Landroid/view/InputApplicationHandle;->name:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/InputApplicationHandle;->name:Ljava/lang/String;

    return-void
.end method

.method private native blacklist nativeDispose()V
.end method


# virtual methods
.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/view/InputApplicationHandle;->nativeDispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
