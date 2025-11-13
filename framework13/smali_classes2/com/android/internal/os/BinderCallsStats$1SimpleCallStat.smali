.class Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;
.super Ljava/lang/Object;
.source "BinderCallsStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/BinderCallsStats;->printCallStatsByPackage(Ljava/io/PrintWriter;Lcom/android/internal/os/BinderCallsStats$UidEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SimpleCallStat"
.end annotation


# instance fields
.field public blacklist callCount:I

.field public blacklist cpuTimeMicros:J

.field public blacklist packageName:Ljava/lang/String;

.field public blacklist recordedCallCount:I

.field final synthetic blacklist this$0:Lcom/android/internal/os/BinderCallsStats;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/os/BinderCallsStats;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/os/BinderCallsStats;

    .line 954
    iput-object p1, p0, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;->this$0:Lcom/android/internal/os/BinderCallsStats;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
