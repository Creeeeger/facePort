.class Lcom/android/systemui/util/MemoryMonitor$SystemUIExceptionHandler;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/util/MemoryMonitor;


# direct methods
.method private constructor <init>(Lcom/android/systemui/util/MemoryMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/util/MemoryMonitor$SystemUIExceptionHandler;->this$0:Lcom/android/systemui/util/MemoryMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/util/MemoryMonitor;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/util/MemoryMonitor$SystemUIExceptionHandler;-><init>(Lcom/android/systemui/util/MemoryMonitor;)V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    instance-of p1, p2, Ljava/lang/OutOfMemoryError;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/util/MemoryMonitor$SystemUIExceptionHandler;->this$0:Lcom/android/systemui/util/MemoryMonitor;

    invoke-static {p1}, Lcom/android/systemui/util/MemoryMonitor;->-$$Nest$fgetmHeapDumpHelper(Lcom/android/systemui/util/MemoryMonitor;)Lcom/android/systemui/HeapDumpHelper;

    move-result-object p1

    const-string p2, "OutOfMemoryError"

    invoke-virtual {p1, p2}, Lcom/android/systemui/HeapDumpHelper;->dump(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/MemoryMonitor$SystemUIExceptionHandler;->this$0:Lcom/android/systemui/util/MemoryMonitor;

    invoke-static {p0}, Lcom/android/systemui/util/MemoryMonitor;->-$$Nest$mprintMemoryInfo(Lcom/android/systemui/util/MemoryMonitor;)V

    return-void
.end method
