.class public final Lcom/android/systemui/settings/UserTrackerImpl$handleUserSwitching$$inlined$notifySubscribers$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $callback:Lcom/android/systemui/settings/UserTracker$Callback;

.field public final synthetic $latch:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic $newUserId$inlined:I

.field public final synthetic this$0:Lcom/android/systemui/settings/UserTrackerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/CountDownLatch;ILcom/android/systemui/settings/UserTrackerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/UserTrackerImpl$handleUserSwitching$$inlined$notifySubscribers$1;->$callback:Lcom/android/systemui/settings/UserTracker$Callback;

    iput-object p2, p0, Lcom/android/systemui/settings/UserTrackerImpl$handleUserSwitching$$inlined$notifySubscribers$1;->$latch:Ljava/util/concurrent/CountDownLatch;

    iput p3, p0, Lcom/android/systemui/settings/UserTrackerImpl$handleUserSwitching$$inlined$notifySubscribers$1;->$newUserId$inlined:I

    iput-object p4, p0, Lcom/android/systemui/settings/UserTrackerImpl$handleUserSwitching$$inlined$notifySubscribers$1;->this$0:Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/settings/UserTrackerImpl$handleUserSwitching$$inlined$notifySubscribers$1;->$callback:Lcom/android/systemui/settings/UserTracker$Callback;

    new-instance v1, Lcom/android/systemui/settings/UserTrackerImpl$handleUserSwitching$$inlined$notifySubscribers$1$1;

    iget-object v2, p0, Lcom/android/systemui/settings/UserTrackerImpl$handleUserSwitching$$inlined$notifySubscribers$1;->$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v2}, Lcom/android/systemui/settings/UserTrackerImpl$handleUserSwitching$$inlined$notifySubscribers$1$1;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    iget v2, p0, Lcom/android/systemui/settings/UserTrackerImpl$handleUserSwitching$$inlined$notifySubscribers$1;->$newUserId$inlined:I

    iget-object p0, p0, Lcom/android/systemui/settings/UserTrackerImpl$handleUserSwitching$$inlined$notifySubscribers$1;->this$0:Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserContext()Landroid/content/Context;

    move-result-object p0

    invoke-interface {v0, v2, p0, v1}, Lcom/android/systemui/settings/UserTracker$Callback;->onUserChanging(ILandroid/content/Context;Ljava/lang/Runnable;)V

    return-void
.end method
