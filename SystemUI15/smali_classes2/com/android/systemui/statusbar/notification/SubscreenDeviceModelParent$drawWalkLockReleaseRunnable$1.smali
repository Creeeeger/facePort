.class public final Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$drawWalkLockReleaseRunnable$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$drawWalkLockReleaseRunnable$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const-string v0, "S.S.N."

    const-string v1, " drawWalkLockReleaseRunnable - releaseInflationWakeLock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$drawWalkLockReleaseRunnable$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->currentPresentationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mInflationWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    if-eqz v2, :cond_0

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/android/systemui/util/wakelock/WakeLock;->release(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mInflationWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$drawWalkLockReleaseRunnable$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->currentPresentationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    return-void
.end method
