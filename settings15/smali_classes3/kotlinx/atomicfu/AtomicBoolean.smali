.class public final Lkotlinx/atomicfu/AtomicBoolean;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field public volatile _value:I

.field public final trace:Lkotlinx/atomicfu/TraceBase$None;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lkotlinx/atomicfu/AtomicBoolean;

    const-string v1, "_value"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/atomicfu/AtomicBoolean;->FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    sget-object v0, Lkotlinx/atomicfu/TraceBase$None;->INSTANCE:Lkotlinx/atomicfu/TraceBase$None;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lkotlinx/atomicfu/AtomicBoolean;->trace:Lkotlinx/atomicfu/TraceBase$None;

    iput p1, p0, Lkotlinx/atomicfu/AtomicBoolean;->_value:I

    return-void
.end method


# virtual methods
.method public final compareAndSet(ZZ)Z
    .locals 3

    sget-object v0, Lkotlinx/atomicfu/AtomicBoolean;->FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v1, Lkotlinx/atomicfu/TraceBase$None;->INSTANCE:Lkotlinx/atomicfu/TraceBase$None;

    iget-object p0, p0, Lkotlinx/atomicfu/AtomicBoolean;->trace:Lkotlinx/atomicfu/TraceBase$None;

    if-eq p0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CAS("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lkotlinx/atomicfu/TraceBase$None;->append(Ljava/lang/Object;)V

    :cond_0
    return v0
.end method

.method public final getValue()Z
    .locals 0

    iget p0, p0, Lkotlinx/atomicfu/AtomicBoolean;->_value:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final setValue()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lkotlinx/atomicfu/AtomicBoolean;->_value:I

    iget-object p0, p0, Lkotlinx/atomicfu/AtomicBoolean;->trace:Lkotlinx/atomicfu/TraceBase$None;

    sget-object v0, Lkotlinx/atomicfu/TraceBase$None;->INSTANCE:Lkotlinx/atomicfu/TraceBase$None;

    if-eq p0, v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p0, "set(true)"

    invoke-static {p0}, Lkotlinx/atomicfu/TraceBase$None;->append(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lkotlinx/atomicfu/AtomicBoolean;->getValue()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
