.class public Lcom/samsung/android/settings/as/widget/SecVibrationIcon;
.super Landroid/widget/FrameLayout;
.source "SecVibrationIcon.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentMediaIconState:I

.field private mIcon:Landroid/view/View;

.field private mIconActiveColor:Landroid/content/res/ColorStateList;

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

.field private mSecVibrationIconMotion:Lcom/samsung/android/settings/as/widget/SecVibrationIconMotion;

.field private mShouldUpdateIcon:Z

.field private mStream:I

.field private mSystemDbName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, -0x1

    .line 44
    iput p2, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mCurrentMediaIconState:I

    .line 55
    iput p2, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mIconType:I

    .line 57
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mNormalIcons:Ljava/util/HashMap;

    .line 58
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mMuteIcons:Ljava/util/HashMap;

    .line 63
    iput-object p1, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mContext:Landroid/content/Context;

    .line 64
    iget-object p2, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mNormalIcons:Ljava/util/HashMap;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v1, Lcom/android/settings/R$drawable;->tw_ic_audio_sound_ringtone:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object p2, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mNormalIcons:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/android/settings/R$drawable;->tw_ic_audio_media_note:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object p2, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mNormalIcons:Ljava/util/HashMap;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/android/settings/R$drawable;->tw_ic_audio_noti_mtrl:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object p2, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mNormalIcons:Ljava/util/HashMap;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget v4, Lcom/android/settings/R$drawable;->tw_ic_audio_system_mtrl:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object p2, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mNormalIcons:Ljava/util/HashMap;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object p2, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mMuteIcons:Ljava/util/HashMap;

    sget v4, Lcom/android/settings/R$drawable;->tw_ic_audio_mute_mtrl:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object p2, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mMuteIcons:Ljava/util/HashMap;

    sget v0, Lcom/android/settings/R$drawable;->tw_ic_audio_media_mute_mtrl:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object p2, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mMuteIcons:Ljava/util/HashMap;

    sget v0, Lcom/android/settings/R$drawable;->tw_ic_audio_noti_mute_mtrl:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object p2, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mMuteIcons:Ljava/util/HashMap;

    sget v0, Lcom/android/settings/R$drawable;->tw_ic_audio_system_mute_mtrl:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object p2, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mMuteIcons:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settings/R$color;->sec_volume_icon_color:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    .line 76
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mIconActiveColor:Landroid/content/res/ColorStateList;

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$color;->sec_volume_icon_no_sound_color:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    .line 78
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mIconMutedColor:Landroid/content/res/ColorStateList;

    return-void
.end method

