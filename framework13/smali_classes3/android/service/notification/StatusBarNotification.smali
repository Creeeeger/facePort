.class public Landroid/service/notification/StatusBarNotification;
.super Ljava/lang/Object;
.source "StatusBarNotification.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation
.end field

.field static final blacklist MAX_LOG_TAG_LENGTH:I = 0x24


# instance fields
.field private greylist-max-o groupKey:Ljava/lang/String;

.field private final greylist id:I

.field private final greylist-max-p initialPid:I

.field private final greylist-max-o key:Ljava/lang/String;

.field private greylist-max-o mContext:Landroid/content/Context;

.field private blacklist mInstanceId:Lcom/android/internal/logging/InstanceId;

.field private final greylist-max-p notification:Landroid/app/Notification;

.field private final greylist-max-o opPkg:Ljava/lang/String;

.field private greylist-max-o overrideGroupKey:Ljava/lang/String;

.field private final greylist pkg:Ljava/lang/String;

.field private final greylist-max-p postTime:J

.field private final greylist-max-p tag:Ljava/lang/String;

.field private final greylist uid:I

.field private final greylist-max-p user:Landroid/os/UserHandle;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 247
    new-instance v0, Landroid/service/notification/StatusBarNotification$1;

    invoke-direct {v0}, Landroid/service/notification/StatusBarNotification$1;-><init>()V

    sput-object v0, Landroid/service/notification/StatusBarNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->opPkg:Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/notification/StatusBarNotification;->id:I

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->tag:Ljava/lang/String;

    goto :goto_0

    .line 125
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->tag:Ljava/lang/String;

    .line 127
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/notification/StatusBarNotification;->uid:I

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/notification/StatusBarNotification;->initialPid:I

    .line 129
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0, p1}, Landroid/app/Notification;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    .line 130
    invoke-static {p1}, Landroid/os/UserHandle;->readFromParcel(Landroid/os/Parcel;)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->user:Landroid/os/UserHandle;

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/service/notification/StatusBarNotification;->postTime:J

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->overrideGroupKey:Ljava/lang/String;

    .line 135
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 136
    sget-object v0, Lcom/android/internal/logging/InstanceId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/logging/InstanceId;

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->mInstanceId:Lcom/android/internal/logging/InstanceId;

    .line 138
    :cond_2
    invoke-direct {p0}, Landroid/service/notification/StatusBarNotification;->key()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->key:Ljava/lang/String;

    .line 139
    invoke-direct {p0}, Landroid/service/notification/StatusBarNotification;->groupKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->groupKey:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILandroid/app/Notification;Landroid/os/UserHandle;J)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "uid"    # I
    .param p6, "initialPid"    # I
    .param p7, "score"    # I
    .param p8, "notification"    # Landroid/app/Notification;
    .param p9, "user"    # Landroid/os/UserHandle;
    .param p10, "postTime"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    if-eqz p1, :cond_1

    .line 103
    if-eqz p8, :cond_0

    .line 105
    iput-object p1, p0, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    .line 106
    iput-object p2, p0, Landroid/service/notification/StatusBarNotification;->opPkg:Ljava/lang/String;

    .line 107
    iput p3, p0, Landroid/service/notification/StatusBarNotification;->id:I

    .line 108
    iput-object p4, p0, Landroid/service/notification/StatusBarNotification;->tag:Ljava/lang/String;

    .line 109
    iput p5, p0, Landroid/service/notification/StatusBarNotification;->uid:I

    .line 110
    iput p6, p0, Landroid/service/notification/StatusBarNotification;->initialPid:I

    .line 111
    iput-object p8, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    .line 112
    iput-object p9, p0, Landroid/service/notification/StatusBarNotification;->user:Landroid/os/UserHandle;

    .line 113
    iput-wide p10, p0, Landroid/service/notification/StatusBarNotification;->postTime:J

    .line 114
    invoke-direct {p0}, Landroid/service/notification/StatusBarNotification;->key()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->key:Ljava/lang/String;

    .line 115
    invoke-direct {p0}, Landroid/service/notification/StatusBarNotification;->groupKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->groupKey:Ljava/lang/String;

    .line 116
    return-void

    .line 103
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 102
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILandroid/app/Notification;Landroid/os/UserHandle;Ljava/lang/String;J)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "uid"    # I
    .param p6, "initialPid"    # I
    .param p7, "notification"    # Landroid/app/Notification;
    .param p8, "user"    # Landroid/os/UserHandle;
    .param p9, "overrideGroupKey"    # Ljava/lang/String;
    .param p10, "postTime"    # J

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    if-eqz p1, :cond_1

    .line 79
    if-eqz p7, :cond_0

    .line 81
    iput-object p1, p0, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    .line 82
    iput-object p2, p0, Landroid/service/notification/StatusBarNotification;->opPkg:Ljava/lang/String;

    .line 83
    iput p3, p0, Landroid/service/notification/StatusBarNotification;->id:I

    .line 84
    iput-object p4, p0, Landroid/service/notification/StatusBarNotification;->tag:Ljava/lang/String;

    .line 85
    iput p5, p0, Landroid/service/notification/StatusBarNotification;->uid:I

    .line 86
    iput p6, p0, Landroid/service/notification/StatusBarNotification;->initialPid:I

    .line 87
    iput-object p7, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    .line 88
    iput-object p8, p0, Landroid/service/notification/StatusBarNotification;->user:Landroid/os/UserHandle;

    .line 89
    iput-wide p10, p0, Landroid/service/notification/StatusBarNotification;->postTime:J

    .line 90
    iput-object p9, p0, Landroid/service/notification/StatusBarNotification;->overrideGroupKey:Ljava/lang/String;

    .line 91
    invoke-direct {p0}, Landroid/service/notification/StatusBarNotification;->key()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->key:Ljava/lang/String;

    .line 92
    invoke-direct {p0}, Landroid/service/notification/StatusBarNotification;->groupKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->groupKey:Ljava/lang/String;

    .line 93
    return-void

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 78
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static blacklist getPkgFromKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .line 162
    const-string v0, "\\|"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "parts":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 164
    const/4 v1, 0x1

    aget-object v1, v0, v1

    return-object v1

    .line 166
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist getUidFromKey(Ljava/lang/String;)I
    .locals 4
    .param p0, "key"    # Ljava/lang/String;

    .line 146
    const-string v0, "\\|"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "parts":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, -0x1

    const/4 v3, 0x5

    if-lt v1, v3, :cond_0

    .line 149
    const/4 v1, 0x4

    :try_start_0
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .local v1, "uid":I
    return v1

    .line 151
    .end local v1    # "uid":I
    :catch_0
    move-exception v1

    .line 152
    .local v1, "e":Ljava/lang/NumberFormatException;
    return v2

    .line 155
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    return v2
.end method

