.class public Lcom/android/systemui/screenshot/ScreenshotServiceErrorReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-class p0, Landroid/app/NotificationManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    const-class p2, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/admin/DevicePolicyManager;

    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p0, p2}, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;-><init>(ILandroid/content/Context;Landroid/app/NotificationManager;Landroid/app/admin/DevicePolicyManager;)V

    const p0, 0x7f131008

    invoke-virtual {v0, p0}, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->notifyScreenshotError(I)V

    return-void
.end method
