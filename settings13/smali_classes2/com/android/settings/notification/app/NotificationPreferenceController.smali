.class public abstract Lcom/android/settings/notification/app/NotificationPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "NotificationPreferenceController.java"


# static fields
.field public static final CHANNEL_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation
.end field

.field public static final CHANNEL_GROUP_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation
.end field

.field public static final SYSTEM_WIDE_OFF:I = 0x0

.field public static final SYSTEM_WIDE_ON:I = 0x1


# instance fields
.field protected mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field protected mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

.field protected final mBackend:Lcom/android/settings/notification/NotificationBackend;

.field protected mChannel:Landroid/app/NotificationChannel;

.field protected mChannelGroup:Landroid/app/NotificationChannelGroup;

.field protected final mContext:Landroid/content/Context;

.field protected mConversationDrawable:Landroid/graphics/drawable/Drawable;

.field protected mConversationInfo:Landroid/content/pm/ShortcutInfo;

.field protected final mNm:Landroid/app/NotificationManager;

.field protected final mPm:Landroid/content/pm/PackageManager;

.field protected mPreferenceFilter:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final mUm:Landroid/os/UserManager;

.field overrideCanBlock:Z

.field overrideCanBlockValue:Z

.field overrideCanConfigure:Z

.field overrideCanConfigureValue:Z