.method private greylist-max-o groupKey()Ljava/lang/String;
    .locals 5

    .line 178
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->overrideGroupKey:Ljava/lang/String;

    const-string/jumbo v1, "|"

    if-eqz v0, :cond_0

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/service/notification/StatusBarNotification;->user:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|g:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/StatusBarNotification;->overrideGroupKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 181
    :cond_0
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "group":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->getSortKey()Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, "sortKey":Ljava/lang/String;
    if-nez v0, :cond_1

    if-nez v2, :cond_1

    .line 185
    iget-object v1, p0, Landroid/service/notification/StatusBarNotification;->key:Ljava/lang/String;

    return-object v1

    .line 187
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/service/notification/StatusBarNotification;->user:Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 188
    if-nez v0, :cond_2

    .line 189
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "c:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    invoke-virtual {v4}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 190
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "g:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 187
    return-object v1
.end method

.method private greylist-max-o key()Ljava/lang/String;
    .locals 3

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/service/notification/StatusBarNotification;->user:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/service/notification/StatusBarNotification;->id:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/service/notification/StatusBarNotification;->tag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/service/notification/StatusBarNotification;->uid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, "sbnKey":Ljava/lang/String;
    iget-object v2, p0, Landroid/service/notification/StatusBarNotification;->overrideGroupKey:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/notification/StatusBarNotification;->overrideGroupKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    :cond_0
    return-object v0
.end method

.method private blacklist shortenTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "logTag"    # Ljava/lang/String;

    .line 546
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x24

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 549
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 550
    .local v0, "hash":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v1, v4

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 547
    .end local v0    # "hash":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p1
.end method


# virtual methods
.method public blacklist clearPackageContext()V
    .locals 1

    .line 440
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->mContext:Landroid/content/Context;

    .line 441
    return-void
.end method

