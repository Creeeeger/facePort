.class Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoDispatchingListener;
.super Landroid/hardware/usb/IDisplayPortAltModeInfoListener$Stub;
.source "UsbManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/UsbManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisplayPortAltModeInfoDispatchingListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/usb/UsbManager;


# direct methods
.method private constructor blacklist <init>(Landroid/hardware/usb/UsbManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoDispatchingListener;->this$0:Landroid/hardware/usb/UsbManager;

    invoke-direct {p0}, Landroid/hardware/usb/IDisplayPortAltModeInfoListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoDispatchingListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoDispatchingListener;-><init>(Landroid/hardware/usb/UsbManager;)V

    return-void
.end method

.method static synthetic blacklist lambda$onDisplayPortAltModeInfoChanged$0(Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoListener;Ljava/lang/String;Landroid/hardware/usb/DisplayPortAltModeInfo;)V
    .locals 0

    invoke-interface {p0, p1, p2}, Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoListener;->onDisplayPortAltModeInfoChanged(Ljava/lang/String;Landroid/hardware/usb/DisplayPortAltModeInfo;)V

    return-void
.end method


# virtual methods
.method public blacklist onDisplayPortAltModeInfoChanged(Ljava/lang/String;Landroid/hardware/usb/DisplayPortAltModeInfo;)V
    .locals 11

    iget-object v0, p0, Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoDispatchingListener;->this$0:Landroid/hardware/usb/UsbManager;

    invoke-static {v0}, Landroid/hardware/usb/UsbManager;->-$$Nest$fgetmDisplayPortListenersLock(Landroid/hardware/usb/UsbManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoDispatchingListener;->this$0:Landroid/hardware/usb/UsbManager;

    invoke-static {v1}, Landroid/hardware/usb/UsbManager;->-$$Nest$fgetmDisplayPortListeners(Landroid/hardware/usb/UsbManager;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoListener;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v7, Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoDispatchingListener$$ExternalSyntheticLambda0;

    invoke-direct {v7, v4, p1, p2}, Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoDispatchingListener$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoListener;Ljava/lang/String;Landroid/hardware/usb/DisplayPortAltModeInfo;)V

    invoke-interface {v3, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v7

    :try_start_3
    const-string v8, "UsbManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception during onDisplayPortAltModeInfoChanged from executor: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v7}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :goto_2
    goto :goto_0

    :goto_3
    :try_start_4
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    throw v1

    :cond_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method
