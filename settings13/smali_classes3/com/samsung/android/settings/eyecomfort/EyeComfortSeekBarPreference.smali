.class public Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;
.super Lcom/samsung/android/settings/display/DisplayCustomPreference;
.source "EyeComfortSeekBarPreference.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEnableControlInSetting:Z

.field private mIsFocusable:Z

.field private mIsTalkBackEnabled:Z

.field private mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 37
    sget v5, Lcom/android/settings/R$layout;->sec_preference_seekbar_eye_comfort:I

    sget v6, Lcom/android/settings/R$id;->eye_comfort_seekbar:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/settings/display/DisplayCustomPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIII)V

    const/4 p2, 0x0

    .line 32
    iput-boolean p2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->mIsFocusable:Z

    .line 33
    iput-boolean p2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->mIsTalkBackEnabled:Z

    .line 34
    iput-boolean p2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->mEnableControlInSetting:Z

    .line 38
    iput-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->mContext:Landroid/content/Context;

    return-void
.end method

.method private isBeforeScheduleTime()Z
    .locals 7

    .line 116
    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "blue_light_filter"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 117
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "blue_light_filter_adaptive_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 118
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "blue_light_filter_scheduled"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v2

    .line 119
    :goto_2
    iget-object v5, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "blue_light_filter_type"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v4, :cond_3

    if-nez v5, :cond_3

    move v6, v1

    goto :goto_3

    :cond_3
    move v6, v2

    :goto_3
    if-eqz v0, :cond_5

    if-nez v3, :cond_5

    if-eqz v4, :cond_5

    if-eqz v6, :cond_4

    goto :goto_4

    .line 124
    :cond_4
    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-static {p0, v5}, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeUtils;->duringScheduleTime(Landroid/content/Context;I)Z

    move-result p0

    if-nez p0, :cond_5

    return v1

    :cond_5
    :goto_4
    return v2
.end method

.method private setOpacity(ZI)V
    .locals 1

    .line 155
    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->mContext:Landroid/content/Context;

    const-string v0, "mDNIe"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/hardware/display/SemMdnieManager;

    .line 156
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setNightMode(ZI)Z

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 5

    .line 51
    invoke-super {p0, p1}, Lcom/samsung/android/settings/display/DisplayCustomPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 52
    sget v0, Lcom/android/settings/R$id;->eye_comfort_seekbar:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SeslSeekBar;

    .line 54
    iget-object v1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-ne v0, v1, :cond_0

    return-void

    .line 56
    :cond_0
    iput-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    const/4 v1, 0x5

    .line 57
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMode(I)V

    .line 58
    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "blue_light_filter_opacity"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 60
    iget-object v1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/SeslProgressBar;->incrementProgressBy(I)V

    .line 61
    iget-object v1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMax(I)V

    .line 62
    iget-object v1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v1, p0}, Landroidx/appcompat/widget/SeslSeekBar;->setOnSeekBarChangeListener(Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;)V

    .line 63
    iget-object v1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 65
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 67
    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    .line 68
    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p1, v3}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setSeamless(Z)V

    .line 70
    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    .line 134
    iput-boolean p2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->mIsFocusable:Z

    if-nez p2, :cond_0

    .line 135
    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-eqz p1, :cond_0

    .line 136
    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result p0

    const-string p2, "blue_light_filter_opacity"

    invoke-static {p1, p2, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method public onProgressChanged(Landroidx/appcompat/widget/SeslSeekBar;IZ)V
    .locals 2

    .line 84
    iget-boolean p2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->mIsFocusable:Z

    if-nez p2, :cond_0

    if-nez p2, :cond_1

    if-eqz p3, :cond_1

    .line 85
    :cond_0
    invoke-virtual {p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->setOpacityLevel(I)V

    .line 86
    invoke-virtual {p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->setSeekBarContentDescription(Ljava/lang/CharSequence;)V

    const/16 p0, 0x107e

    const/16 p2, 0x1080

    .line 87
    invoke-virtual {p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result p1

    int-to-long v0, p1

    invoke-static {p0, p2, v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    :cond_1
    return-void
.end method

.method public onStartTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 1

    const/4 p1, 0x1

    .line 94
    iput-boolean p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->mIsFocusable:Z

    .line 95
    invoke-direct {p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->isBeforeScheduleTime()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iput-boolean p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->mEnableControlInSetting:Z

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 3

    const/4 v0, 0x0

    .line 103
    iput-boolean v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->mIsFocusable:Z

    .line 104
    iget-object v1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result p1

    const-string v2, "blue_light_filter_opacity"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 105
    iget-boolean p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->mEnableControlInSetting:Z

    if-eqz p1, :cond_0

    .line 106
    invoke-direct {p0, v0, v0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->setOpacity(ZI)V

    .line 107
    iput-boolean v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->mEnableControlInSetting:Z

    const-string p0, "EyeComfortSeekBarPreference"

    const-string p1, "onStopTrackingTouch disable!"

    .line 108
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 150
    invoke-super {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method public setOpacityLevel(I)V
    .locals 1

    .line 141
    iget-boolean v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->mEnableControlInSetting:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 142
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->setOpacity(ZI)V

    goto :goto_0

    .line 144
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "blue_light_filter_opacity"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    return-void
.end method

.method public setProgress(I)V
    .locals 0

    .line 43
    invoke-super {p0, p1}, Lcom/samsung/android/settings/display/DisplayCustomPreference;->setProgress(I)V

    .line 44
    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-eqz p0, :cond_0

    .line 45
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    :cond_0
    return-void
.end method

.method public setSeekBarContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-eqz v0, :cond_1

    .line 75
    iget-boolean p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->mIsTalkBackEnabled:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 76
    invoke-virtual {v0, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method
