.class public final Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$initPost$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$initPost$2;->this$0:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Landroid/net/Uri;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$initPost$2;->this$0:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    if-eqz p1, :cond_0

    const-string v0, "lock_screen_allow_rotation"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->DEBUG_TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->isLockScreenRotationAllowed()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->isKeyguardScreenRotation:Z

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->handler:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$handler$1;

    sget p1, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->MSG_USER_ACTIVITY_TIMEOUT_CHANGED:I

    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
