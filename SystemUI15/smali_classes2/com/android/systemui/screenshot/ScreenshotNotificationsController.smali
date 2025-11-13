.class public final Lcom/android/systemui/screenshot/ScreenshotNotificationsController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final context:Landroid/content/Context;

.field public final devicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public final displayId:I

.field public final notificationManager:Landroid/app/NotificationManager;

.field public final res:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/app/NotificationManager;Landroid/app/admin/DevicePolicyManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->displayId:I

    iput-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->notificationManager:Landroid/app/NotificationManager;

    iput-object p4, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->devicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->res:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public final notifyScreenshotError(I)V
    .locals 11

    iget v0, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->displayId:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->res:Landroid/content/res/Resources;

    const v2, 0x7f131004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, " ("

    const-string v3, ")"

    invoke-static {v2, v1, v3}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->res:Landroid/content/res/Resources;

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->context:Landroid/content/Context;

    sget-object v3, Lcom/android/systemui/util/NotificationChannels;->ALERTS:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->res:Landroid/content/res/Resources;

    const v3, 0x7f131005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->res:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const v2, 0x7f08128b

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const-string v3, "err"

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->context:Landroid/content/Context;

    const v4, 0x106001c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->devicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const-string v4, "policy_disable_screen_capture"

    invoke-virtual {v3, v4}, Landroid/app/admin/DevicePolicyManager;->createAdminSupportIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v5, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->context:Landroid/content/Context;

    sget-object v10, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/high16 v8, 0x4000000

    const/4 v9, 0x0

    invoke-static/range {v5 .. v10}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->context:Landroid/content/Context;

    invoke-static {v3, v1, v2}, Lcom/android/systemui/SystemUIApplication;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;Z)V

    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3, v1}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v3, p1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object p1

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/16 v2, 0x3f0

    :goto_1
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, v2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method
