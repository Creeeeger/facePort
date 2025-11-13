.class public Lcom/samsung/android/settings/as/widget/SecVolumeIcon;
.super Landroid/widget/FrameLayout;
.source "SecVolumeIcon.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentMediaIconState:I

.field private mHelper:Lcom/samsung/android/settings/as/utils/SecAudioHelper;

.field private mIcon:Landroid/view/View;

.field private mIconActiveColor:Landroid/content/res/ColorStateList;

.field private mIconEarShockColor:Landroid/content/res/ColorStateList;

.field private mIconMutedColor:Landroid/content/res/ColorStateList;

.field private mIconType:I

.field private mIsAnimatedType:Z

.field private mMuteIcons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNormalIcons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSecVolumeIconMotion:Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;

.field private mShouldUpdateIcon:Z

.field private mStream:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mNormalIcons:Ljava/util/HashMap;

    .line 37
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mMuteIcons:Ljava/util/HashMap;

    const/4 p2, -0x1

    .line 42
    iput p2, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mCurrentMediaIconState:I

    .line 51
    iput p2, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mIconType:I

    .line 55
    iput-object p1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mContext:Landroid/content/Context;

    .line 56
    iget-object p2, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mNormalIcons:Ljava/util/HashMap;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v1, Lcom/android/settings/R$drawable;->tw_ic_audio_sound_ringtone:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object p2, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mNormalIcons:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/android/settings/R$drawable;->tw_ic_audio_media_note:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object p2, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mNormalIcons:Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/android/settings/R$drawable;->tw_ic_audio_system_mtrl:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object p2, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mNormalIcons:Ljava/util/HashMap;

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget v4, Lcom/android/settings/R$drawable;->tw_ic_audio_noti_mtrl:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object p2, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mNormalIcons:Ljava/util/HashMap;

    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget v5, Lcom/android/settings/R$drawable;->tw_ic_audio_call_mtrl:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object p2, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mNormalIcons:Ljava/util/HashMap;

    const/16 v6, 0xb

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget v7, Lcom/android/settings/R$drawable;->tw_ic_audio_bixby_mtrl:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p2, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object p2, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mNormalIcons:Ljava/util/HashMap;

    const/16 v8, 0xa

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sget v9, Lcom/android/settings/R$drawable;->tw_ic_audio_accessibility_mtrl:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object p2, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mMuteIcons:Ljava/util/HashMap;

    sget v10, Lcom/android/settings/R$drawable;->tw_ic_audio_mute_mtrl:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object p2, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mMuteIcons:Ljava/util/HashMap;

    sget v0, Lcom/android/settings/R$drawable;->tw_ic_audio_media_mute_mtrl:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object p2, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mMuteIcons:Ljava/util/HashMap;

    sget v0, Lcom/android/settings/R$drawable;->tw_ic_audio_system_mute_mtrl:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object p2, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mMuteIcons:Ljava/util/HashMap;

    sget v0, Lcom/android/settings/R$drawable;->tw_ic_audio_noti_mute_mtrl:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object p2, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mMuteIcons:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object p2, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mMuteIcons:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object p2, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mMuteIcons:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settings/R$color;->sec_volume_icon_color:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    .line 72
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mIconActiveColor:Landroid/content/res/ColorStateList;

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settings/R$color;->sec_volume_icon_no_sound_color:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    .line 74
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mIconMutedColor:Landroid/content/res/ColorStateList;

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$color;->sec_volume_icon_ear_shock_color:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    .line 76
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mIconEarShockColor:Landroid/content/res/ColorStateList;

    return-void
.end method

