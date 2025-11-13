.class public final Lcom/android/systemui/statusbar/LockscreenNotificationManager$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/LockscreenNotificationManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/LockscreenNotificationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$2;->this$0:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFolderStateChanged(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$2;->this$0:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mIsFolderStateOpen:Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->updateNotificationType()V

    :cond_0
    return-void
.end method
