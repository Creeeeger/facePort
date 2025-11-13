.class public final Landroid/service/notification/ConversationChannelWrapper;
.super Ljava/lang/Object;
.source "ConversationChannelWrapper.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/notification/ConversationChannelWrapper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mGroupLabel:Ljava/lang/CharSequence;

.field private blacklist mNotificationChannel:Landroid/app/NotificationChannel;

.field private blacklist mParentChannelLabel:Ljava/lang/CharSequence;

.field private blacklist mPkg:Ljava/lang/String;

.field private blacklist mShortcutInfo:Landroid/content/pm/ShortcutInfo;

.field private blacklist mUid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/service/notification/ConversationChannelWrapper$1;

    invoke-direct {v0}, Landroid/service/notification/ConversationChannelWrapper$1;-><init>()V

    sput-object v0, Landroid/service/notification/ConversationChannelWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/app/NotificationChannel;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationChannel;

    iput-object v0, p0, Landroid/service/notification/ConversationChannelWrapper;->mNotificationChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/ConversationChannelWrapper;->mGroupLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/ConversationChannelWrapper;->mParentChannelLabel:Ljava/lang/CharSequence;

    const-class v0, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    iput-object v0, p0, Landroid/service/notification/ConversationChannelWrapper;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readStringNoHelper()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/ConversationChannelWrapper;->mPkg:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/notification/ConversationChannelWrapper;->mUid:I

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/service/notification/ConversationChannelWrapper;

    invoke-virtual {p0}, Landroid/service/notification/ConversationChannelWrapper;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object v3

    invoke-virtual {v2}, Landroid/service/notification/ConversationChannelWrapper;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/service/notification/ConversationChannelWrapper;->getGroupLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2}, Landroid/service/notification/ConversationChannelWrapper;->getGroupLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/service/notification/ConversationChannelWrapper;->getParentChannelLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2}, Landroid/service/notification/ConversationChannelWrapper;->getParentChannelLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/service/notification/ConversationChannelWrapper;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v3

    invoke-virtual {v2}, Landroid/service/notification/ConversationChannelWrapper;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/service/notification/ConversationChannelWrapper;->getPkg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/service/notification/ConversationChannelWrapper;->getPkg()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/service/notification/ConversationChannelWrapper;->getUid()I

    move-result v3

    invoke-virtual {v2}, Landroid/service/notification/ConversationChannelWrapper;->getUid()I

    move-result v4

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public blacklist getGroupLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/service/notification/ConversationChannelWrapper;->mGroupLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getNotificationChannel()Landroid/app/NotificationChannel;
    .locals 1

    iget-object v0, p0, Landroid/service/notification/ConversationChannelWrapper;->mNotificationChannel:Landroid/app/NotificationChannel;

    return-object v0
.end method

.method public blacklist getParentChannelLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/service/notification/ConversationChannelWrapper;->mParentChannelLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getPkg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/service/notification/ConversationChannelWrapper;->mPkg:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getShortcutInfo()Landroid/content/pm/ShortcutInfo;
    .locals 1

    iget-object v0, p0, Landroid/service/notification/ConversationChannelWrapper;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    return-object v0
.end method

.method public blacklist getUid()I
    .locals 1

    iget v0, p0, Landroid/service/notification/ConversationChannelWrapper;->mUid:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 6

    invoke-virtual {p0}, Landroid/service/notification/ConversationChannelWrapper;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-virtual {p0}, Landroid/service/notification/ConversationChannelWrapper;->getGroupLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Landroid/service/notification/ConversationChannelWrapper;->getParentChannelLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0}, Landroid/service/notification/ConversationChannelWrapper;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v3

    invoke-virtual {p0}, Landroid/service/notification/ConversationChannelWrapper;->getPkg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/service/notification/ConversationChannelWrapper;->getUid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist setGroupLabel(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroid/service/notification/ConversationChannelWrapper;->mGroupLabel:Ljava/lang/CharSequence;

    return-void
.end method

.method public blacklist setNotificationChannel(Landroid/app/NotificationChannel;)V
    .locals 0

    iput-object p1, p0, Landroid/service/notification/ConversationChannelWrapper;->mNotificationChannel:Landroid/app/NotificationChannel;

    return-void
.end method

.method public blacklist setParentChannelLabel(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroid/service/notification/ConversationChannelWrapper;->mParentChannelLabel:Ljava/lang/CharSequence;

    return-void
.end method

.method public blacklist setPkg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/service/notification/ConversationChannelWrapper;->mPkg:Ljava/lang/String;

    return-void
.end method

.method public blacklist setShortcutInfo(Landroid/content/pm/ShortcutInfo;)V
    .locals 0

    iput-object p1, p0, Landroid/service/notification/ConversationChannelWrapper;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    return-void
.end method

.method public blacklist setUid(I)V
    .locals 0

    iput p1, p0, Landroid/service/notification/ConversationChannelWrapper;->mUid:I

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/service/notification/ConversationChannelWrapper;->mNotificationChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/service/notification/ConversationChannelWrapper;->mGroupLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/service/notification/ConversationChannelWrapper;->mParentChannelLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/service/notification/ConversationChannelWrapper;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/service/notification/ConversationChannelWrapper;->mPkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringNoHelper(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/notification/ConversationChannelWrapper;->mUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
