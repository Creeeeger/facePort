.class public final Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public lastSent:J

.field public sentCount:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;->lastSent:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;->sentCount:I

    return-void
.end method
