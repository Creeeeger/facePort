.class public final Landroid/hardware/usb/UsbOperationInternal;
.super Landroid/hardware/usb/IUsbOperationInternal$Stub;
.source "UsbOperationInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/usb/UsbOperationInternal$UsbOperationStatus;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "UsbPortStatus"

.field public static final blacklist USB_OPERATION_ERROR_INTERNAL:I = 0x1

.field public static final blacklist USB_OPERATION_ERROR_NOT_SUPPORTED:I = 0x2

.field public static final blacklist USB_OPERATION_ERROR_PORT_MISMATCH:I = 0x3

.field public static final blacklist USB_OPERATION_SUCCESS:I = 0x0

.field private static final blacklist USB_OPERATION_TIMEOUT_MSECS:I = 0x1388


# instance fields
.field private blacklist mAsynchronous:Z

.field private blacklist mConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mId:Ljava/lang/String;

.field final blacklist mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private blacklist mOperationComplete:Z

.field private final blacklist mOperationID:I

.field final blacklist mOperationWait:Ljava/util/concurrent/locks/Condition;

.field private blacklist mResult:I

.field private blacklist mStatus:I


# direct methods
.method public static synthetic blacklist $r8$lambda$sqqNA1WIsmY_xWHIksO1RwF0rm4(Landroid/hardware/usb/UsbOperationInternal;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/usb/UsbOperationInternal;->lambda$onOperationComplete$0()V

    return-void
.end method

.method constructor blacklist <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Landroid/hardware/usb/IUsbOperationInternal$Stub;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/usb/UsbOperationInternal;->mAsynchronous:Z

    iput v0, p0, Landroid/hardware/usb/UsbOperationInternal;->mResult:I

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/hardware/usb/UsbOperationInternal;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    iget-object v0, p0, Landroid/hardware/usb/UsbOperationInternal;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/usb/UsbOperationInternal;->mOperationWait:Ljava/util/concurrent/locks/Condition;

    iput p1, p0, Landroid/hardware/usb/UsbOperationInternal;->mOperationID:I

    iput-object p2, p0, Landroid/hardware/usb/UsbOperationInternal;->mId:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(ILjava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/hardware/usb/IUsbOperationInternal$Stub;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/usb/UsbOperationInternal;->mAsynchronous:Z

    iput v0, p0, Landroid/hardware/usb/UsbOperationInternal;->mResult:I

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/hardware/usb/UsbOperationInternal;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    iget-object v0, p0, Landroid/hardware/usb/UsbOperationInternal;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/usb/UsbOperationInternal;->mOperationWait:Ljava/util/concurrent/locks/Condition;

    iput p1, p0, Landroid/hardware/usb/UsbOperationInternal;->mOperationID:I

    iput-object p2, p0, Landroid/hardware/usb/UsbOperationInternal;->mId:Ljava/lang/String;

    iput-object p3, p0, Landroid/hardware/usb/UsbOperationInternal;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Landroid/hardware/usb/UsbOperationInternal;->mConsumer:Ljava/util/function/Consumer;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/usb/UsbOperationInternal;->mAsynchronous:Z

    return-void
.end method

.method private synthetic blacklist lambda$onOperationComplete$0()V
    .locals 2

    iget-object v0, p0, Landroid/hardware/usb/UsbOperationInternal;->mConsumer:Ljava/util/function/Consumer;

    iget v1, p0, Landroid/hardware/usb/UsbOperationInternal;->mResult:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist getStatus()I
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/usb/UsbOperationInternal;->mOperationComplete:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/hardware/usb/UsbOperationInternal;->mStatus:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public blacklist onOperationComplete(I)V
    .locals 4

    iget-object v0, p0, Landroid/hardware/usb/UsbOperationInternal;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroid/hardware/usb/UsbOperationInternal;->mOperationComplete:Z

    iput p1, p0, Landroid/hardware/usb/UsbOperationInternal;->mStatus:I

    const-string v1, "UsbPortStatus"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Port:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/usb/UsbOperationInternal;->mId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " opID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/hardware/usb/UsbOperationInternal;->mOperationID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/hardware/usb/UsbOperationInternal;->mStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Landroid/hardware/usb/UsbOperationInternal;->mAsynchronous:Z

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/hardware/usb/UsbOperationInternal;->mStatus:I

    packed-switch v1, :pswitch_data_0

    const/4 v0, 0x4

    iput v0, p0, Landroid/hardware/usb/UsbOperationInternal;->mResult:I

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x3

    iput v0, p0, Landroid/hardware/usb/UsbOperationInternal;->mResult:I

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    iput v0, p0, Landroid/hardware/usb/UsbOperationInternal;->mResult:I

    goto :goto_0

    :pswitch_2
    iput v0, p0, Landroid/hardware/usb/UsbOperationInternal;->mResult:I

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/usb/UsbOperationInternal;->mResult:I

    nop

    :goto_0
    iget-object v0, p0, Landroid/hardware/usb/UsbOperationInternal;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/hardware/usb/UsbOperationInternal$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/hardware/usb/UsbOperationInternal$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/usb/UsbOperationInternal;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroid/hardware/usb/UsbOperationInternal;->mOperationWait:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iget-object v0, p0, Landroid/hardware/usb/UsbOperationInternal;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    nop

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/hardware/usb/UsbOperationInternal;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist waitForOperationComplete()V
    .locals 11

    const-string v0, " opID:"

    const-string v1, "Port:"

    const-string v2, "UsbPortStatus"

    iget-object v3, p0, Landroid/hardware/usb/UsbOperationInternal;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x1388

    add-long/2addr v5, v3

    :cond_0
    iget-object v7, p0, Landroid/hardware/usb/UsbOperationInternal;->mOperationWait:Ljava/util/concurrent/locks/Condition;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v8, v5, v8

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v7, v8, v9, v10}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    iget-boolean v7, p0, Landroid/hardware/usb/UsbOperationInternal;->mOperationComplete:Z

    if-nez v7, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v7, v7, v5

    if-ltz v7, :cond_0

    :cond_1
    iget-boolean v7, p0, Landroid/hardware/usb/UsbOperationInternal;->mOperationComplete:Z

    if-nez v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/hardware/usb/UsbOperationInternal;->mId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/hardware/usb/UsbOperationInternal;->mOperationID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " operationComplete not received in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x1388

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "msecs"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    nop

    :goto_0
    iget-object v0, p0, Landroid/hardware/usb/UsbOperationInternal;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/hardware/usb/UsbOperationInternal;->mId:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/usb/UsbOperationInternal;->mOperationID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " operationComplete interrupted"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    iget-object v1, p0, Landroid/hardware/usb/UsbOperationInternal;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
