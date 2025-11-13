.class public final Landroid/app/usage/BroadcastResponseStats;
.super Ljava/lang/Object;
.source "BroadcastResponseStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/usage/BroadcastResponseStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mBroadcastsDispatchedCount:I

.field private final blacklist mId:J

.field private blacklist mNotificationsCancelledCount:I

.field private blacklist mNotificationsPostedCount:I

.field private blacklist mNotificationsUpdatedCount:I

.field private final blacklist mPackageName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/usage/BroadcastResponseStats$1;

    invoke-direct {v0}, Landroid/app/usage/BroadcastResponseStats$1;-><init>()V

    sput-object v0, Landroid/app/usage/BroadcastResponseStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/usage/BroadcastResponseStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/usage/BroadcastResponseStats;->mId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/usage/BroadcastResponseStats;->mBroadcastsDispatchedCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/usage/BroadcastResponseStats;->mNotificationsPostedCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/usage/BroadcastResponseStats;->mNotificationsUpdatedCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/usage/BroadcastResponseStats;->mNotificationsCancelledCount:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/usage/BroadcastResponseStats-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/usage/BroadcastResponseStats;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/usage/BroadcastResponseStats;->mPackageName:Ljava/lang/String;

    iput-wide p2, p0, Landroid/app/usage/BroadcastResponseStats;->mId:J

    return-void
.end method


# virtual methods
.method public blacklist addCounts(Landroid/app/usage/BroadcastResponseStats;)V
    .locals 1

    invoke-virtual {p1}, Landroid/app/usage/BroadcastResponseStats;->getBroadcastsDispatchedCount()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/usage/BroadcastResponseStats;->incrementBroadcastsDispatchedCount(I)V

    invoke-virtual {p1}, Landroid/app/usage/BroadcastResponseStats;->getNotificationsPostedCount()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/usage/BroadcastResponseStats;->incrementNotificationsPostedCount(I)V

    invoke-virtual {p1}, Landroid/app/usage/BroadcastResponseStats;->getNotificationsUpdatedCount()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/usage/BroadcastResponseStats;->incrementNotificationsUpdatedCount(I)V

    invoke-virtual {p1}, Landroid/app/usage/BroadcastResponseStats;->getNotificationsCancelledCount()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/usage/BroadcastResponseStats;->incrementNotificationsCancelledCount(I)V

    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    instance-of v2, p1, Landroid/app/usage/BroadcastResponseStats;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/app/usage/BroadcastResponseStats;

    iget v3, p0, Landroid/app/usage/BroadcastResponseStats;->mBroadcastsDispatchedCount:I

    iget v4, v2, Landroid/app/usage/BroadcastResponseStats;->mBroadcastsDispatchedCount:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/app/usage/BroadcastResponseStats;->mNotificationsPostedCount:I

    iget v4, v2, Landroid/app/usage/BroadcastResponseStats;->mNotificationsPostedCount:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/app/usage/BroadcastResponseStats;->mNotificationsUpdatedCount:I

    iget v4, v2, Landroid/app/usage/BroadcastResponseStats;->mNotificationsUpdatedCount:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/app/usage/BroadcastResponseStats;->mNotificationsCancelledCount:I

    iget v4, v2, Landroid/app/usage/BroadcastResponseStats;->mNotificationsCancelledCount:I

    if-ne v3, v4, :cond_2

    iget-wide v3, p0, Landroid/app/usage/BroadcastResponseStats;->mId:J

    iget-wide v5, v2, Landroid/app/usage/BroadcastResponseStats;->mId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/app/usage/BroadcastResponseStats;->mPackageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/usage/BroadcastResponseStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist getBroadcastsDispatchedCount()I
    .locals 1

    iget v0, p0, Landroid/app/usage/BroadcastResponseStats;->mBroadcastsDispatchedCount:I

    return v0
.end method

.method public whitelist getId()J
    .locals 2

    iget-wide v0, p0, Landroid/app/usage/BroadcastResponseStats;->mId:J

    return-wide v0
.end method

.method public whitelist getNotificationsCancelledCount()I
    .locals 1

    iget v0, p0, Landroid/app/usage/BroadcastResponseStats;->mNotificationsCancelledCount:I

    return v0
.end method

.method public whitelist getNotificationsPostedCount()I
    .locals 1

    iget v0, p0, Landroid/app/usage/BroadcastResponseStats;->mNotificationsPostedCount:I

    return v0
.end method

.method public whitelist getNotificationsUpdatedCount()I
    .locals 1

    iget v0, p0, Landroid/app/usage/BroadcastResponseStats;->mNotificationsUpdatedCount:I

    return v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/usage/BroadcastResponseStats;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 6

    iget-object v0, p0, Landroid/app/usage/BroadcastResponseStats;->mPackageName:Ljava/lang/String;

    iget-wide v1, p0, Landroid/app/usage/BroadcastResponseStats;->mId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget v2, p0, Landroid/app/usage/BroadcastResponseStats;->mBroadcastsDispatchedCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/app/usage/BroadcastResponseStats;->mNotificationsPostedCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Landroid/app/usage/BroadcastResponseStats;->mNotificationsUpdatedCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Landroid/app/usage/BroadcastResponseStats;->mNotificationsCancelledCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist incrementBroadcastsDispatchedCount(I)V
    .locals 1

    iget v0, p0, Landroid/app/usage/BroadcastResponseStats;->mBroadcastsDispatchedCount:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/app/usage/BroadcastResponseStats;->mBroadcastsDispatchedCount:I

    return-void
.end method

.method public blacklist incrementNotificationsCancelledCount(I)V
    .locals 1

    iget v0, p0, Landroid/app/usage/BroadcastResponseStats;->mNotificationsCancelledCount:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/app/usage/BroadcastResponseStats;->mNotificationsCancelledCount:I

    return-void
.end method

.method public blacklist incrementNotificationsPostedCount(I)V
    .locals 1

    iget v0, p0, Landroid/app/usage/BroadcastResponseStats;->mNotificationsPostedCount:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/app/usage/BroadcastResponseStats;->mNotificationsPostedCount:I

    return-void
.end method

.method public blacklist incrementNotificationsUpdatedCount(I)V
    .locals 1

    iget v0, p0, Landroid/app/usage/BroadcastResponseStats;->mNotificationsUpdatedCount:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/app/usage/BroadcastResponseStats;->mNotificationsUpdatedCount:I

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stats {package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/usage/BroadcastResponseStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/app/usage/BroadcastResponseStats;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",broadcastsSent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/usage/BroadcastResponseStats;->mBroadcastsDispatchedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",notificationsPosted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/usage/BroadcastResponseStats;->mNotificationsPostedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",notificationsUpdated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/usage/BroadcastResponseStats;->mNotificationsUpdatedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",notificationsCancelled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/usage/BroadcastResponseStats;->mNotificationsCancelledCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Landroid/app/usage/BroadcastResponseStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget-wide v0, p0, Landroid/app/usage/BroadcastResponseStats;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/app/usage/BroadcastResponseStats;->mBroadcastsDispatchedCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/usage/BroadcastResponseStats;->mNotificationsPostedCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/usage/BroadcastResponseStats;->mNotificationsUpdatedCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/usage/BroadcastResponseStats;->mNotificationsCancelledCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
