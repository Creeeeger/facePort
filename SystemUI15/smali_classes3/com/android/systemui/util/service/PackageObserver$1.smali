.class Lcom/android/systemui/util/service/PackageObserver$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field final synthetic this$0:Lcom/android/systemui/util/service/PackageObserver;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/service/PackageObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/util/service/PackageObserver$1;->this$0:Lcom/android/systemui/util/service/PackageObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {}, Lcom/android/systemui/util/service/PackageObserver;->-$$Nest$sfgetDEBUG()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "PackageObserver"

    const-string p2, "package added receiver - onReceive"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/service/PackageObserver$1;->this$0:Lcom/android/systemui/util/service/PackageObserver;

    invoke-static {p0}, Lcom/android/systemui/util/service/PackageObserver;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/util/service/PackageObserver;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/service/Observer$Callback;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/android/systemui/util/service/Observer$Callback;->onSourceChanged()V

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method
