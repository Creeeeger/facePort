.class Landroid/app/NotificationHistory$1;
.super Ljava/lang/Object;
.source "NotificationHistory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/NotificationHistory;->removeImageNotificationsFromWrite(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/NotificationHistory;

.field final synthetic blacklist val$hn:Landroid/app/NotificationHistory$HistoricalNotification;


# direct methods
.method constructor blacklist <init>(Landroid/app/NotificationHistory;Landroid/app/NotificationHistory$HistoricalNotification;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroid/app/NotificationHistory$1;->this$0:Landroid/app/NotificationHistory;

    iput-object p2, p0, Landroid/app/NotificationHistory$1;->val$hn:Landroid/app/NotificationHistory$HistoricalNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/server/notification/NotificationHistoryImageProvider;->getInstance()Lcom/samsung/android/server/notification/NotificationHistoryImageProvider;

    move-result-object v0

    iget-object v1, p0, Landroid/app/NotificationHistory$1;->val$hn:Landroid/app/NotificationHistory$HistoricalNotification;

    invoke-virtual {v1}, Landroid/app/NotificationHistory$HistoricalNotification;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/notification/NotificationHistoryImageProvider;->deleteRows(Ljava/lang/String;)Z

    return-void
.end method
