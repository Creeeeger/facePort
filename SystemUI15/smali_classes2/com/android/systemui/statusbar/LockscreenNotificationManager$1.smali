.class public final Lcom/android/systemui/statusbar/LockscreenNotificationManager$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/LockscreenNotificationManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/LockscreenNotificationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Landroid/net/Uri;)V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mNotificationSettingUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, -0x2

    const-string v2, "lockscreen_minimizing_notification"

    invoke-static {p1, v2, v0, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mSettingNotificationType:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, " setting updated : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mSettingNotificationType:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LockscreenNotificationManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->updateNotificationType()V

    :cond_0
    return-void
.end method
