.class public final Landroid/app/people/ConversationChannel;
.super Ljava/lang/Object;
.source "ConversationChannel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/people/ConversationChannel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mHasActiveNotifications:Z

.field private blacklist mHasBirthdayToday:Z

.field private blacklist mLastEventTimestamp:J

.field private blacklist mNotificationChannel:Landroid/app/NotificationChannel;

.field private blacklist mNotificationChannelGroup:Landroid/app/NotificationChannelGroup;

.field private blacklist mShortcutInfo:Landroid/content/pm/ShortcutInfo;

.field private blacklist mStatuses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/people/ConversationStatus;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mUid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/people/ConversationChannel$1;

    invoke-direct {v0}, Landroid/app/people/ConversationChannel$1;-><init>()V

    sput-object v0, Landroid/app/people/ConversationChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/pm/ShortcutInfo;ILandroid/app/NotificationChannel;Landroid/app/NotificationChannelGroup;JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/people/ConversationChannel;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    iput p2, p0, Landroid/app/people/ConversationChannel;->mUid:I

    iput-object p3, p0, Landroid/app/people/ConversationChannel;->mNotificationChannel:Landroid/app/NotificationChannel;

    iput-object p4, p0, Landroid/app/people/ConversationChannel;->mNotificationChannelGroup:Landroid/app/NotificationChannelGroup;

    iput-wide p5, p0, Landroid/app/people/ConversationChannel;->mLastEventTimestamp:J

    iput-boolean p7, p0, Landroid/app/people/ConversationChannel;->mHasActiveNotifications:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/pm/ShortcutInfo;ILandroid/app/NotificationChannel;Landroid/app/NotificationChannelGroup;JZZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ShortcutInfo;",
            "I",
            "Landroid/app/NotificationChannel;",
            "Landroid/app/NotificationChannelGroup;",
            "JZZ",
            "Ljava/util/List<",
            "Landroid/app/people/ConversationStatus;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/people/ConversationChannel;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    iput p2, p0, Landroid/app/people/ConversationChannel;->mUid:I

    iput-object p3, p0, Landroid/app/people/ConversationChannel;->mNotificationChannel:Landroid/app/NotificationChannel;

    iput-object p4, p0, Landroid/app/people/ConversationChannel;->mNotificationChannelGroup:Landroid/app/NotificationChannelGroup;

    iput-wide p5, p0, Landroid/app/people/ConversationChannel;->mLastEventTimestamp:J

    iput-boolean p7, p0, Landroid/app/people/ConversationChannel;->mHasActiveNotifications:Z

    iput-boolean p8, p0, Landroid/app/people/ConversationChannel;->mHasBirthdayToday:Z

    iput-object p9, p0, Landroid/app/people/ConversationChannel;->mStatuses:Ljava/util/List;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    iput-object v0, p0, Landroid/app/people/ConversationChannel;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/people/ConversationChannel;->mUid:I

    const-class v0, Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/app/NotificationChannel;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationChannel;

    iput-object v0, p0, Landroid/app/people/ConversationChannel;->mNotificationChannel:Landroid/app/NotificationChannel;

    const-class v0, Landroid/app/NotificationChannelGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/app/NotificationChannelGroup;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationChannelGroup;

    iput-object v0, p0, Landroid/app/people/ConversationChannel;->mNotificationChannelGroup:Landroid/app/NotificationChannelGroup;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/people/ConversationChannel;->mLastEventTimestamp:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/people/ConversationChannel;->mHasActiveNotifications:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/people/ConversationChannel;->mHasBirthdayToday:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/people/ConversationChannel;->mStatuses:Ljava/util/List;

    iget-object v0, p0, Landroid/app/people/ConversationChannel;->mStatuses:Ljava/util/List;

    const-class v1, Landroid/app/people/ConversationStatus;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/app/people/ConversationStatus;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getLastEventTimestamp()J
    .locals 2

    iget-wide v0, p0, Landroid/app/people/ConversationChannel;->mLastEventTimestamp:J

    return-wide v0
.end method

.method public blacklist getNotificationChannel()Landroid/app/NotificationChannel;
    .locals 1

    iget-object v0, p0, Landroid/app/people/ConversationChannel;->mNotificationChannel:Landroid/app/NotificationChannel;

    return-object v0
.end method

.method public blacklist getNotificationChannelGroup()Landroid/app/NotificationChannelGroup;
    .locals 1

    iget-object v0, p0, Landroid/app/people/ConversationChannel;->mNotificationChannelGroup:Landroid/app/NotificationChannelGroup;

    return-object v0
.end method

.method public blacklist getShortcutInfo()Landroid/content/pm/ShortcutInfo;
    .locals 1

    iget-object v0, p0, Landroid/app/people/ConversationChannel;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    return-object v0
.end method

.method public blacklist getStatuses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/people/ConversationStatus;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/people/ConversationChannel;->mStatuses:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getUid()I
    .locals 1

    iget v0, p0, Landroid/app/people/ConversationChannel;->mUid:I

    return v0
.end method

.method public blacklist hasActiveNotifications()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/people/ConversationChannel;->mHasActiveNotifications:Z

    return v0
.end method

.method public blacklist hasBirthdayToday()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/people/ConversationChannel;->mHasBirthdayToday:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConversationChannel{mShortcutInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/people/ConversationChannel;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/people/ConversationChannel;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNotificationChannel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/people/ConversationChannel;->mNotificationChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNotificationChannelGroup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/people/ConversationChannel;->mNotificationChannelGroup:Landroid/app/NotificationChannelGroup;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLastEventTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/app/people/ConversationChannel;->mLastEventTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHasActiveNotifications="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/people/ConversationChannel;->mHasActiveNotifications:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHasBirthdayToday="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/people/ConversationChannel;->mHasBirthdayToday:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStatuses="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/people/ConversationChannel;->mStatuses:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Landroid/app/people/ConversationChannel;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Landroid/app/people/ConversationChannel;->mUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/people/ConversationChannel;->mNotificationChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/app/people/ConversationChannel;->mNotificationChannelGroup:Landroid/app/NotificationChannelGroup;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-wide v0, p0, Landroid/app/people/ConversationChannel;->mLastEventTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Landroid/app/people/ConversationChannel;->mHasActiveNotifications:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/app/people/ConversationChannel;->mHasBirthdayToday:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/app/people/ConversationChannel;->mStatuses:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    return-void
.end method
