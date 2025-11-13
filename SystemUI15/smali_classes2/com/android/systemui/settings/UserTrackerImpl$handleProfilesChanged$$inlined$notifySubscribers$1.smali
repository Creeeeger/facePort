.class public final Lcom/android/systemui/settings/UserTrackerImpl$handleProfilesChanged$$inlined$notifySubscribers$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $callback:Lcom/android/systemui/settings/UserTracker$Callback;

.field public final synthetic $latch:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic $profiles$inlined:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/CountDownLatch;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/UserTrackerImpl$handleProfilesChanged$$inlined$notifySubscribers$1;->$callback:Lcom/android/systemui/settings/UserTracker$Callback;

    iput-object p2, p0, Lcom/android/systemui/settings/UserTrackerImpl$handleProfilesChanged$$inlined$notifySubscribers$1;->$latch:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lcom/android/systemui/settings/UserTrackerImpl$handleProfilesChanged$$inlined$notifySubscribers$1;->$profiles$inlined:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/settings/UserTrackerImpl$handleProfilesChanged$$inlined$notifySubscribers$1;->$callback:Lcom/android/systemui/settings/UserTracker$Callback;

    new-instance v1, Lcom/android/systemui/settings/UserTrackerImpl$handleProfilesChanged$$inlined$notifySubscribers$1$1;

    iget-object v2, p0, Lcom/android/systemui/settings/UserTrackerImpl$handleProfilesChanged$$inlined$notifySubscribers$1;->$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v2}, Lcom/android/systemui/settings/UserTrackerImpl$handleProfilesChanged$$inlined$notifySubscribers$1$1;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    iget-object v1, p0, Lcom/android/systemui/settings/UserTrackerImpl$handleProfilesChanged$$inlined$notifySubscribers$1;->$profiles$inlined:Ljava/util/List;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/settings/UserTrackerImpl$handleProfilesChanged$$inlined$notifySubscribers$1;->$profiles$inlined:Ljava/util/List;

    invoke-interface {v0, p0}, Lcom/android/systemui/settings/UserTracker$Callback;->onProfilesChanged(Ljava/util/List;)V

    return-void
.end method
