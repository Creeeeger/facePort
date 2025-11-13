.class public final Lcom/android/settings/localepicker/NotificationInfo;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mDismissCount:I

.field public final mLastNotificationTimeMs:J

.field public final mNotificationCount:I

.field public final mNotificationId:I

.field public final mUidCollection:Ljava/util/Set;


# direct methods
.method public constructor <init>(Ljava/util/Set;IIJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/localepicker/NotificationInfo;->mUidCollection:Ljava/util/Set;

    iput p2, p0, Lcom/android/settings/localepicker/NotificationInfo;->mNotificationCount:I

    iput p3, p0, Lcom/android/settings/localepicker/NotificationInfo;->mDismissCount:I

    iput-wide p4, p0, Lcom/android/settings/localepicker/NotificationInfo;->mLastNotificationTimeMs:J

    iput p6, p0, Lcom/android/settings/localepicker/NotificationInfo;->mNotificationId:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Lcom/android/settings/localepicker/NotificationInfo;

    if-nez v2, :cond_2

    return v0

    :cond_2
    check-cast p1, Lcom/android/settings/localepicker/NotificationInfo;

    iget-object v2, p0, Lcom/android/settings/localepicker/NotificationInfo;->mUidCollection:Ljava/util/Set;

    iget-object v3, p1, Lcom/android/settings/localepicker/NotificationInfo;->mUidCollection:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/settings/localepicker/NotificationInfo;->mDismissCount:I

    iget v3, p1, Lcom/android/settings/localepicker/NotificationInfo;->mDismissCount:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/android/settings/localepicker/NotificationInfo;->mNotificationCount:I

    iget v3, p1, Lcom/android/settings/localepicker/NotificationInfo;->mNotificationCount:I

    if-ne v2, v3, :cond_3

    iget-wide v2, p0, Lcom/android/settings/localepicker/NotificationInfo;->mLastNotificationTimeMs:J

    iget-wide v4, p1, Lcom/android/settings/localepicker/NotificationInfo;->mLastNotificationTimeMs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget p0, p0, Lcom/android/settings/localepicker/NotificationInfo;->mNotificationId:I

    iget p1, p1, Lcom/android/settings/localepicker/NotificationInfo;->mNotificationId:I

    if-ne p0, p1, :cond_3

    move v0, v1

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 5

    iget-object v0, p0, Lcom/android/settings/localepicker/NotificationInfo;->mUidCollection:Ljava/util/Set;

    iget v1, p0, Lcom/android/settings/localepicker/NotificationInfo;->mDismissCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/localepicker/NotificationInfo;->mNotificationCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/settings/localepicker/NotificationInfo;->mLastNotificationTimeMs:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget p0, p0, Lcom/android/settings/localepicker/NotificationInfo;->mNotificationId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
