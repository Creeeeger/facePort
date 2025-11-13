.class public final Landroid/app/NotificationHistory;
.super Ljava/lang/Object;
.source "NotificationHistory.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/NotificationHistory$HistoricalNotification;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/NotificationHistory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mHistoryCount:I

.field private blacklist mIndex:I

.field private blacklist mNotificationsToWrite:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/NotificationHistory$HistoricalNotification;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mParcel:Landroid/os/Parcel;

.field private blacklist mStringPool:[Ljava/lang/String;

.field private blacklist mStringsToWrite:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/NotificationHistory$2;

    invoke-direct {v0}, Landroid/app/NotificationHistory$2;-><init>()V

    sput-object v0, Landroid/app/NotificationHistory;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/NotificationHistory;->mNotificationsToWrite:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/app/NotificationHistory;->mStringsToWrite:Ljava/util/Set;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/NotificationHistory;->mParcel:Landroid/os/Parcel;

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/NotificationHistory;->mIndex:I

    iput v0, p0, Landroid/app/NotificationHistory;->mHistoryCount:I

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/NotificationHistory;->mNotificationsToWrite:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/app/NotificationHistory;->mStringsToWrite:Ljava/util/Set;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/NotificationHistory;->mParcel:Landroid/os/Parcel;

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/NotificationHistory;->mIndex:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBlob()[B

    move-result-object v1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    array-length v3, v1

    invoke-virtual {v2, v1, v0, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/app/NotificationHistory;->mHistoryCount:I

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/app/NotificationHistory;->mIndex:I

    iget v3, p0, Landroid/app/NotificationHistory;->mHistoryCount:I

    if-lez v3, :cond_0

    invoke-virtual {v2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/app/NotificationHistory;->mStringPool:[Ljava/lang/String;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    iput-object v5, p0, Landroid/app/NotificationHistory;->mParcel:Landroid/os/Parcel;

    iget-object v5, p0, Landroid/app/NotificationHistory;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    iget-object v0, p0, Landroid/app/NotificationHistory;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    invoke-virtual {v0, v2, v5, v3}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    iget-object v0, p0, Landroid/app/NotificationHistory;->mParcel:Landroid/os/Parcel;

    iget-object v5, p0, Landroid/app/NotificationHistory;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->setDataSize(I)V

    iget-object v0, p0, Landroid/app/NotificationHistory;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    :cond_0
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/NotificationHistory-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/NotificationHistory;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist findStringIndex(Ljava/lang/String;)I
    .locals 4

    iget-object v0, p0, Landroid/app/NotificationHistory;->mStringPool:[Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "String \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is not in the string pool"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic blacklist lambda$addNotificationsForDump$2(Landroid/app/NotificationHistory$HistoricalNotification;Landroid/app/NotificationHistory$HistoricalNotification;)I
    .locals 4

    invoke-virtual {p0}, Landroid/app/NotificationHistory$HistoricalNotification;->getPostedTimeMs()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getPostedTimeMs()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    return v0
.end method

.method static synthetic blacklist lambda$addNotificationsToWrite$1(Landroid/app/NotificationHistory$HistoricalNotification;Landroid/app/NotificationHistory$HistoricalNotification;)I
    .locals 4

    invoke-virtual {p0}, Landroid/app/NotificationHistory$HistoricalNotification;->getPostedTimeMs()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getPostedTimeMs()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    return v0
.end method

.method static synthetic blacklist lambda$addNotificationsToWrite$3(Landroid/app/NotificationHistory$HistoricalNotification;Landroid/app/NotificationHistory$HistoricalNotification;)I
    .locals 4

    invoke-virtual {p0}, Landroid/app/NotificationHistory$HistoricalNotification;->getPostedTimeMs()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getPostedTimeMs()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    return v0
.end method

.method static synthetic blacklist lambda$addNotificationsToWriteForPkgName$0(Landroid/app/NotificationHistory$HistoricalNotification;Landroid/app/NotificationHistory$HistoricalNotification;)I
    .locals 4

    invoke-virtual {p0}, Landroid/app/NotificationHistory$HistoricalNotification;->getPostedTimeMs()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getPostedTimeMs()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private blacklist readNotificationFromParcel(Landroid/os/Parcel;)Landroid/app/NotificationHistory$HistoricalNotification;
    .locals 9

    new-instance v0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    invoke-direct {v0}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    if-ltz v1, :cond_0

    iget-object v3, p0, Landroid/app/NotificationHistory;->mStringPool:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {v0, v3}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->-$$Nest$fputmPackage(Landroid/app/NotificationHistory$HistoricalNotification$Builder;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {v0, v2}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->-$$Nest$fputmPackage(Landroid/app/NotificationHistory$HistoricalNotification$Builder;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ltz v3, :cond_1

    iget-object v4, p0, Landroid/app/NotificationHistory;->mStringPool:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v0, v4}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setChannelName(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v2}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setChannelName(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ltz v4, :cond_2

    iget-object v5, p0, Landroid/app/NotificationHistory;->mStringPool:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-virtual {v0, v5}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v2}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-ltz v5, :cond_3

    iget-object v6, p0, Landroid/app/NotificationHistory;->mStringPool:[Ljava/lang/String;

    aget-object v6, v6, v5

    invoke-virtual {v0, v6}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setConversationId(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    goto :goto_3

    :cond_3
    invoke-virtual {v0, v2}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setConversationId(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    :goto_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setUid(I)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setUserId(I)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setPostedTimeMs(J)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setTitle(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setText(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setSbnKey(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setType(I)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    invoke-virtual {v0, v6}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setChecked(Z)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_4

    goto :goto_4

    :cond_4
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    :goto_4
    invoke-virtual {v0, v2}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setUri(Landroid/net/Uri;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setWhen(J)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setExtraTitle(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, v2}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    :cond_5
    invoke-virtual {v0}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->build()Landroid/app/NotificationHistory$HistoricalNotification;

    move-result-object v2

    return-object v2
.end method

.method private blacklist writeNotificationToParcel(Landroid/app/NotificationHistory$HistoricalNotification;Landroid/os/Parcel;I)V
    .locals 6

    invoke-static {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->-$$Nest$fgetmPackage(Landroid/app/NotificationHistory$HistoricalNotification;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->-$$Nest$fgetmPackage(Landroid/app/NotificationHistory$HistoricalNotification;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/NotificationHistory;->findStringIndex(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getChannelName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getChannelName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/app/NotificationHistory;->findStringIndex(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, -0x1

    :goto_1
    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getChannelId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getChannelId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/app/NotificationHistory;->findStringIndex(Ljava/lang/String;)I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, -0x1

    :goto_2
    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getConversationId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getConversationId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/app/NotificationHistory;->findStringIndex(Ljava/lang/String;)I

    move-result v3

    goto :goto_3

    :cond_3
    const/4 v3, -0x1

    :goto_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getUid()I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getUserId()I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getPostedTimeMs()J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getSbnKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getType()I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getChecked()Z

    move-result v4

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getUri()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_4
    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getWhen()J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getExtraTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method


# virtual methods
.method public blacklist addNewNotificationToWrite(Landroid/app/NotificationHistory$HistoricalNotification;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/app/NotificationHistory;->mNotificationsToWrite:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget v0, p0, Landroid/app/NotificationHistory;->mHistoryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/app/NotificationHistory;->mHistoryCount:I

    return-void
.end method

.method public blacklist addNotificationToWrite(Landroid/app/NotificationHistory$HistoricalNotification;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/app/NotificationHistory;->mNotificationsToWrite:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Landroid/app/NotificationHistory;->mHistoryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/app/NotificationHistory;->mHistoryCount:I

    return-void
.end method

.method public blacklist addNotificationsForDump(Landroid/app/NotificationHistory;Ljava/lang/String;I)V
    .locals 3

    invoke-virtual {p1}, Landroid/app/NotificationHistory;->getNotificationsToWrite()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationHistory$HistoricalNotification;

    invoke-virtual {v1}, Landroid/app/NotificationHistory$HistoricalNotification;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/app/NotificationHistory;->addNotificationToWrite(Landroid/app/NotificationHistory$HistoricalNotification;)V

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/app/NotificationHistory;->mNotificationsToWrite:Ljava/util/List;

    new-instance v1, Landroid/app/NotificationHistory$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/app/NotificationHistory$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p0}, Landroid/app/NotificationHistory;->poolStringsFromNotifications()V

    return-void
.end method

.method public blacklist addNotificationsToWrite(Landroid/app/NotificationHistory;)V
    .locals 2

    invoke-virtual {p1}, Landroid/app/NotificationHistory;->getNotificationsToWrite()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationHistory$HistoricalNotification;

    invoke-virtual {p0, v1}, Landroid/app/NotificationHistory;->addNotificationToWrite(Landroid/app/NotificationHistory$HistoricalNotification;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/app/NotificationHistory;->mNotificationsToWrite:Ljava/util/List;

    new-instance v1, Landroid/app/NotificationHistory$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/app/NotificationHistory$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p0}, Landroid/app/NotificationHistory;->poolStringsFromNotifications()V

    return-void
.end method

.method public blacklist addNotificationsToWrite(Landroid/app/NotificationHistory;Ljava/lang/String;I)V
    .locals 3

    invoke-virtual {p1}, Landroid/app/NotificationHistory;->getNotificationsToWrite()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationHistory$HistoricalNotification;

    invoke-virtual {v1}, Landroid/app/NotificationHistory$HistoricalNotification;->getSbnKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/app/NotificationHistory;->addNotificationToWrite(Landroid/app/NotificationHistory$HistoricalNotification;)V

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/app/NotificationHistory;->mNotificationsToWrite:Ljava/util/List;

    new-instance v1, Landroid/app/NotificationHistory$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/app/NotificationHistory$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p0}, Landroid/app/NotificationHistory;->poolStringsFromNotifications()V

    return-void
.end method

.method public blacklist addNotificationsToWriteForPkgName(Landroid/app/NotificationHistory;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1}, Landroid/app/NotificationHistory;->getNotificationsToWrite()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationHistory$HistoricalNotification;

    invoke-virtual {v1}, Landroid/app/NotificationHistory$HistoricalNotification;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/app/NotificationHistory$HistoricalNotification;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/app/NotificationHistory$HistoricalNotification;->getExtraTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/app/NotificationHistory;->addNotificationToWrite(Landroid/app/NotificationHistory$HistoricalNotification;)V

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/app/NotificationHistory;->mNotificationsToWrite:Ljava/util/List;

    new-instance v1, Landroid/app/NotificationHistory$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroid/app/NotificationHistory$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p0}, Landroid/app/NotificationHistory;->poolStringsFromNotifications()V

    return-void
.end method

.method public blacklist addPooledStrings(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/NotificationHistory;->mStringsToWrite:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getHistoryCount()I
    .locals 1

    iget v0, p0, Landroid/app/NotificationHistory;->mHistoryCount:I

    return v0
.end method

.method public blacklist getNextNotification()Landroid/app/NotificationHistory$HistoricalNotification;
    .locals 3

    invoke-virtual {p0}, Landroid/app/NotificationHistory;->hasNextNotification()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Landroid/app/NotificationHistory;->mParcel:Landroid/os/Parcel;

    invoke-direct {p0, v0}, Landroid/app/NotificationHistory;->readNotificationFromParcel(Landroid/os/Parcel;)Landroid/app/NotificationHistory$HistoricalNotification;

    move-result-object v0

    iget v2, p0, Landroid/app/NotificationHistory;->mIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/app/NotificationHistory;->mIndex:I

    invoke-virtual {p0}, Landroid/app/NotificationHistory;->hasNextNotification()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/app/NotificationHistory;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    iput-object v1, p0, Landroid/app/NotificationHistory;->mParcel:Landroid/os/Parcel;

    :cond_1
    return-object v0
.end method

.method public blacklist getNotificationsToWrite()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/NotificationHistory$HistoricalNotification;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/NotificationHistory;->mNotificationsToWrite:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getPooledStringsToWrite()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroid/app/NotificationHistory;->mStringsToWrite:Ljava/util/Set;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    return-object v0
.end method

.method public blacklist hasNextNotification()Z
    .locals 2

    iget v0, p0, Landroid/app/NotificationHistory;->mIndex:I

    iget v1, p0, Landroid/app/NotificationHistory;->mHistoryCount:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist poolStringsFromNotifications()V
    .locals 4

    iget-object v0, p0, Landroid/app/NotificationHistory;->mStringsToWrite:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/app/NotificationHistory;->mNotificationsToWrite:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/app/NotificationHistory;->mNotificationsToWrite:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationHistory$HistoricalNotification;

    iget-object v2, p0, Landroid/app/NotificationHistory;->mStringsToWrite:Ljava/util/Set;

    invoke-virtual {v1}, Landroid/app/NotificationHistory$HistoricalNotification;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Landroid/app/NotificationHistory;->mStringsToWrite:Ljava/util/Set;

    invoke-virtual {v1}, Landroid/app/NotificationHistory$HistoricalNotification;->getChannelName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Landroid/app/NotificationHistory;->mStringsToWrite:Ljava/util/Set;

    invoke-virtual {v1}, Landroid/app/NotificationHistory$HistoricalNotification;->getChannelId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Landroid/app/NotificationHistory$HistoricalNotification;->getConversationId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/app/NotificationHistory;->mStringsToWrite:Ljava/util/Set;

    invoke-virtual {v1}, Landroid/app/NotificationHistory$HistoricalNotification;->getConversationId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public blacklist removeChannelFromWrite(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/app/NotificationHistory;->mNotificationsToWrite:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Landroid/app/NotificationHistory;->mNotificationsToWrite:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationHistory$HistoricalNotification;

    invoke-virtual {v2}, Landroid/app/NotificationHistory$HistoricalNotification;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/app/NotificationHistory$HistoricalNotification;->getChannelId()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    iget-object v3, p0, Landroid/app/NotificationHistory;->mNotificationsToWrite:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/app/NotificationHistory;->poolStringsFromNotifications()V

    :cond_2
    return v0
.end method

.method public blacklist removeConversationsFromWrite(Ljava/lang/String;Ljava/util/Set;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/app/NotificationHistory;->mNotificationsToWrite:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Landroid/app/NotificationHistory;->mNotificationsToWrite:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationHistory$HistoricalNotification;

    invoke-virtual {v2}, Landroid/app/NotificationHistory$HistoricalNotification;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/app/NotificationHistory$HistoricalNotification;->getConversationId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/app/NotificationHistory$HistoricalNotification;->getConversationId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    iget-object v3, p0, Landroid/app/NotificationHistory;->mNotificationsToWrite:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/app/NotificationHistory;->poolStringsFromNotifications()V

    :cond_2
    return v0
.end method

.method public blacklist removeImageNotificationsFromWrite(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/app/NotificationHistory;->mNotificationsToWrite:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/app/NotificationHistory;->mNotificationsToWrite:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationHistory$HistoricalNotification;

    if-eqz p3, :cond_0

    invoke-virtual {v3}, Landroid/app/NotificationHistory$HistoricalNotification;->getUri()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/app/NotificationHistory$HistoricalNotification;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v3}, Landroid/app/NotificationHistory$HistoricalNotification;->getSbnKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroid/app/NotificationHistory$HistoricalNotification;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v2, :cond_1

    const/4 v0, 0x1

    iget-object v4, p0, Landroid/app/NotificationHistory;->mNotificationsToWrite:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {v3}, Landroid/app/NotificationHistory$HistoricalNotification;->getUri()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/app/NotificationHistory$1;

    invoke-direct {v5, p0, v3}, Landroid/app/NotificationHistory$1;-><init>(Landroid/app/NotificationHistory;Landroid/app/NotificationHistory$HistoricalNotification;)V

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/app/NotificationHistory;->poolStringsFromNotifications()V

    :cond_3
    return v0
.end method

.method public blacklist removeNotificationFromWrite(Ljava/lang/String;J)Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/app/NotificationHistory;->mNotificationsToWrite:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Landroid/app/NotificationHistory;->mNotificationsToWrite:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationHistory$HistoricalNotification;

    invoke-virtual {v2}, Landroid/app/NotificationHistory$HistoricalNotification;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/app/NotificationHistory$HistoricalNotification;->getPostedTimeMs()J

    move-result-wide v3

    cmp-long v3, p2, v3

    if-nez v3, :cond_0

    const/4 v0, 0x1

    iget-object v3, p0, Landroid/app/NotificationHistory;->mNotificationsToWrite:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/app/NotificationHistory;->poolStringsFromNotifications()V

    :cond_2
    return v0
.end method

.method public blacklist removeNotificationsFromWrite(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/app/NotificationHistory;->mNotificationsToWrite:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroid/app/NotificationHistory;->mNotificationsToWrite:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationHistory$HistoricalNotification;

    invoke-virtual {v1}, Landroid/app/NotificationHistory$HistoricalNotification;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/NotificationHistory;->mNotificationsToWrite:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/NotificationHistory;->poolStringsFromNotifications()V

    return-void
.end method

.method public blacklist updateNotificationToWrite(Ljava/lang/String;Z)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/app/NotificationHistory;->mNotificationsToWrite:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_2

    if-eqz p2, :cond_0

    iget-object v3, p0, Landroid/app/NotificationHistory;->mNotificationsToWrite:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationHistory$HistoricalNotification;

    invoke-virtual {v3}, Landroid/app/NotificationHistory$HistoricalNotification;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    iget-object v3, p0, Landroid/app/NotificationHistory;->mNotificationsToWrite:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationHistory$HistoricalNotification;

    invoke-virtual {v3, v2}, Landroid/app/NotificationHistory$HistoricalNotification;->setChecked(Z)V

    goto :goto_1

    :cond_0
    iget-object v3, p0, Landroid/app/NotificationHistory;->mNotificationsToWrite:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationHistory$HistoricalNotification;

    invoke-virtual {v3}, Landroid/app/NotificationHistory$HistoricalNotification;->getSbnKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    iget-object v3, p0, Landroid/app/NotificationHistory;->mNotificationsToWrite:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationHistory$HistoricalNotification;

    invoke-virtual {v3, v2}, Landroid/app/NotificationHistory$HistoricalNotification;->setChecked(Z)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iget v1, p0, Landroid/app/NotificationHistory;->mHistoryCount:I

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/app/NotificationHistory;->mIndex:I

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/app/NotificationHistory;->mHistoryCount:I

    if-lez v1, :cond_3

    invoke-virtual {p0}, Landroid/app/NotificationHistory;->getPooledStringsToWrite()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/NotificationHistory;->mStringPool:[Ljava/lang/String;

    iget-object v1, p0, Landroid/app/NotificationHistory;->mStringPool:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object v1, p0, Landroid/app/NotificationHistory;->mNotificationsToWrite:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    const/4 v3, 0x0

    :goto_0
    iget v4, p0, Landroid/app/NotificationHistory;->mHistoryCount:I

    if-ge v3, v4, :cond_0

    iget-object v4, p0, Landroid/app/NotificationHistory;->mNotificationsToWrite:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationHistory$HistoricalNotification;

    invoke-direct {p0, v4, v1, p2}, Landroid/app/NotificationHistory;->writeNotificationToParcel(Landroid/app/NotificationHistory$HistoricalNotification;Landroid/os/Parcel;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    nop

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2

    :cond_1
    iget-object v1, p0, Landroid/app/NotificationHistory;->mParcel:Landroid/os/Parcel;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/app/NotificationHistory;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/app/NotificationHistory;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/app/NotificationHistory;->mParcel:Landroid/os/Parcel;

    iget-object v3, p0, Landroid/app/NotificationHistory;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Either mParcel or mNotificationsToWrite must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBlob([B)V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void
.end method
