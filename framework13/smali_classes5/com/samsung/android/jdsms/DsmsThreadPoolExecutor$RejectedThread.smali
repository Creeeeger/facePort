.class final Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor$RejectedThread;
.super Ljava/lang/Object;
.source "DsmsThreadPoolExecutor.java"

# interfaces
.implements Ljava/util/concurrent/RejectedExecutionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RejectedThread"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor$RejectedThread-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor$RejectedThread;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "executor"    # Ljava/util/concurrent/ThreadPoolExecutor;

    .line 94
    const-string v0, "DsmsThreadPoolExecutor"

    const-string v1, "Queue already full"

    invoke-static {v0, v1}, Lcom/samsung/android/jdsms/DsmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-void
.end method
