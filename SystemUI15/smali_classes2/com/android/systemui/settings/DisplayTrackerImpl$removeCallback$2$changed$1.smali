.class public final Lcom/android/systemui/settings/DisplayTrackerImpl$removeCallback$2$changed$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $callback:Lcom/android/systemui/settings/DisplayTracker$Callback;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/DisplayTracker$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/DisplayTrackerImpl$removeCallback$2$changed$1;->$callback:Lcom/android/systemui/settings/DisplayTracker$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/systemui/settings/DisplayTrackerImpl$DisplayTrackerDataItem;

    iget-object p0, p0, Lcom/android/systemui/settings/DisplayTrackerImpl$removeCallback$2$changed$1;->$callback:Lcom/android/systemui/settings/DisplayTracker$Callback;

    iget-object p1, p1, Lcom/android/systemui/settings/DisplayTrackerImpl$DisplayTrackerDataItem;->callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/settings/DisplayTracker$Callback;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method
