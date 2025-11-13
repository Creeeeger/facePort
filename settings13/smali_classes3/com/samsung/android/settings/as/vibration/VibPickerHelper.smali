.class public Lcom/samsung/android/settings/as/vibration/VibPickerHelper;
.super Ljava/lang/Object;
.source "VibPickerHelper.java"


# instance fields
.field private mCaller:Ljava/lang/String;

.field private final mContactPattern:Ljava/lang/String;

.field private final mContactSound:Landroid/net/Uri;

.field private final mContext:Landroid/content/Context;

.field private final mHasDefaultItem:Z

.field private final mIsDualSimActivated:Z

.field private final mIsFromContact:Z

.field private final mSoundPickerUri:Ljava/lang/String;

.field private final mType:I

.field private final mVibType:Lcom/samsung/android/settings/as/vibration/IVibPickerType;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->mContext:Landroid/content/Context;

    const-string v0, "vibration_type"

    const/4 v1, 0x0

    .line 46
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->mType:I

    const-string v2, "android.intent.extra.pattern.FROM_CONTACT"

    .line 47
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->mIsFromContact:Z

    const-string v4, "dual_sim_enabled"

    .line 48
    invoke-virtual {p2, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->mIsDualSimActivated:Z

    const-string v4, "picked_ringtone_uri"

    .line 49
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->mSoundPickerUri:Ljava/lang/String;

    const-string v4, "show_default"

    .line 50
    invoke-virtual {p2, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->mHasDefaultItem:Z

    const-string v1, "android.intent.extra.ringtone.EXISTING_URI"

    .line 51
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->mContactSound:Landroid/net/Uri;

    const-string v1, "android.intent.extra.pattern.EXISTING_URI"

    .line 52
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->mContactPattern:Ljava/lang/String;

    const-string v1, "from"

    .line 53
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->mCaller:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 55
    iput-object v2, p0, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->mCaller:Ljava/lang/String;

    goto :goto_0

    .line 56
    :cond_0
    invoke-static {p1}, Lcom/android/settings/Utils;->isSetOpenTheme(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 57
    iput-object p1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->mCaller:Ljava/lang/String;

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 60
    new-instance p1, Lcom/samsung/android/settings/as/vibration/VibPickerRingtoneType;

    invoke-direct {p1}, Lcom/samsung/android/settings/as/vibration/VibPickerRingtoneType;-><init>()V

    goto :goto_1

    .line 61
    :cond_2
    new-instance p1, Lcom/samsung/android/settings/as/vibration/VibPickerNotificationType;

    invoke-direct {p1}, Lcom/samsung/android/settings/as/vibration/VibPickerNotificationType;-><init>()V

    :goto_1
    iput-object p1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->mVibType:Lcom/samsung/android/settings/as/vibration/IVibPickerType;

    return-void
.end method

.method private isAuthorityAllowed(Landroid/net/Uri;)Z
    .locals 0

    .line 183
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/content/ContentProvider;->getAuthorityWithoutUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "settings"

    .line 184
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isDualSimEnabled()Z
    .locals 0

    .line 188
    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/as/utils/SimUtils;->isMultiSimEnabled(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getAudioUsage()I
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->mVibType:Lcom/samsung/android/settings/as/vibration/IVibPickerType;

    invoke-interface {p0}, Lcom/samsung/android/settings/as/vibration/IVibPickerType;->getAudioUsage()I

    move-result p0

    return p0
.end method

.method public getCaller()Ljava/lang/String;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->mCaller:Ljava/lang/String;

    return-object p0
.end method

.method public getContactPattern()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->mContactPattern:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "/"

    .line 128
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 129
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-object p0, p0, v0

    return-object p0
.end method

.method public getDatabaseTableName()Ljava/lang/String;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->mVibType:Lcom/samsung/android/settings/as/vibration/IVibPickerType;

    invoke-interface {p0}, Lcom/samsung/android/settings/as/vibration/IVibPickerType;->getDatabaseTableName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultSepIndex()I
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->mVibType:Lcom/samsung/android/settings/as/vibration/IVibPickerType;

    invoke-interface {p0}, Lcom/samsung/android/settings/as/vibration/IVibPickerType;->getDefaultSepIndex()I

    move-result p0

    return p0
.end method

.method public getNotificationSyncDisableReason()Ljava/lang/String;
    .locals 4

    .line 145
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->mContext:Landroid/content/Context;

    const/16 v2, 0x100

    invoke-static {v1, v2}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 149
    iget-object v3, p0, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Landroid/media/AudioManager;->hasHapticChannels(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    goto :goto_1

    .line 150
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/samsung/android/settings/as/utils/SimUtils;->getSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-eqz v1, :cond_3

    .line 152
    iget-object v3, p0, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Landroid/media/AudioManager;->hasHapticChannels(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    move-object p0, v2

    goto :goto_3

    .line 153
    :cond_3
    :goto_2
    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/samsung/android/settings/as/utils/SimUtils;->getSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    :goto_3
    const-string v1, ")"

    const-string v3, " ("

    if-eqz v0, :cond_4

    if-eqz p0, :cond_4

    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    if-eqz p0, :cond_5

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    if-eqz v0, :cond_6

    .line 161
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    return-object v2
.end method

.method public getRepeat()I
    .locals 0

    .line 167
    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->mVibType:Lcom/samsung/android/settings/as/vibration/IVibPickerType;

    invoke-interface {p0}, Lcom/samsung/android/settings/as/vibration/IVibPickerType;->getRepeat()I

    move-result p0

    return p0
.end method

.method public getSepIndexDbName()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->mVibType:Lcom/samsung/android/settings/as/vibration/IVibPickerType;

    iget-boolean p0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->mIsDualSimActivated:Z

    invoke-interface {v0, p0}, Lcom/samsung/android/settings/as/vibration/IVibPickerType;->getSepIndexDbName(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSoundType()I
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->mVibType:Lcom/samsung/android/settings/as/vibration/IVibPickerType;

    iget-boolean p0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->mIsDualSimActivated:Z

    invoke-interface {v0, p0}, Lcom/samsung/android/settings/as/vibration/IVibPickerType;->getSoundType(Z)I

    move-result p0

    return p0
.end method

.method public getSoundUri()Landroid/net/Uri;
    .locals 3

    .line 73
    iget-boolean v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->mIsFromContact:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 74
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->mContactSound:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "content://settings/system/ringtone"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->mContactSound:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->isAuthorityAllowed(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->getSoundType()I

    move-result p0

    invoke-static {v0, p0}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v1

    .line 80
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->mContactSound:Landroid/net/Uri;

    return-object p0

    .line 83
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->mSoundPickerUri:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 84
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->getSoundType()I

    move-result p0

    invoke-static {v0, p0}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_3
    const-string v2, "unknown_ringtone"

    .line 87
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 88
    :cond_4
    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->mSoundPickerUri:Ljava/lang/String;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public getSyncItemTitle()I
    .locals 0

    .line 179
    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->mVibType:Lcom/samsung/android/settings/as/vibration/IVibPickerType;

    invoke-interface {p0}, Lcom/samsung/android/settings/as/vibration/IVibPickerType;->getSyncItemTitle()I

    move-result p0

    return p0
.end method

.method public getSyncWithHapticDbName()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->mVibType:Lcom/samsung/android/settings/as/vibration/IVibPickerType;

    iget-boolean p0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->mIsDualSimActivated:Z

    invoke-interface {v0, p0}, Lcom/samsung/android/settings/as/vibration/IVibPickerType;->getSyncWithHapticDbName(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()I
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->mVibType:Lcom/samsung/android/settings/as/vibration/IVibPickerType;

    invoke-interface {p0}, Lcom/samsung/android/settings/as/vibration/IVibPickerType;->getTitle()I

    move-result p0

    return p0
.end method

.method public getType()I
    .locals 0

    .line 113
    iget p0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->mType:I

    return p0
.end method

.method public getVibrationUsage()I
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->mVibType:Lcom/samsung/android/settings/as/vibration/IVibPickerType;

    invoke-interface {p0}, Lcom/samsung/android/settings/as/vibration/IVibPickerType;->getVibrationUsage()I

    move-result p0

    return p0
.end method

.method public hasDefaultItem()Z
    .locals 0

    .line 121
    iget-boolean p0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->mHasDefaultItem:Z

    return p0
.end method

.method public hasNotificationSyncDisableReason()Z
    .locals 1

    .line 137
    invoke-virtual {p0}, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->isNotificationType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-direct {p0}, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->isDualSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->getNotificationSyncDisableReason()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFromContact()Z
    .locals 0

    .line 109
    iget-boolean p0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->mIsFromContact:Z

    return p0
.end method

.method public isNotificationType()Z
    .locals 1

    .line 133
    iget p0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->mType:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