# direct methods
.method public static synthetic $r8$lambda$Oj3-oPfwLxc5DNiRfFp3Yml7jV4(Landroid/app/NotificationChannelGroup;Landroid/app/NotificationChannelGroup;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/notification/app/NotificationPreferenceController;->lambda$static$0(Landroid/app/NotificationChannelGroup;Landroid/app/NotificationChannelGroup;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$cp1hBM48qGjEcqHBKd_zVUldkCw(Landroid/app/NotificationChannel;Landroid/app/NotificationChannel;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/notification/app/NotificationPreferenceController;->lambda$static$1(Landroid/app/NotificationChannel;Landroid/app/NotificationChannel;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 296
    new-instance v0, Lcom/android/settings/notification/app/NotificationPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/notification/app/NotificationPreferenceController$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/settings/notification/app/NotificationPreferenceController;->CHANNEL_GROUP_COMPARATOR:Ljava/util/Comparator;

    .line 307
    new-instance v0, Lcom/android/settings/notification/app/NotificationPreferenceController$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/settings/notification/app/NotificationPreferenceController$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/android/settings/notification/app/NotificationPreferenceController;->CHANNEL_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V
    .locals 1

    .line 88
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 89
    iput-object p1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "notification"

    .line 90
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mNm:Landroid/app/NotificationManager;

    .line 91
    iput-object p2, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    const-string/jumbo p2, "user"

    .line 92
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserManager;

    iput-object p2, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mUm:Landroid/os/UserManager;

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    return-void
.end method

.method private static synthetic lambda$static$0(Landroid/app/NotificationChannelGroup;Landroid/app/NotificationChannelGroup;)I
    .locals 1

    .line 299
    invoke-virtual {p0}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 301
    :cond_0
    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 p0, -0x1

    return p0

    .line 304
    :cond_1
    invoke-virtual {p0}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$static$1(Landroid/app/NotificationChannel;Landroid/app/NotificationChannel;)I
    .locals 2

    .line 308
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v0

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 309
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result p0

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result p0

    return p0

    .line 310
    :cond_0
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "miscellaneous"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 313
    :cond_1
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, -0x1

    return p0

    .line 317
    :cond_2
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method


# virtual methods
.method protected checkCanBeVisible(I)Z
    .locals 3

    .line 150
    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "ChannelPrefContr"

    const-string p1, "No channel"

    .line 151
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 155
    :cond_0
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p0

    const/16 v1, -0x3e8

    const/4 v2, 0x1

    if-ne p0, v1, :cond_1

    return v2

    :cond_1
    if-lt p0, p1, :cond_2

    move v0, v2

    :cond_2
    return v0
.end method

.method protected hasValidGroup()Z
    .locals 0

    .line 276
    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAvailable()Z
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 104
    :cond_0
    iget-boolean v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    if-eqz v0, :cond_1

    return v1

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    if-eqz v0, :cond_2

    .line 108
    invoke-virtual {v0}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 113
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mPreferenceFilter:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/notification/app/NotificationPreferenceController;->isIncludedInFilter()Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 116
    :cond_3
    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p0

    if-eqz p0, :cond_4

    move v1, v2

    :cond_4
    return v1

    .line 119
    :cond_5
    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v0, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget p0, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-static {v0, p0}, Lcom/android/settingslib/applications/AppUtils;->isDeepSleepingEnable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_6

    return v1

    :cond_6
    return v2
.end method

.method protected isChannelBlockable()Z
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/app/NotificationPreferenceController;->isChannelBlockable(Landroid/app/NotificationChannel;)Z

    move-result p0

    return p0
.end method

.method protected isChannelBlockable(Landroid/app/NotificationChannel;)Z
    .locals 1

    .line 173
    iget-boolean v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->overrideCanBlock:Z

    if-eqz v0, :cond_0

    .line 174
    iget-boolean p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->overrideCanBlockValue:Z

    return p0

    .line 176
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->overrideCanConfigure:Z

    if-eqz v0, :cond_1

    .line 177
    iget-boolean p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->overrideCanConfigureValue:Z

    return p0

    :cond_1
    if-eqz p1, :cond_2

    .line 179
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-eqz v0, :cond_2

    .line 181
    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    iget-object v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    invoke-static {p0, v0, p1}, Lcom/android/settingslib/SecNotificationBlockManager;->isBlockableNotificationChannel(Landroid/content/Context;Ljava/lang/String;Landroid/app/NotificationChannel;)Z

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method protected isChannelConfigurable()Z
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/app/NotificationPreferenceController;->isChannelConfigurable(Landroid/app/NotificationChannel;)Z

    move-result p0

    return p0
.end method

.method protected isChannelConfigurable(Landroid/app/NotificationChannel;)Z
    .locals 5

    .line 216
    iget-boolean v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->overrideCanConfigure:Z

    if-eqz v0, :cond_0

    .line 217
    iget-boolean p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->overrideCanConfigureValue:Z

    return p0

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 219
    iget-object v1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-eqz v1, :cond_5

    .line 221
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    .line 222
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "channel configurable : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " !["

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object p1, p1, Lcom/android/settings/notification/NotificationBackend$AppRow;->lockedChannelId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "ChannelPrefContr"

    invoke-static {v2, p1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object p1, p1, Lcom/android/settings/notification/NotificationBackend$AppRow;->lockedChannelId:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz p1, :cond_4

    if-nez v1, :cond_1

    goto :goto_2

    .line 226
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 227
    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object p0, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->lockedChannelId:Ljava/lang/String;

    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 228
    array-length p1, p0

    move v3, v0

    :goto_0
    if-ge v3, p1, :cond_4

    aget-object v4, p0, v3

    if-nez v4, :cond_2

    goto :goto_1

    .line 231
    :cond_2
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    return v0

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return v2

    :cond_5
    return v0
.end method

.method protected isChannelGroupBlockable()Z
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/app/NotificationPreferenceController;->isChannelGroupBlockable(Landroid/app/NotificationChannelGroup;)Z

    move-result p0

    return p0
.end method

.method protected isChannelGroupBlockable(Landroid/app/NotificationChannelGroup;)Z
    .locals 5

    .line 252
    iget-boolean v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->overrideCanBlock:Z

    if-eqz v0, :cond_0

    .line 253
    iget-boolean p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->overrideCanBlockValue:Z

    return p0

    .line 255
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->overrideCanConfigure:Z

    if-eqz v0, :cond_1

    .line 256
    iget-boolean p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->overrideCanConfigureValue:Z

    return p0

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 258
    iget-object v1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-eqz v1, :cond_5

    .line 260
    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->getChannels()Ljava/util/List;

    move-result-object v1

    .line 261
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannel;

    .line 262
    iget-object v3, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v4, v4, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Lcom/android/settingslib/SecNotificationBlockManager;->isBlockableNotificationChannel(Landroid/content/Context;Ljava/lang/String;Landroid/app/NotificationChannel;)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    .line 266
    :cond_3
    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean v0, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->systemApp:Z

    if-nez v0, :cond_4

    iget-boolean p0, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->lockedImportance:Z

    if-nez p0, :cond_4

    const/4 p0, 0x1

    return p0

    .line 270
    :cond_4
    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result p0

    return p0

    :cond_5
    return v0
.end method

.method protected final isDefaultChannel()Z
    .locals 1

    .line 280
    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 283
    :cond_0
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "miscellaneous"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method protected isFloatingIconBubble()Z
    .locals 2

    .line 322
    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "notification_bubbles"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method isIncludedInFilter()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onResume(Lcom/android/settings/notification/NotificationBackend$AppRow;Landroid/app/NotificationChannel;Landroid/app/NotificationChannelGroup;Landroid/graphics/drawable/Drawable;Landroid/content/pm/ShortcutInfo;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/notification/NotificationBackend$AppRow;",
            "Landroid/app/NotificationChannel;",
            "Landroid/app/NotificationChannelGroup;",
            "Landroid/graphics/drawable/Drawable;",
            "Landroid/content/pm/ShortcutInfo;",
            "Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 133
    iput-object p1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    .line 134
    iput-object p2, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    .line 135
    iput-object p3, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    .line 136
    iput-object p6, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 137
    iput-object p4, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mConversationDrawable:Landroid/graphics/drawable/Drawable;

    .line 138
    iput-object p5, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mConversationInfo:Landroid/content/pm/ShortcutInfo;

    .line 139
    iput-object p7, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mPreferenceFilter:Ljava/util/List;

    return-void
.end method

.method protected saveChannel()V
    .locals 3

    .line 163
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-eqz v1, :cond_0

    .line 164
    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v2, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v1, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {p0, v2, v1, v0}, Lcom/android/settings/notification/NotificationBackend;->updateChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    :cond_0
    return-void
.end method