.method public whitelist clone()Landroid/service/notification/StatusBarNotification;
    .locals 1

    .line 269
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    invoke-virtual {v0}, Landroid/app/Notification;->clone()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/service/notification/StatusBarNotification;->cloneShallow(Landroid/app/Notification;)Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 45
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->clone()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o cloneLight()Landroid/service/notification/StatusBarNotification;
    .locals 3

    .line 262
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 263
    .local v0, "no":Landroid/app/Notification;
    iget-object v1, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/Notification;->cloneInto(Landroid/app/Notification;Z)V

    .line 264
    invoke-virtual {p0, v0}, Landroid/service/notification/StatusBarNotification;->cloneShallow(Landroid/app/Notification;)Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    return-object v1
.end method

.method blacklist cloneShallow(Landroid/app/Notification;)Landroid/service/notification/StatusBarNotification;
    .locals 13
    .param p1, "notification"    # Landroid/app/Notification;

    .line 277
    new-instance v12, Landroid/service/notification/StatusBarNotification;

    iget-object v1, p0, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    iget-object v2, p0, Landroid/service/notification/StatusBarNotification;->opPkg:Ljava/lang/String;

    iget v3, p0, Landroid/service/notification/StatusBarNotification;->id:I

    iget-object v4, p0, Landroid/service/notification/StatusBarNotification;->tag:Ljava/lang/String;

    iget v5, p0, Landroid/service/notification/StatusBarNotification;->uid:I

    iget v6, p0, Landroid/service/notification/StatusBarNotification;->initialPid:I

    iget-object v8, p0, Landroid/service/notification/StatusBarNotification;->user:Landroid/os/UserHandle;

    iget-object v9, p0, Landroid/service/notification/StatusBarNotification;->overrideGroupKey:Ljava/lang/String;

    iget-wide v10, p0, Landroid/service/notification/StatusBarNotification;->postTime:J

    move-object v0, v12

    move-object v7, p1

    invoke-direct/range {v0 .. v11}, Landroid/service/notification/StatusBarNotification;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILandroid/app/Notification;Landroid/os/UserHandle;Ljava/lang/String;J)V

    .line 280
    .local v0, "result":Landroid/service/notification/StatusBarNotification;
    iget-object v1, p0, Landroid/service/notification/StatusBarNotification;->mInstanceId:Lcom/android/internal/logging/InstanceId;

    invoke-virtual {v0, v1}, Landroid/service/notification/StatusBarNotification;->setInstanceId(Lcom/android/internal/logging/InstanceId;)V

    .line 281
    return-object v0
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 243
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getChannelIdLogTag()Ljava/lang/String;
    .locals 1

    .line 535
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    invoke-virtual {v0}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 536
    const/4 v0, 0x0

    return-object v0

    .line 538
    :cond_0
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    invoke-virtual {v0}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/service/notification/StatusBarNotification;->shortenTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getGroup()Ljava/lang/String;
    .locals 1

    .line 415
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->overrideGroupKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 416
    return-object v0

    .line 418
    :cond_0
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getGroupKey()Ljava/lang/String;
    .locals 1

    .line 406
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->groupKey:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getGroupLogTag()Ljava/lang/String;
    .locals 1

    .line 525
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getGroup()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/service/notification/StatusBarNotification;->shortenTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getId()I
    .locals 1

    .line 339
    iget v0, p0, Landroid/service/notification/StatusBarNotification;->id:I

    return v0
.end method

.method public greylist getInitialPid()I
    .locals 1

    .line 369
    iget v0, p0, Landroid/service/notification/StatusBarNotification;->initialPid:I

    return v0
.end method

.method public blacklist getInstanceId()Lcom/android/internal/logging/InstanceId;
    .locals 1

    .line 447
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->mInstanceId:Lcom/android/internal/logging/InstanceId;

    return-object v0
.end method

