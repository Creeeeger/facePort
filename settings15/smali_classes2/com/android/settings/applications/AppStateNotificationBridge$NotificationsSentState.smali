.class public final Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public allChannelsNonBlockable:Z

.field public avgSentDaily:I

.field public avgSentWeekly:I

.field public blockable:Z

.field public blocked:Z

.field public hasChannels:Z

.field public isPermissionDeclared:Z

.field public lastSent:J

.field public sentCount:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->avgSentDaily:I

    iput v0, p0, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->avgSentWeekly:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->lastSent:J

    iput v0, p0, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->sentCount:I

    return-void
.end method
