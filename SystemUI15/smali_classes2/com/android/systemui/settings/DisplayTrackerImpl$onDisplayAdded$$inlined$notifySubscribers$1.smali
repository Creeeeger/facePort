.class public final Lcom/android/systemui/settings/DisplayTrackerImpl$onDisplayAdded$$inlined$notifySubscribers$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $displayId$inlined:I

.field public final synthetic $it:Lcom/android/systemui/settings/DisplayTrackerImpl$DisplayTrackerDataItem;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/DisplayTrackerImpl$DisplayTrackerDataItem;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/DisplayTrackerImpl$onDisplayAdded$$inlined$notifySubscribers$1;->$it:Lcom/android/systemui/settings/DisplayTrackerImpl$DisplayTrackerDataItem;

    iput p2, p0, Lcom/android/systemui/settings/DisplayTrackerImpl$onDisplayAdded$$inlined$notifySubscribers$1;->$displayId$inlined:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/DisplayTrackerImpl$onDisplayAdded$$inlined$notifySubscribers$1;->$it:Lcom/android/systemui/settings/DisplayTrackerImpl$DisplayTrackerDataItem;

    iget-object v0, v0, Lcom/android/systemui/settings/DisplayTrackerImpl$DisplayTrackerDataItem;->callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/settings/DisplayTracker$Callback;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/systemui/settings/DisplayTrackerImpl$onDisplayAdded$$inlined$notifySubscribers$1;->$displayId$inlined:I

    invoke-interface {v0, p0}, Lcom/android/systemui/settings/DisplayTracker$Callback;->onDisplayAdded(I)V

    :cond_0
    return-void
.end method
