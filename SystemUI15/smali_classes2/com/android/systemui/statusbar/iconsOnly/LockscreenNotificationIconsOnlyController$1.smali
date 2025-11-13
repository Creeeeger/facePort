.class public final Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$1;->this$0:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFinishedWakingUp()V
    .locals 2

    const-string v0, "LockscreenNotificationIconsOnlyController"

    const-string v1, "mWakefulnessObserver onFinishedWakingUp "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$1;->this$0:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mScreenOn:Z

    return-void
.end method

.method public final onStartedGoingToSleep()V
    .locals 2

    const-string v0, "LockscreenNotificationIconsOnlyController"

    const-string v1, "mWakefulnessObserver onStartedGoingToSleep "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$1;->this$0:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mScreenOn:Z

    return-void
.end method
