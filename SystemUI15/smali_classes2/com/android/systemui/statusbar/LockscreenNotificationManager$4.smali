.class Lcom/android/systemui/statusbar/LockscreenNotificationManager$4;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/LockscreenNotificationManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/LockscreenNotificationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$4;->this$0:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUpdateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean p1, p1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    xor-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$4;->this$0:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mIsCovered:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mIsCovered:Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mLockScreenNotificationStateListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->onLockScreenNotiStateChanged()V

    :cond_1
    return-void
.end method
