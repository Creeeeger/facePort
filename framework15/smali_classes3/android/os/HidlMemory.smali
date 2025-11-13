.class public Landroid/os/HidlMemory;
.super Ljava/lang/Object;
.source "HidlMemory.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private blacklist mHandle:Landroid/os/NativeHandle;

.field private final blacklist mName:Ljava/lang/String;

.field private blacklist mNativeContext:J

.field private final blacklist mSize:J


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;JLandroid/os/NativeHandle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/HidlMemory;->mName:Ljava/lang/String;

    iput-wide p2, p0, Landroid/os/HidlMemory;->mSize:J

    iput-object p4, p0, Landroid/os/HidlMemory;->mHandle:Landroid/os/NativeHandle;

    return-void
.end method

.method private native blacklist nativeFinalize()V
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/os/HidlMemory;->mHandle:Landroid/os/NativeHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/HidlMemory;->mHandle:Landroid/os/NativeHandle;

    invoke-virtual {v0}, Landroid/os/NativeHandle;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/HidlMemory;->mHandle:Landroid/os/NativeHandle;

    :cond_0
    return-void
.end method

.method public whitelist dup()Landroid/os/HidlMemory;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/os/HidlMemory;

    iget-object v1, p0, Landroid/os/HidlMemory;->mName:Ljava/lang/String;

    iget-wide v2, p0, Landroid/os/HidlMemory;->mSize:J

    iget-object v4, p0, Landroid/os/HidlMemory;->mHandle:Landroid/os/NativeHandle;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/os/HidlMemory;->mHandle:Landroid/os/NativeHandle;

    invoke-virtual {v4}, Landroid/os/NativeHandle;->dup()Landroid/os/NativeHandle;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/os/HidlMemory;-><init>(Ljava/lang/String;JLandroid/os/NativeHandle;)V

    return-object v0
.end method

.method protected whitelist test-api finalize()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/os/HidlMemory;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Landroid/os/HidlMemory;->nativeFinalize()V

    nop

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-direct {p0}, Landroid/os/HidlMemory;->nativeFinalize()V

    throw v0
.end method

.method public whitelist getHandle()Landroid/os/NativeHandle;
    .locals 1

    iget-object v0, p0, Landroid/os/HidlMemory;->mHandle:Landroid/os/NativeHandle;

    return-object v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/os/HidlMemory;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSize()J
    .locals 2

    iget-wide v0, p0, Landroid/os/HidlMemory;->mSize:J

    return-wide v0
.end method

.method public whitelist releaseHandle()Landroid/os/NativeHandle;
    .locals 2

    iget-object v0, p0, Landroid/os/HidlMemory;->mHandle:Landroid/os/NativeHandle;

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/HidlMemory;->mHandle:Landroid/os/NativeHandle;

    return-object v0
.end method