.method private getColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 3

    const/4 p0, 0x1

    new-array v0, p0, [[I

    const/4 v1, 0x0

    new-array v2, v1, [I

    aput-object v2, v0, v1

    .line 418
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

    const-wide v4, 0x3fe3333333333333L    # 0.6

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

.method private getStreamIntensity(I)I
    .locals 3

    .line 246
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x5

    if-eqz p1, :cond_4

    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const p1, 0x10e014b

    .line 257
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const-string p1, "SEM_VIBRATION_NOTIFICATION_INTENSITY"

    goto :goto_0

    :cond_1
    const p1, 0x10e014a

    .line 261
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const-string p1, "media_vibration_intensity"

    goto :goto_0

    :cond_2
    const p1, 0x10e014c

    .line 253
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const-string p1, "VIB_RECVCALL_MAGNITUDE"

    goto :goto_0

    :cond_3
    const p1, 0x10e0147

    .line 265
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const-string p1, "VIB_FEEDBACK_MAGNITUDE"

    goto :goto_0

    :cond_4
    const p1, 0x10e0148

    .line 269
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const-string p1, "SEM_VIBRATION_FORCE_TOUCH_INTENSITY"

    .line 275
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private getStreamMaxIntensity(I)I
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x5

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    if-eq p1, v0, :cond_0

    if-eq p1, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 287
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/as/utils/VibUtils;->isSupportDcHaptic(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    :goto_0
    return v0
.end method

.method private isMediaType()Z
    .locals 1

    .line 185
    iget p0, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mStream:I

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

    .line 189
    iget p0, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mStream:I

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
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private setAnimatedIcon()V
    .locals 5

    .line 224
    invoke-direct {p0}, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->isMediaType()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->isRingtoneType()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 235
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->getIconType()I

    move-result v0

    .line 236
    iget-object v1, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mIcon:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->volume_normal_icon:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 237
    iget-object v2, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mIcon:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->volume_mute_icon:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 238
    iget-object v3, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mIcon:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->volume_icon_mute_splash:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 239
    iget v4, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mStream:I

    invoke-direct {p0, v4, v1, v2}, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->setIconResource(ILandroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 240
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->setState(ILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    goto :goto_1

    .line 225
    :cond_1
    :goto_0
    iget v0, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mStream:I

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->getStreamIntensity(I)I

    move-result v0

    .line 226
    iget v1, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mStream:I

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->getStreamMaxIntensity(I)I

    move-result v1

    .line 227
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->getIconState(II)I

    move-result v0

    .line 228
    invoke-direct {p0}, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->isMediaType()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 229
    iget v1, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mCurrentMediaIconState:I

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->setMediaIconState(II)V

    goto :goto_1

    .line 231
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->getIconType()I

    move-result v1

    .line 232
    iget v2, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mCurrentMediaIconState:I

    invoke-direct {p0, v0, v2, v1}, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->setSoundIconState(III)V

    :goto_1
    return-void
.end method

.method private setDefaultIcon()V
    .locals 3

    .line 133
    invoke-virtual {p0}, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->getIconType()I

    move-result v0

    .line 134
    iget-object v1, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mNormalIcons:Ljava/util/HashMap;

    iget v2, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mStream:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mNormalIcons:Ljava/util/HashMap;

    iget v1, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mStream:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mMuteIcons:Ljava/util/HashMap;

    iget v1, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mStream:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 144
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mIcon:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setIconResource(ILandroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 389
    iget-object p1, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$drawable;->tw_ic_audio_noti_mtrl:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 390
    iget-object p0, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$drawable;->tw_ic_audio_noti_mute_mtrl:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    if-nez p1, :cond_2

    .line 392
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$drawable;->tw_ic_audio_system_mtrl:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 393
    iget-object p0, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$drawable;->tw_ic_audio_system_mute_mtrl:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setMediaIconState(II)V
    .locals 13

    if-ne p1, p2, :cond_0

    .line 317
    iget-boolean v0, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mShouldUpdateIcon:Z

    if-eqz v0, :cond_9

    :cond_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_3

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    sub-int v1, p1, p2

    if-lez v1, :cond_2

    add-int/lit8 v1, p2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, p2, -0x1

    goto :goto_1

    :cond_3
    :goto_0
    move v1, p1

    .line 329
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mIcon:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->volume_icon_mute_splash:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 330
    iget-object v3, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mIcon:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->volume_media_icon_mute:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Landroid/widget/ImageView;

    .line 331
    iget-object v3, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mIcon:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->volume_media_icon_note:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Landroid/widget/ImageView;

    .line 332
    iget-object v3, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mIcon:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->volume_media_icon_wave_l:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Landroid/widget/ImageView;

    .line 333
    iget-object v3, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mIcon:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->volume_media_icon_wave_s:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Landroid/widget/ImageView;

    const/4 v12, 0x0

    const/4 v3, 0x1

    if-eq p2, v0, :cond_5

    if-ne p2, p1, :cond_4

    goto :goto_2

    :cond_4
    move p2, v12

    goto :goto_3

    :cond_5
    :goto_2
    move p2, v3

    :goto_3
    const/4 v0, 0x3

    if-ne v1, v0, :cond_6

    .line 337
    iget-object v3, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mSecVibrationIconMotion:Lcom/samsung/android/settings/as/widget/SecVibrationIconMotion;

    iget v4, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mStream:I

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v2

    move v10, p2

    invoke-virtual/range {v3 .. v10}, Lcom/samsung/android/settings/as/widget/SecVibrationIconMotion;->startMaxAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_4

    :cond_6
    const/4 v0, 0x2

    if-ne v1, v0, :cond_7

    .line 339
    iget-object v3, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mSecVibrationIconMotion:Lcom/samsung/android/settings/as/widget/SecVibrationIconMotion;

    iget v4, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mStream:I

    move v5, p1

    move-object v10, v2

    move v11, p2

    invoke-virtual/range {v3 .. v11}, Lcom/samsung/android/settings/as/widget/SecVibrationIconMotion;->startMidAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_4

    :cond_7
    if-ne v1, v3, :cond_8

    .line 341
    iget-object v3, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mSecVibrationIconMotion:Lcom/samsung/android/settings/as/widget/SecVibrationIconMotion;

    iget v4, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mStream:I

    move v5, p1

    move-object v10, v2

    move v11, p2

    invoke-virtual/range {v3 .. v11}, Lcom/samsung/android/settings/as/widget/SecVibrationIconMotion;->startMinAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_4

    .line 343
    :cond_8
    iget-object v3, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mSecVibrationIconMotion:Lcom/samsung/android/settings/as/widget/SecVibrationIconMotion;

    iget v4, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mStream:I

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v2

    move v10, p2

    invoke-virtual/range {v3 .. v10}, Lcom/samsung/android/settings/as/widget/SecVibrationIconMotion;->startMuteAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    .line 345
    :goto_4
    iput-boolean v12, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mShouldUpdateIcon:Z

    .line 346
    iput p1, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mCurrentMediaIconState:I

    :cond_9
    return-void
.end method

.method private setSoundIconState(III)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v10, p1

    move/from16 v1, p2

    move/from16 v11, p3

    if-ne v10, v1, :cond_0

    .line 351
    iget-boolean v2, v0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mShouldUpdateIcon:Z

    if-nez v2, :cond_0

    iget v2, v0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mIconType:I

    if-eq v2, v11, :cond_9

    :cond_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    if-eqz v10, :cond_3

    if-ne v10, v1, :cond_1

    goto :goto_0

    :cond_1
    sub-int v3, v10, v1

    if-lez v3, :cond_2

    add-int/lit8 v3, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v1, -0x1

    goto :goto_1

    :cond_3
    :goto_0
    move v3, v10

    .line 363
    :goto_1
    iget-object v4, v0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mIcon:Landroid/view/View;

    sget v5, Lcom/android/settings/R$id;->volume_icon_mute_splash:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v18, v4

    check-cast v18, Landroid/widget/ImageView;

    .line 364
    iget-object v4, v0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mIcon:Landroid/view/View;

    sget v5, Lcom/android/settings/R$id;->volume_mute_icon:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v17, v4

    check-cast v17, Landroid/widget/ImageView;

    .line 365
    iget-object v4, v0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mIcon:Landroid/view/View;

    sget v5, Lcom/android/settings/R$id;->volume_normal_icon:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Landroid/widget/ImageView;

    .line 366
    iget-object v4, v0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mIcon:Landroid/view/View;

    sget v5, Lcom/android/settings/R$id;->volume_sound_icon_wave_l:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v16, v4

    check-cast v16, Landroid/widget/ImageView;

    .line 367
    iget-object v4, v0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mIcon:Landroid/view/View;

    sget v5, Lcom/android/settings/R$id;->volume_sound_icon_wave_s:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Landroid/widget/ImageView;

    .line 368
    iget-object v4, v0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mIcon:Landroid/view/View;

    sget v5, Lcom/android/settings/R$id;->volume_vibrate_icon:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const/16 v5, 0x8

    .line 369
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v9, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_4

    if-ne v1, v10, :cond_5

    .line 371
    :cond_4
    iget v1, v0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mIconType:I

    if-ne v1, v11, :cond_5

    move/from16 v19, v4

    goto :goto_2

    :cond_5
    move/from16 v19, v9

    :goto_2
    const/4 v1, 0x3

    if-ne v3, v1, :cond_6

    .line 373
    iget-object v12, v0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mSecVibrationIconMotion:Lcom/samsung/android/settings/as/widget/SecVibrationIconMotion;

    iget v13, v0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mStream:I

    invoke-virtual/range {v12 .. v19}, Lcom/samsung/android/settings/as/widget/SecVibrationIconMotion;->startMaxAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    move v2, v9

    goto :goto_4

    :cond_6
    const/4 v1, 0x2

    if-ne v3, v1, :cond_7

    .line 375
    iget-object v1, v0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mSecVibrationIconMotion:Lcom/samsung/android/settings/as/widget/SecVibrationIconMotion;

    iget v2, v0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mStream:I

    move/from16 v3, p1

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    move-object/from16 v8, v18

    move v13, v9

    move/from16 v9, v19

    invoke-virtual/range {v1 .. v9}, Lcom/samsung/android/settings/as/widget/SecVibrationIconMotion;->startMidAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    :goto_3
    move v2, v13

    goto :goto_4

    :cond_7
    move v13, v9

    if-ne v3, v4, :cond_8

    .line 377
    iget-object v1, v0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mSecVibrationIconMotion:Lcom/samsung/android/settings/as/widget/SecVibrationIconMotion;

    iget v2, v0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mStream:I

    move/from16 v3, p1

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    move-object/from16 v8, v18

    move/from16 v9, v19

    invoke-virtual/range {v1 .. v9}, Lcom/samsung/android/settings/as/widget/SecVibrationIconMotion;->startMinAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_3

    .line 379
    :cond_8
    iget-object v12, v0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mSecVibrationIconMotion:Lcom/samsung/android/settings/as/widget/SecVibrationIconMotion;

    iget v1, v0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mStream:I

    move v2, v13

    move v13, v1

    invoke-virtual/range {v12 .. v19}, Lcom/samsung/android/settings/as/widget/SecVibrationIconMotion;->startMuteAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    .line 381
    :goto_4
    iput-boolean v2, v0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mShouldUpdateIcon:Z

    .line 382
    iput v10, v0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mCurrentMediaIconState:I

    .line 383
    iput v11, v0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mIconType:I

    :cond_9
    return-void
.end method

.method private setState(ILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 400
    :cond_0
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 401
    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 402
    invoke-virtual {p4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 405
    :cond_1
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 406
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 407
    invoke-virtual {p4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 408
    iget p2, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mIconType:I

    if-eq p2, p1, :cond_2

    .line 409
    iget-object p2, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mSecVibrationIconMotion:Lcom/samsung/android/settings/as/widget/SecVibrationIconMotion;

    invoke-virtual {p2, p4}, Lcom/samsung/android/settings/as/widget/SecVibrationIconMotion;->startSplashAnimation(Landroid/view/View;)V

    .line 413
    :cond_2
    :goto_0
    iput p1, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mIconType:I

    return-void
.end method

.method private shouldUpdateIconLayout(ZZ)Z
    .locals 0

    if-nez p1, :cond_1

    .line 219
    iget-boolean p1, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mIsAnimatedType:Z

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mShouldUpdateIcon:Z

    return p1
.end method

.method private supportAnimatedIcon()Z
    .locals 2

    .line 117
    iget p0, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mStream:I

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x5

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    if-eqz p0, :cond_1

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private updateEnableState()V
    .locals 1

    .line 175
    invoke-direct {p0}, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->isStreamEnabled()Z

    move-result v0

    .line 176
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v0, 0x3ecccccd    # 0.4f

    .line 177
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method private updateIconLayout(Z)V
    .locals 2

    .line 193
    invoke-direct {p0}, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->supportAnimatedIcon()Z

    move-result v0

    .line 194
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->shouldUpdateIconLayout(ZZ)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 195
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    if-lez p1, :cond_0

    .line 196
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    :cond_0
    const/4 p1, 0x0

    if-eqz v0, :cond_3

    .line 199
    invoke-direct {p0}, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->isMediaType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->volume_animated_media_icon:I

    invoke-virtual {v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mIcon:Landroid/view/View;

    goto :goto_0

    .line 202
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->isRingtoneType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 203
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->volume_animated_ringtone_icon:I

    invoke-virtual {v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mIcon:Landroid/view/View;

    goto :goto_0

    .line 206
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->volume_animated_icon:I

    invoke-virtual {v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mIcon:Landroid/view/View;

    :goto_0
    const/4 p1, 0x1

    .line 209
    iput-boolean p1, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mIsAnimatedType:Z

    goto :goto_1

    .line 211
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->volume_default_icon:I

    invoke-virtual {v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mIcon:Landroid/view/View;

    const/4 p1, 0x0

    .line 212
    iput-boolean p1, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mIsAnimatedType:Z

    .line 214
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mIcon:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method private updateIconState()V
    .locals 1

    .line 125
    invoke-direct {p0}, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->supportAnimatedIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mIsAnimatedType:Z

    if-eqz v0, :cond_0

    .line 126
    invoke-direct {p0}, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->setAnimatedIcon()V

    goto :goto_0

    .line 128
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->setDefaultIcon()V

    :goto_0
    return-void
.end method

.method private updateIconTintColor()V
    .locals 4

    .line 148
    invoke-virtual {p0}, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->getIconType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 151
    iget-object v2, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mIconMutedColor:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 153
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mIconActiveColor:Landroid/content/res/ColorStateList;

    .line 155
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->supportAnimatedIcon()Z

    move-result v3

    if-nez v3, :cond_1

    .line 156
    iget-object p0, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mIcon:Landroid/view/View;

    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 157
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->isMediaType()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eq v0, v1, :cond_2

    .line 158
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mIcon:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->volume_media_icon_note:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 159
    iget-object v1, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mIcon:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->volume_media_icon_wave_l:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 160
    iget-object p0, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mIcon:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->volume_media_icon_wave_s:I

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    .line 161
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 162
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 163
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 164
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->isRingtoneType()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eq v0, v1, :cond_3

    .line 165
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mIcon:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->volume_normal_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 166
    iget-object v1, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mIcon:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->volume_sound_icon_wave_l:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 167
    iget-object p0, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mIcon:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->volume_sound_icon_wave_s:I

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    .line 168
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 169
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 170
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public getIconType()I
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mContext:Landroid/content/Context;

    .line 102
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mSystemDbName:Ljava/lang/String;

    .line 103
    invoke-virtual {p0}, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->getMaxVibrationIntensity()I

    move-result p0

    .line 102
    invoke-static {v0, v1, p0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
    return p0
.end method

.method protected getMaxVibrationIntensity()I
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/as/utils/VibUtils;->isSupportDcHaptic(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x3

    return p0

    .line 110
    :cond_0
    iget p0, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mStream:I

    if-nez p0, :cond_1

    const/4 p0, 0x4

    return p0

    :cond_1
    const/4 p0, 0x5

    return p0
.end method

.method public initialize(Lcom/samsung/android/settings/as/widget/SecVibrationIconMotion;Ljava/lang/String;I)V
    .locals 3

    .line 83
    iput-object p1, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mSecVibrationIconMotion:Lcom/samsung/android/settings/as/widget/SecVibrationIconMotion;

    .line 84
    iput-object p2, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mSystemDbName:Ljava/lang/String;

    .line 85
    iput p3, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mStream:I

    .line 86
    invoke-virtual {p0}, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->getIconType()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mIconType:I

    .line 87
    iget-object p1, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 88
    iget-object p1, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    iget-object p3, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mContext:Landroid/content/Context;

    .line 89
    invoke-virtual {p3}, Landroid/content/Context;->getThemeResId()I

    move-result p3

    new-array v0, p2, [I

    sget v1, Lcom/android/settings/R$attr;->colorPrimary:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 88
    invoke-virtual {p1, p3, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 89
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->mIconActiveColor:Landroid/content/res/ColorStateList;

    .line 91
    :cond_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->updateLayout(Z)V

    return-void
.end method

.method public updateLayout(Z)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->updateIconLayout(Z)V

    .line 96
    invoke-direct {p0}, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->updateIconState()V

    .line 97
    invoke-direct {p0}, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->updateIconTintColor()V

    .line 98
    invoke-direct {p0}, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->updateEnableState()V

    return-void
.end method
