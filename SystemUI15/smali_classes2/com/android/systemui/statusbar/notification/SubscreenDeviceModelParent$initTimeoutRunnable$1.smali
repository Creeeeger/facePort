.class public final Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$initTimeoutRunnable$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$initTimeoutRunnable$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$initTimeoutRunnable$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->currentPresentationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->presentationShowing:Z

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mPresentation:Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;

    const-string v3, " TIMEOUT Run Parent PRESENTATION - RELEASE DOZE STATE - TIMEOUT : "

    const-string v4, " , presentationShowing : "

    const-string v5, ", mPresentation : "

    invoke-static {v3, v1, v4, v5, v2}, Lcom/android/keyguard/logging/CarrierTextManagerLogger$logCallbackSentFromUpdate$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S.S.N."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$initTimeoutRunnable$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mIsRemoving:Z

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateWakeLock(ZZ)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$initTimeoutRunnable$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$initTimeoutRunnable$1$1;

    invoke-direct {v3, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$initTimeoutRunnable$1$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$initTimeoutRunnable$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    iput v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mNotiPopupType:I

    return-void
.end method
