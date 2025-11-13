.class public final synthetic Lcom/android/systemui/SystemUIApplication$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:[Lcom/android/systemui/CoreStartable;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/util/Map$Entry;


# direct methods
.method public synthetic constructor <init>([Lcom/android/systemui/CoreStartable;ILjava/lang/String;Ljava/util/Map$Entry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/SystemUIApplication$$ExternalSyntheticLambda3;->f$0:[Lcom/android/systemui/CoreStartable;

    iput p2, p0, Lcom/android/systemui/SystemUIApplication$$ExternalSyntheticLambda3;->f$1:I

    iput-object p3, p0, Lcom/android/systemui/SystemUIApplication$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/SystemUIApplication$$ExternalSyntheticLambda3;->f$3:Ljava/util/Map$Entry;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication$$ExternalSyntheticLambda3;->f$0:[Lcom/android/systemui/CoreStartable;

    iget v1, p0, Lcom/android/systemui/SystemUIApplication$$ExternalSyntheticLambda3;->f$1:I

    iget-object v2, p0, Lcom/android/systemui/SystemUIApplication$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/SystemUIApplication$$ExternalSyntheticLambda3;->f$3:Ljava/util/Map$Entry;

    sget v3, Lcom/android/systemui/SystemUIApplication;->$r8$clinit:I

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/inject/Provider;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "loading: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SystemUIService"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Provider<"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ">.get()"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x1000

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_0
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/CoreStartable;

    invoke-static {}, Landroid/os/Trace;->endSection()V

    invoke-static {p0}, Lcom/android/systemui/SystemUIApplication;->startStartable(Lcom/android/systemui/CoreStartable;)V

    aput-object p0, v0, v1

    return-void
.end method