.method private getColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 3

    const/4 p0, 0x1

    new-array v0, p0, [[I

    const/4 v1, 0x0

    new-array v2, v1, [I

    aput-object v2, v0, v1

    .line 346
    new-instance v2, Landroid/content/res/ColorStateList;

    new-array p0, p0, [I

    aput p1, p0, v1

    invoke-direct {v2, v0, p0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method

.method private getIconState(II)I
    .locals 6

    int-to-double v0, p1

    int-to-double v2, p2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v2

    cmpl-double p0, v0, v4

    if-lez p0, :cond_0

    const/4 p0, 0x3

    goto :goto_0

    :cond_0
    const-wide/high16 v4, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v2, v4

    cmpl-double p0, v0, v2

    if-lez p0, :cond_1

    const/4 p0, 0x2

    goto :goto_0

    :cond_1
    if-lez p1, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getIconType()I
    .locals 2

    .line 366
    iget v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mStream:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mHelper:Lcom/samsung/android/settings/as/utils/SecAudioHelper;

    invoke-virtual {v1, v0}, Lcom/android/settings/notification/AudioHelper;->getStreamVolume(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 367
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mHelper:Lcom/samsung/android/settings/as/utils/SecAudioHelper;

    invoke-virtual {v0}, Lcom/android/settings/notification/AudioHelper;->getRingerModeInternal()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget p0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mStream:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_2

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    :cond_2
    :goto_0
    return v1
.end method

.method private isEarShockLevel()Z
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mHelper:Lcom/samsung/android/settings/as/utils/SecAudioHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/as/utils/SecAudioHelper;->getEarProtectLevel()I

    move-result v0

    .line 126
    iget-object v1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mHelper:Lcom/samsung/android/settings/as/utils/SecAudioHelper;

    iget p0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mStream:I

    invoke-virtual {v1, p0}, Lcom/android/settings/notification/AudioHelper;->getStreamVolume(I)I

    move-result p0

    if-lez v0, :cond_0

    mul-int/lit8 p0, p0, 0x64

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isMediaType()Z
    .locals 1

    .line 357
    iget p0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mStream:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isRingtoneType()Z
    .locals 1

    .line 361
    iget p0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mStream:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isStreamEnabled()Z
    .locals 4

    .line 375
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mHelper:Lcom/samsung/android/settings/as/utils/SecAudioHelper;

    invoke-virtual {v0}, Lcom/android/settings/notification/AudioHelper;->getRingerModeInternal()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mHelper:Lcom/samsung/android/settings/as/utils/SecAudioHelper;

    .line 376
    invoke-virtual {v0}, Lcom/android/settings/notification/AudioHelper;->getRingerModeInternal()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mStream:I

    const/4 v3, 0x5

    if-eq v0, v3, :cond_3

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 380
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/as/utils/SoundUtils;->isMuteAllSoundEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :cond_3
    :goto_0
    return v1
.end method

.method private setAnimatedIcon()V
    .locals 7

    .line 194
    invoke-direct {p0}, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->isMediaType()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->isRingtoneType()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 205
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->getIconType()I

    move-result v2

    .line 206
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mIcon:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->volume_normal_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/ImageView;

    .line 207
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mIcon:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->volume_mute_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/ImageView;

    .line 208
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mIcon:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->volume_vibrate_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/ImageView;

    .line 209
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mIcon:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->volume_icon_mute_splash:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/ImageView;

    .line 210
    iget v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mStream:I

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->setIconResource(ILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    move-object v1, p0

    .line 211
    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->setState(ILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    goto :goto_1

    .line 195
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mHelper:Lcom/samsung/android/settings/as/utils/SecAudioHelper;

    iget v1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mStream:I

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/AudioHelper;->getStreamVolume(I)I

    move-result v0

    .line 196
    iget-object v1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mHelper:Lcom/samsung/android/settings/as/utils/SecAudioHelper;

    iget v2, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mStream:I

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/AudioHelper;->getMaxVolume(I)I

    move-result v1

    .line 197
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->getIconState(II)I

    move-result v0

    .line 198
    invoke-direct {p0}, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->isRingtoneType()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 199
    invoke-direct {p0}, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->getIconType()I

    move-result v1

    .line 200
    iget v2, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mCurrentMediaIconState:I

    invoke-direct {p0, v0, v2, v1}, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->setSoundIconState(III)V

    goto :goto_1

    .line 202
    :cond_2
    iget v1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mCurrentMediaIconState:I

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->setMediaIconState(II)V

    :goto_1
    return-void
.end method

.method private setDefaultIcon()V
    .locals 3

    .line 170
    invoke-direct {p0}, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->getIconType()I

    move-result v0

    .line 171
    iget-object v1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mNormalIcons:Ljava/util/HashMap;

    iget v2, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mStream:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mNormalIcons:Ljava/util/HashMap;

    iget v1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mStream:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 178
    :cond_1
    sget v1, Lcom/android/settings/R$drawable;->tw_ic_audio_bluetooth_mtrl:I

    goto :goto_0

    .line 181
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mMuteIcons:Ljava/util/HashMap;

    iget v1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mStream:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 184
    :cond_3
    sget v1, Lcom/android/settings/R$drawable;->tw_ic_audio_vibrate_mtrl:I

    .line 185
    iget v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mStream:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_4

    .line 186
    sget v1, Lcom/android/settings/R$drawable;->tw_ic_audio_noti_vibrate_mtrl:I

    .line 190
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mIcon:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setIconResource(ILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 247
    iget-object p1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$drawable;->tw_ic_audio_noti_mtrl:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 248
    iget-object p1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$drawable;->tw_ic_audio_noti_mute_mtrl:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 249
    iget-object p0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$drawable;->tw_ic_audio_noti_vibrate_mtrl:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p4, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/4 p4, 0x1

    if-ne p1, p4, :cond_1

    .line 251
    iget-object p1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p4, Lcom/android/settings/R$drawable;->tw_ic_audio_system_mtrl:I

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 252
    iget-object p0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$drawable;->tw_ic_audio_system_mute_mtrl:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setMediaIconState(II)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v11, p1

    move/from16 v1, p2

    if-ne v11, v1, :cond_0

    .line 311
    iget-boolean v2, v0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mShouldUpdateIcon:Z

    if-eqz v2, :cond_9

    :cond_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    if-ne v11, v1, :cond_1

    goto :goto_0

    :cond_1
    sub-int v3, v11, v1

    if-lez v3, :cond_2

    add-int/lit8 v3, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v1, -0x1

    goto :goto_1

    :cond_3
    :goto_0
    move v3, v11

    .line 323
    :goto_1
    iget-object v4, v0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mIcon:Landroid/view/View;

    sget v5, Lcom/android/settings/R$id;->volume_icon_mute_splash:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v19, v4

    check-cast v19, Landroid/widget/ImageView;

    .line 324
    iget-object v4, v0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mIcon:Landroid/view/View;

    sget v5, Lcom/android/settings/R$id;->volume_media_icon_mute:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v18, v4

    check-cast v18, Landroid/widget/ImageView;

    .line 325
    iget-object v4, v0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mIcon:Landroid/view/View;

    sget v5, Lcom/android/settings/R$id;->volume_media_icon_note:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Landroid/widget/ImageView;

    .line 326
    iget-object v4, v0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mIcon:Landroid/view/View;

    sget v5, Lcom/android/settings/R$id;->volume_media_icon_wave_l:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v16, v4

    check-cast v16, Landroid/widget/ImageView;

    .line 327
    iget-object v4, v0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mIcon:Landroid/view/View;

    sget v5, Lcom/android/settings/R$id;->volume_media_icon_wave_s:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Landroid/widget/ImageView;

    const/4 v10, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_5

    if-ne v1, v11, :cond_4

    goto :goto_2

    :cond_4
    move/from16 v20, v10

    goto :goto_3

    :cond_5
    :goto_2
    move/from16 v20, v4

    :goto_3
    const/4 v1, 0x3

    if-ne v3, v1, :cond_6

    .line 331
    iget-object v12, v0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mSecVolumeIconMotion:Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;

    iget v13, v0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mStream:I

    const/16 v17, 0x0

    invoke-virtual/range {v12 .. v20}, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;->startMaxAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    move v2, v10

    goto :goto_5

    :cond_6
    const/4 v1, 0x2

    if-ne v3, v1, :cond_7

    .line 333
    iget-object v1, v0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mSecVolumeIconMotion:Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;

    iget v2, v0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mStream:I

    const/4 v7, 0x0

    move/from16 v3, p1

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move v13, v10

    move/from16 v10, v20

    invoke-virtual/range {v1 .. v10}, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;->startMidAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    :goto_4
    move v2, v13

    goto :goto_5

    :cond_7
    move v13, v10

    if-ne v3, v4, :cond_8

    .line 335
    iget-object v1, v0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mSecVolumeIconMotion:Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;

    iget v2, v0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mStream:I

    const/4 v7, 0x0

    move/from16 v3, p1

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move/from16 v10, v20

    invoke-virtual/range {v1 .. v10}, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;->startMinAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_4

    .line 337
    :cond_8
    iget-object v12, v0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mSecVolumeIconMotion:Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;

    iget v1, v0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mStream:I

    const/16 v17, 0x0

    move v2, v13

    move v13, v1

    invoke-virtual/range {v12 .. v20}, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;->startMuteAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    .line 339
    :goto_5
    iput-boolean v2, v0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mShouldUpdateIcon:Z

    .line 340
    iput v11, v0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mCurrentMediaIconState:I

    :cond_9
    return-void
.end method

.method private setSoundIconState(III)V
    .locals 23

    move-object/from16 v0, p0

    move/from16 v11, p1

    move/from16 v1, p2

    move/from16 v12, p3

    if-ne v11, v1, :cond_0

    .line 271
    iget-boolean v2, v0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mShouldUpdateIcon:Z

    if-nez v2, :cond_0

    iget v2, v0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mIconType:I

    if-eq v2, v12, :cond_c

    :cond_0
    const/4 v2, -0x1

    const/4 v13, 0x0

    if-eq v1, v2, :cond_4

    if-eqz v11, :cond_4

    if-ne v11, v1, :cond_1

    goto :goto_1

    :cond_1
    if-nez v12, :cond_2

    move v3, v13

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_0
    sub-int v3, v11, v3

    if-lez v3, :cond_3

    add-int/lit8 v3, v1, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v1, -0x1

    goto :goto_2

    :cond_4
    :goto_1
    move v3, v11

    .line 283
    :goto_2
    iget-object v4, v0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mIcon:Landroid/view/View;

    sget v5, Lcom/android/settings/R$id;->volume_icon_mute_splash:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v21, v4

    check-cast v21, Landroid/widget/ImageView;

    .line 284
    iget-object v4, v0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mIcon:Landroid/view/View;

    sget v5, Lcom/android/settings/R$id;->volume_mute_icon:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v20, v4

    check-cast v20, Landroid/widget/ImageView;

    .line 285
    iget-object v4, v0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mIcon:Landroid/view/View;

    sget v5, Lcom/android/settings/R$id;->volume_normal_icon:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v16, v4

    check-cast v16, Landroid/widget/ImageView;

    .line 286
    iget-object v4, v0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mIcon:Landroid/view/View;

    sget v5, Lcom/android/settings/R$id;->volume_sound_icon_wave_l:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v18, v4

    check-cast v18, Landroid/widget/ImageView;

    .line 287
    iget-object v4, v0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mIcon:Landroid/view/View;

    sget v5, Lcom/android/settings/R$id;->volume_sound_icon_wave_s:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v17, v4

    check-cast v17, Landroid/widget/ImageView;

    .line 288
    iget-object v4, v0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mIcon:Landroid/view/View;

    sget v5, Lcom/android/settings/R$id;->volume_vibrate_icon:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v19, v4

    check-cast v19, Landroid/widget/ImageView;

    const/4 v4, 0x1

    if-eq v1, v2, :cond_5

    if-ne v1, v11, :cond_6

    .line 290
    :cond_5
    iget v1, v0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mIconType:I

    if-ne v1, v12, :cond_6

    move/from16 v22, v4

    goto :goto_3

    :cond_6
    move/from16 v22, v13

    :goto_3
    if-nez v11, :cond_8

    if-ne v12, v4, :cond_7

    .line 293
    iget-object v14, v0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mSecVolumeIconMotion:Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;

    iget v15, v0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mStream:I

    invoke-virtual/range {v14 .. v22}, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;->startMuteAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_4

    .line 295
    :cond_7
    iget-object v14, v0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mSecVolumeIconMotion:Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;

    move-object/from16 v15, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move/from16 v21, v22

    invoke-virtual/range {v14 .. v21}, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;->startSoundVibrationAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_4

    :cond_8
    const/4 v1, 0x3

    if-ne v3, v1, :cond_9

    .line 298
    iget-object v14, v0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mSecVolumeIconMotion:Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;

    iget v15, v0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mStream:I

    invoke-virtual/range {v14 .. v22}, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;->startMaxAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_4

    :cond_9
    const/4 v1, 0x2

    if-ne v3, v1, :cond_a

    .line 300
    iget-object v1, v0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mSecVolumeIconMotion:Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;

    iget v2, v0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mStream:I

    move/from16 v3, p1

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    move-object/from16 v8, v20

    move-object/from16 v9, v21

    move/from16 v10, v22

    invoke-virtual/range {v1 .. v10}, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;->startMidAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_4

    :cond_a
    if-ne v3, v4, :cond_b

    .line 302
    iget-object v1, v0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mSecVolumeIconMotion:Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;

    iget v2, v0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mStream:I

    move/from16 v3, p1

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    move-object/from16 v8, v20

    move-object/from16 v9, v21

    move/from16 v10, v22

    invoke-virtual/range {v1 .. v10}, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;->startMinAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    .line 304
    :cond_b
    :goto_4
    iput-boolean v13, v0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mShouldUpdateIcon:Z

    .line 305
    iput v11, v0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mCurrentMediaIconState:I

    .line 306
    iput v12, v0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mIconType:I

    :cond_c
    return-void
.end method

.method private setState(ILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 218
    :cond_0
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 219
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 220
    invoke-virtual {p5, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 221
    invoke-virtual {p4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 224
    :cond_1
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 225
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 226
    invoke-virtual {p5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 227
    invoke-virtual {p4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 228
    iget p2, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mIconType:I

    if-eq p2, p1, :cond_3

    .line 229
    iget-object p2, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mSecVolumeIconMotion:Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;

    invoke-virtual {p2, p5}, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;->startSplashAnimation(Landroid/view/View;)V

    goto :goto_0

    .line 233
    :cond_2
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 234
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 235
    invoke-virtual {p5, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 236
    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 237
    iget p2, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mIconType:I

    if-eq p2, p1, :cond_3

    .line 238
    iget-object p2, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mSecVolumeIconMotion:Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;

    invoke-virtual {p2, p4}, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;->startVibrationAnimation(Landroid/view/View;)V

    .line 242
    :cond_3
    :goto_0
    iput p1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mIconType:I

    return-void
.end method

.method private shouldUpdateIconLayout(ZZ)Z
    .locals 0

    if-nez p1, :cond_1

    .line 131
    iget-boolean p1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mIsAnimatedType:Z

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mShouldUpdateIcon:Z

    return p1
.end method

.method private supportAnimatedIcon()Z
    .locals 2

    .line 350
    iget p0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mStream:I

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x5

    if-eq p0, v1, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private updateEnableState()V
    .locals 1

    .line 96
    invoke-direct {p0}, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->isStreamEnabled()Z

    move-result v0

    .line 97
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v0, 0x3ecccccd    # 0.4f

    .line 98
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method private updateIconLayout(Z)V
    .locals 2

    .line 136
    invoke-direct {p0}, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->supportAnimatedIcon()Z

    move-result v0

    .line 137
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->shouldUpdateIconLayout(ZZ)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 138
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    if-lez p1, :cond_0

    .line 139
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    :cond_0
    const/4 p1, 0x0

    if-eqz v0, :cond_3

    .line 142
    invoke-direct {p0}, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->isMediaType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->volume_animated_media_icon:I

    invoke-virtual {v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mIcon:Landroid/view/View;

    goto :goto_0

    .line 145
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->isRingtoneType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 146
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->volume_animated_ringtone_icon:I

    invoke-virtual {v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mIcon:Landroid/view/View;

    goto :goto_0

    .line 149
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->volume_animated_icon:I

    invoke-virtual {v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mIcon:Landroid/view/View;

    :goto_0
    const/4 p1, 0x1

    .line 152
    iput-boolean p1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mIsAnimatedType:Z

    goto :goto_1

    .line 154
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->volume_default_icon:I

    invoke-virtual {v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mIcon:Landroid/view/View;

    const/4 p1, 0x0

    .line 155
    iput-boolean p1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mIsAnimatedType:Z

    .line 157
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mIcon:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method private updateIconState()V
    .locals 1

    .line 162
    invoke-direct {p0}, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->supportAnimatedIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mIsAnimatedType:Z

    if-eqz v0, :cond_0

    .line 163
    invoke-direct {p0}, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->setAnimatedIcon()V

    goto :goto_0

    .line 165
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->setDefaultIcon()V

    :goto_0
    return-void
.end method

.method private updateIconTintColor()V
    .locals 4

    .line 102
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mHelper:Lcom/samsung/android/settings/as/utils/SecAudioHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/as/utils/SecAudioHelper;->isEarDeviceStatusOn()Z

    move-result v0

    .line 103
    invoke-direct {p0}, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->getIconType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 106
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mIconMutedColor:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 107
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->isMediaType()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->isEarShockLevel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mIconEarShockColor:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mIconActiveColor:Landroid/content/res/ColorStateList;

    .line 112
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->supportAnimatedIcon()Z

    move-result v3

    if-nez v3, :cond_2

    .line 113
    iget-object p0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mIcon:Landroid/view/View;

    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 114
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->isMediaType()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eq v1, v2, :cond_3

    .line 115
    iget-object v1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mIcon:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->volume_media_icon_note:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 116
    iget-object v2, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mIcon:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->volume_media_icon_wave_l:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 117
    iget-object p0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mIcon:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->volume_media_icon_wave_s:I

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    .line 118
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 119
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 120
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public initialize(Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;I)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mSecVolumeIconMotion:Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;

    .line 82
    iput p2, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mStream:I

    .line 83
    new-instance p1, Lcom/samsung/android/settings/as/utils/SecAudioHelper;

    iget-object p2, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/samsung/android/settings/as/utils/SecAudioHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mHelper:Lcom/samsung/android/settings/as/utils/SecAudioHelper;

    .line 84
    invoke-direct {p0}, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->getIconType()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->mIconType:I

    const/4 p1, 0x1

    .line 85
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->updateLayout(Z)V

    return-void
.end method

.method public updateLayout(Z)V
    .locals 0

    .line 89
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->updateIconLayout(Z)V

    .line 90
    invoke-direct {p0}, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->updateIconState()V

    .line 91
    invoke-direct {p0}, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->updateIconTintColor()V

    .line 92
    invoke-direct {p0}, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->updateEnableState()V

    return-void
.end method
