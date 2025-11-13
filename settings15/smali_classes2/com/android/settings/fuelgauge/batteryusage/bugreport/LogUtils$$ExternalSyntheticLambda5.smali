.class public final synthetic Lcom/android/settings/fuelgauge/batteryusage/bugreport/LogUtils$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/io/PrintWriter;

.field public final synthetic f$1:Ljava/util/function/Function;

.field public final synthetic f$2:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public synthetic constructor <init>(Ljava/io/PrintWriter;Ljava/util/function/Function;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/bugreport/LogUtils$$ExternalSyntheticLambda5;->f$0:Ljava/io/PrintWriter;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batteryusage/bugreport/LogUtils$$ExternalSyntheticLambda5;->f$1:Ljava/util/function/Function;

    iput-object p3, p0, Lcom/android/settings/fuelgauge/batteryusage/bugreport/LogUtils$$ExternalSyntheticLambda5;->f$2:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/bugreport/LogUtils$$ExternalSyntheticLambda5;->f$0:Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/bugreport/LogUtils$$ExternalSyntheticLambda5;->f$1:Ljava/util/function/Function;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/bugreport/LogUtils$$ExternalSyntheticLambda5;->f$2:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p0

    rem-int/lit8 p0, p0, 0x14

    if-nez p0, :cond_0

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    :cond_0
    return-void
.end method
