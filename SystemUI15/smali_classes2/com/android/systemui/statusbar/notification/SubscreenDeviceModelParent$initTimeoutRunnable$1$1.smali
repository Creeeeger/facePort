.class public final Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$initTimeoutRunnable$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$initTimeoutRunnable$1$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$initTimeoutRunnable$1$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mIsRemoving:Z

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mPresentation:Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " DISMISS Run - isRemoving: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", presentation: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S.S.N."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$initTimeoutRunnable$1$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mIsRemoving:Z

    if-eqz v2, :cond_1

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mPresentation:Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;->dismiss()V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$initTimeoutRunnable$1$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mIsRemoving:Z

    const-string/jumbo p0, "updateWakeLock false in timeoutRunnable"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