.method public whitelist getKey()Ljava/lang/String;
    .locals 1

    .line 399
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->key:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getLogMaker()Landroid/metrics/LogMaker;
    .locals 5

    .line 485
    new-instance v0, Landroid/metrics/LogMaker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 486
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x31c

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 487
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x31d

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 488
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getChannelIdLogTag()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x359

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 489
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getGroupLogTag()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3b2

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 491
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 490
    const/16 v2, 0x3b3

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    const/16 v1, 0x669

    .line 493
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 492
    invoke-virtual {v0, v1, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 494
    .local v0, "logMaker":Landroid/metrics/LogMaker;
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    .line 497
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.template"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 498
    .local v1, "template":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 499
    const/16 v2, 0x6d1

    .line 500
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 499
    invoke-virtual {v0, v2, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 502
    :cond_0
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.people.list"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 504
    .local v2, "people":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Person;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 505
    const/16 v3, 0x6d0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 508
    .end local v1    # "template":Ljava/lang/String;
    .end local v2    # "people":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Person;>;"
    :cond_1
    return-object v0
.end method

.method public blacklist getNormalizedUserId()I
    .locals 2

    .line 325
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    .line 326
    .local v0, "userId":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 327
    const/4 v0, 0x0

    .line 329
    :cond_0
    return v0
.end method

.method public whitelist getNotification()Landroid/app/Notification;
    .locals 1

    .line 377
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    return-object v0
.end method

.method public whitelist getOpPkg()Ljava/lang/String;
    .locals 1

    .line 363
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->opPkg:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getOverrideGroupKey()Ljava/lang/String;
    .locals 1

    .line 433
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->overrideGroupKey:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-r getPackageContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 462
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 464
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    const/16 v2, 0x2000

    .line 466
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNormalizedUserId()I

    move-result v3

    .line 465
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 467
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Landroid/service/notification/StatusBarNotification;->mContext:Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    goto :goto_0

    .line 469
    :catch_0
    move-exception v0

    .line 470
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/service/notification/StatusBarNotification;->mContext:Landroid/content/Context;

    .line 473
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 474
    iput-object p1, p0, Landroid/service/notification/StatusBarNotification;->mContext:Landroid/content/Context;

    .line 476
    :cond_1
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .locals 1

    .line 334
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPostTime()J
    .locals 2

    .line 392
    iget-wide v0, p0, Landroid/service/notification/StatusBarNotification;->postTime:J

    return-wide v0
.end method

.method public blacklist getShortcutId()Ljava/lang/String;
    .locals 1

    .line 515
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getShortcutId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTag()Ljava/lang/String;
    .locals 1

    .line 347
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getUid()I
    .locals 1

    .line 354
    iget v0, p0, Landroid/service/notification/StatusBarNotification;->uid:I

    return v0
.end method

.method public whitelist getUser()Landroid/os/UserHandle;
    .locals 1

    .line 384
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->user:Landroid/os/UserHandle;

    return-object v0
.end method

.method public whitelist getUserId()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 317
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->user:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    return v0
.end method

.method public whitelist isAppGroup()Z
    .locals 1

    .line 207
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getSortKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 210
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 208
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist isClearable()Z
    .locals 1

    .line 306
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isGroup()Z
    .locals 1

    .line 197
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->overrideGroupKey:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->isAppGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 200
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 198
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist isOngoing()Z
    .locals 1

    .line 297
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist setInstanceId(Lcom/android/internal/logging/InstanceId;)V
    .locals 0
    .param p1, "instanceId"    # Lcom/android/internal/logging/InstanceId;

    .line 454
    iput-object p1, p0, Landroid/service/notification/StatusBarNotification;->mInstanceId:Lcom/android/internal/logging/InstanceId;

    .line 455
    return-void
.end method

.method public whitelist setOverrideGroupKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "overrideGroupKey"    # Ljava/lang/String;

    .line 425
    iput-object p1, p0, Landroid/service/notification/StatusBarNotification;->overrideGroupKey:Ljava/lang/String;

    .line 426
    invoke-direct {p0}, Landroid/service/notification/StatusBarNotification;->groupKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->groupKey:Ljava/lang/String;

    .line 427
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 286
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/service/notification/StatusBarNotification;->user:Landroid/os/UserHandle;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/service/notification/StatusBarNotification;->id:I

    .line 288
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/service/notification/StatusBarNotification;->tag:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/service/notification/StatusBarNotification;->key:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 286
    const-string v1, "StatusBarNotification(pkg=%s user=%s id=%d tag=%s key=%s: %s)"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 214
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->opPkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 216
    iget v0, p0, Landroid/service/notification/StatusBarNotification;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->tag:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->tag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 221
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    :goto_0
    iget v0, p0, Landroid/service/notification/StatusBarNotification;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 224
    iget v0, p0, Landroid/service/notification/StatusBarNotification;->initialPid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 225
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    invoke-virtual {v0, p1, p2}, Landroid/app/Notification;->writeToParcel(Landroid/os/Parcel;I)V

    .line 226
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, p2}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 227
    iget-wide v3, p0, Landroid/service/notification/StatusBarNotification;->postTime:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 228
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->overrideGroupKey:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 229
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->overrideGroupKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 232
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    :goto_1
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->mInstanceId:Lcom/android/internal/logging/InstanceId;

    if-eqz v0, :cond_2

    .line 235
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->mInstanceId:Lcom/android/internal/logging/InstanceId;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/logging/InstanceId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 238
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    :goto_2
    return-void
.end method
