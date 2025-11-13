.class public Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;
.super Landroidx/preference/SeekBarPreference;
.source "SecVibrationSeekBarPreference.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMaxIntensity:I

.field private mResolver:Landroid/content/ContentResolver;

.field private mRingtone:Landroid/media/Ringtone;

.field private mSALogID:I

.field private mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

.field private mStream:I

.field private mSyncDbName:Ljava/lang/String;

.field private mSystemDBName:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mTouchSeekBarCallBack:Lcom/samsung/android/settings/as/vibration/ITouchSeekBarCallBack;

.field private mVibrationAttributes:Landroid/os/VibrationAttributes;

.field private mVibrationIcon:Lcom/samsung/android/settings/as/widget/SecVibrationIcon;

.field public onSeekBarChangeListener:Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmSALogID(Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;->mSALogID:I

    return p0
.end method

.method static bridge synthetic -$$Nest$msetVibrationIntensity(Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;->setVibrationIntensity(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 91
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 87
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 94
    new-instance p2, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference$1;-><init>(Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;)V

    iput-object p2, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;->onSeekBarChangeListener:Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;

    .line 77
    iput-object p1, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;->mContext:Landroid/content/Context;

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;->mResolver:Landroid/content/ContentResolver;

    .line 79
    sget p1, Lcom/android/settings/R$layout;->sec_vibration_intensity_v2:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method private getEffect(I)Landroid/os/VibrationEffect;
    .locals 4

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 150
    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;->mResolver:Landroid/content/ContentResolver;

    const p1, 0xc373

    const-string v0, "ringtone_vibration_sep_index"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x0

    .line 152
    invoke-static {p0, p1}, Landroid/os/VibrationEffect;->semCreateHaptic(II)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x5

    const/4 v1, -0x1

    if-ne p1, v0, :cond_1

    .line 154
    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;->mResolver:Landroid/content/ContentResolver;

    const p1, 0xc372

    const-string v0, "notification_vibration_sep_index"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 156
    invoke-static {p0, v1}, Landroid/os/VibrationEffect;->semCreateHaptic(II)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v0, 0x3

    const v2, 0xc3cc

    const v3, 0xc369

    if-ne p1, v0, :cond_3

    .line 159
    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/as/utils/VibUtils;->isSupportDcHaptic(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 160
    invoke-static {v2, v1}, Landroid/os/VibrationEffect;->semCreateWaveform(II)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0

    .line 163
    :cond_2
    invoke-static {v3, v1}, Landroid/os/VibrationEffect;->semCreateHaptic(II)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    .line 167
    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/as/utils/VibUtils;->isSupportDcHaptic(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 168
    invoke-static {v2, v1}, Landroid/os/VibrationEffect;->semCreateWaveform(II)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0

    .line 171
    :cond_4
    invoke-static {v3, v1}, Landroid/os/VibrationEffect;->semCreateHaptic(II)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0

    :cond_5
    const p0, 0xc376

    .line 175
    invoke-static {p0, v1}, Landroid/os/VibrationEffect;->semCreateHaptic(II)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0
.end method

.method private setContentDescriptionForAutomationTest(I)V
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setVibrationIntensity(I)V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;->mSystemDBName:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVibrationIntensity : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;->mSystemDBName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecVibrationSeekBarPreference"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;->mTouchSeekBarCallBack:Lcom/samsung/android/settings/as/vibration/ITouchSeekBarCallBack;

    iget v1, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;->mStream:I

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/settings/as/vibration/ITouchSeekBarCallBack;->onProgressChanged(II)V

    .line 138
    sget-boolean p1, Lcom/samsung/android/settings/as/rune/VibRune;->SUPPORT_SYNC_WITH_HAPTIC:Z

    if-eqz p1, :cond_0

    .line 139
    iget-object p1, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;->mRingtone:Landroid/media/Ringtone;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;->mResolver:Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;->mSyncDbName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 140
    iget-object p1, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;->mTouchSeekBarCallBack:Lcom/samsung/android/settings/as/vibration/ITouchSeekBarCallBack;

    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;->mRingtone:Landroid/media/Ringtone;

    invoke-interface {p1, p0}, Lcom/samsung/android/settings/as/vibration/ITouchSeekBarCallBack;->onTouchToRingtone(Landroid/media/Ringtone;)V

    return-void

    .line 144
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;->mTouchSeekBarCallBack:Lcom/samsung/android/settings/as/vibration/ITouchSeekBarCallBack;

    iget v0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;->mStream:I

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;->getEffect(I)Landroid/os/VibrationEffect;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;->mVibrationAttributes:Landroid/os/VibrationAttributes;

    invoke-interface {p1, v0, p0}, Lcom/samsung/android/settings/as/vibration/ITouchSeekBarCallBack;->onTouchToVibration(Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)V

    return-void
.end method


# virtual methods
.method public initializeIcon()V
    .locals 3

    .line 219
    new-instance v0, Lcom/samsung/android/settings/as/widget/SecVibrationIconMotion;

    iget-object v1, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/as/widget/SecVibrationIconMotion;-><init>(Landroid/content/Context;)V

    .line 220
    iget-object v1, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;->mVibrationIcon:Lcom/samsung/android/settings/as/widget/SecVibrationIcon;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-eqz v2, :cond_0

    .line 221
    iget-object v2, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;->mSystemDBName:Ljava/lang/String;

    iget p0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;->mStream:I

    invoke-virtual {v1, v0, v2, p0}, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->initialize(Lcom/samsung/android/settings/as/widget/SecVibrationIconMotion;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 5

    .line 194
    invoke-super {p0, p1}, Landroidx/preference/SeekBarPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 196
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 197
    sget v0, Lcom/android/settings/R$id;->vib_intensity_seekbar:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SeslSeekBar;

    iput-object v0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    const/4 v2, 0x1

    .line 198
    invoke-virtual {v0, v2}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 199
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setSeamless(Z)V

    .line 200
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    iget v3, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;->mMaxIntensity:I

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMax(I)V

    .line 201
    invoke-virtual {p0}, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;->setCurrentProgress()V

    .line 202
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    iget-object v3, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;->onSeekBarChangeListener:Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/SeslSeekBar;->setOnSeekBarChangeListener(Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;)V

    .line 203
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMode(I)V

    .line 205
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getThemeResId()I

    move-result v3

    new-array v2, v2, [I

    sget v4, Lcom/android/settings/R$attr;->colorPrimary:I

    aput v4, v2, v1

    invoke-virtual {v0, v3, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 208
    iget-object v2, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 209
    iget-object v2, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 213
    :cond_0
    sget v0, Lcom/android/settings/R$id;->basic_vibration_icon:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;

    iput-object p1, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;->mVibrationIcon:Lcom/samsung/android/settings/as/widget/SecVibrationIcon;

    .line 214
    invoke-virtual {p0}, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;->initializeIcon()V

    return-void
.end method

.method public setCallBack(Lcom/samsung/android/settings/as/vibration/ITouchSeekBarCallBack;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;->mTouchSeekBarCallBack:Lcom/samsung/android/settings/as/vibration/ITouchSeekBarCallBack;

    return-void
.end method

.method public setCurrentProgress()V
    .locals 3

    .line 181
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;->mSystemDBName:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;->mMaxIntensity:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 182
    iget-object v1, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-eqz v1, :cond_0

    .line 183
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    .line 184
    iget-object v1, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    iget-object v2, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 187
    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;->setContentDescriptionForAutomationTest(I)V

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentProgress() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;->mSystemDBName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " : "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SecVibrationSeekBarPreference"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setStream(Ljava/lang/String;IILjava/lang/String;Landroid/media/Ringtone;Landroid/os/VibrationAttributes;I)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;->mSystemDBName:Ljava/lang/String;

    .line 118
    iput p3, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;->mSALogID:I

    .line 119
    iput p2, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;->mMaxIntensity:I

    .line 120
    invoke-virtual {p0, p2}, Landroidx/preference/SeekBarPreference;->setMax(I)V

    .line 121
    iput-object p4, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;->mTitle:Ljava/lang/String;

    .line 122
    iput-object p5, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;->mRingtone:Landroid/media/Ringtone;

    .line 123
    iput-object p6, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;->mVibrationAttributes:Landroid/os/VibrationAttributes;

    .line 124
    iput p7, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;->mStream:I

    const/4 p1, 0x2

    if-ne p7, p1, :cond_0

    const-string p1, "sync_vibration_with_ringtone"

    .line 127
    iput-object p1, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;->mSyncDbName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    if-ne p7, p1, :cond_1

    const-string p1, "sync_vibration_with_notification"

    .line 129
    iput-object p1, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;->mSyncDbName:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method public updateIconView()V
    .locals 1

    .line 235
    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;->mVibrationIcon:Lcom/samsung/android/settings/as/widget/SecVibrationIcon;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 236
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/as/widget/SecVibrationIcon;->updateLayout(Z)V

    :cond_0
    return-void
.end method
