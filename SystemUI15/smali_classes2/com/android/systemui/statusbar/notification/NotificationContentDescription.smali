.class public abstract Lcom/android/systemui/statusbar/notification/NotificationContentDescription;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final contentDescForNotification(Landroid/content/Context;Landroid/app/Notification;)Ljava/lang/CharSequence;
    .locals 2

    invoke-virtual {p1, p0}, Landroid/app/Notification;->loadHeaderAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    const v1, 0x7f13007e

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
