.class public Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;
.super Lcom/samsung/android/settings/display/DisplayCustomPreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mEnableControlInSetting:Z

.field public mIsFocusable:Z

.field public mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const v5, 0x7f0a060e

    const/4 v3, 0x0

    const v4, 0x7f0d0954

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/display/DisplayCustomPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->mIsFocusable:Z

    iput-boolean p2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->mEnableControlInSetting:Z

    iput-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/samsung/android/settings/display/DisplayCustomPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a060e

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SeslSeekBar;

    iget-object v1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iput-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMode(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "blue_light_filter_opacity"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    monitor-enter v2

    :try_start_0
    iget v4, v2, Landroidx/appcompat/widget/SeslProgressBar;->mProgress:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    invoke-virtual {v2, v4}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    iget-object v2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMax(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v2, p0}, Landroidx/appcompat/widget/SeslSeekBar;->setOnSeekBarChangeListener(Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-boolean v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mIsViewHolderRecoilEffectEnabled:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    iput-boolean v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mIsViewHolderRecoilEffectEnabled:Z

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p1, v5}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setSeamless(Z)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/samsung/android/settings/SliderUtils;->formatStateDescription(Landroid/content/Context;Landroidx/appcompat/widget/SeslSeekBar;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f14237d    # 1.9691E38f

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setStateDescription(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2

    throw p0
.end method

.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 0

    iput-boolean p2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->mIsFocusable:Z

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-eqz p1, :cond_0

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

.method public final onProgressChanged(Landroidx/appcompat/widget/SeslSeekBar;IZ)V
    .locals 1

    iget-boolean p2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->mIsFocusable:Z

    if-nez p2, :cond_0

    if-nez p2, :cond_2

    if-eqz p3, :cond_2

    if-eqz p1, :cond_2

    :cond_0
    invoke-virtual {p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result p2

    iget-boolean p3, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->mEnableControlInSetting:Z

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->mContext:Landroid/content/Context;

    const-string v0, "mDNIe"

    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/hardware/display/SemMdnieManager;

    const/4 v0, 0x1

    invoke-virtual {p3, v0, p2}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setNightMode(ZI)Z

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const-string v0, "blue_light_filter_opacity"

    invoke-static {p3, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-static {p3, p1}, Lcom/samsung/android/settings/SliderUtils;->formatStateDescription(Landroid/content/Context;Landroidx/appcompat/widget/SeslSeekBar;)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p3, 0x7f14237d    # 1.9691E38f

    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setStateDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result p0

    int-to-long p0, p0

    const/16 p2, 0x107e

    const/16 p3, 0x1080

    invoke-static {p2, p3, p0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    :cond_2
    return-void
.end method

.method public final onStartTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 6

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->mIsFocusable:Z

    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "blue_light_filter"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "blue_light_filter_adaptive_mode"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    move v1, p1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "blue_light_filter_scheduled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    move v3, p1

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_2
    iget-object v4, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "blue_light_filter_type"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v3, :cond_3

    if-nez v4, :cond_3

    move v2, p1

    :cond_3
    if-eqz v0, :cond_5

    if-nez v1, :cond_5

    if-eqz v3, :cond_5

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeUtils;->duringScheduleTime(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_5

    iput-boolean p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->mEnableControlInSetting:Z

    :cond_5
    :goto_3
    return-void
.end method

.method public final onStopTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->mIsFocusable:Z

    iget-object v1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "blue_light_filter_opacity"

    invoke-virtual {p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result p1

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-boolean p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->mEnableControlInSetting:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->mContext:Landroid/content/Context;

    const-string v1, "mDNIe"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-virtual {p1, v0, v0}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setNightMode(ZI)Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->mEnableControlInSetting:Z

    const-string p0, "EyeComfortSeekBarPreference"

    const-string/jumbo p1, "onStopTrackingTouch disable!"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final setProgress(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/display/DisplayCustomPreference;->setProgress$2(IZ)V

    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    :cond_0
    return-void
.end method
