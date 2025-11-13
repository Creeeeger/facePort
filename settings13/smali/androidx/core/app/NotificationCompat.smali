.class public Landroidx/core/app/NotificationCompat;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/NotificationCompat$BubbleMetadata;,
        Landroidx/core/app/NotificationCompat$Action;,
        Landroidx/core/app/NotificationCompat$BigTextStyle;,
        Landroidx/core/app/NotificationCompat$Style;,
        Landroidx/core/app/NotificationCompat$Builder;
    }
.end annotation


# direct methods
.method public static getExtras(Landroid/app/Notification;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notification"
        }
    .end annotation

    .line 7408
    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    return-object p0
.end method
