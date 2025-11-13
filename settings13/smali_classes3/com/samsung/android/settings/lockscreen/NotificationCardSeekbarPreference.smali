.class public Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;
.super Landroidx/preference/SecPreference;
.source "NotificationCardSeekbarPreference.java"

# interfaces
.implements Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field private isTextColorInverseEnabled:Z

.field private mContext:Landroid/content/Context;

.field private mIsTalkBackEnabled:Z

.field private mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

.field private mSeekBarDescText:Landroid/widget/RelativeLayout;

.field private percentageView:Landroid/widget/TextView;

.field private shouldInvertTextColor:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Landroidx/preference/SecPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 49
    iput-boolean p2, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->mIsTalkBackEnabled:Z

    .line 61
    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->mContext:Landroid/content/Context;

    .line 62
    invoke-static {p1}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->mIsTalkBackEnabled:Z

    .line 63
    sget p1, Lcom/android/settings/R$layout;->sec_preference_seekbar_noticard:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 5

    .line 68
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 70
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 71
    sget v0, Lcom/android/settings/R$id;->noti_card_seekbar:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SeslSeekBar;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    .line 72
    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    .line 73
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/SeslSeekBar;->setOnSeekBarChangeListener(Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;)V

    .line 74
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 75
    sget v0, Lcom/android/settings/R$id;->reverse_text_layout:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->mSeekBarDescText:Landroid/widget/RelativeLayout;

    .line 76
    sget v0, Lcom/android/settings/R$id;->transparency_percentage:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->percentageView:Landroid/widget/TextView;

    .line 78
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$integer;->config_default_lock_noticard_opacity:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const-string v1, "lock_noticard_opacity"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 80
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    rsub-int/lit8 p1, p1, 0x64

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    .line 81
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->percentageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->sec_lockscreen_noti_card_seekbar_percentage:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 82
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 81
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->setSeekBarContentDescription(Ljava/lang/CharSequence;)V

    .line 88
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->updateSeekBarDescVisible()V

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 127
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    .line 130
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-nez p0, :cond_1

    return v0

    .line 133
    :cond_1
    invoke-virtual {p0, p2, p3}, Landroidx/appcompat/widget/SeslAbsSeekBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onProgressChanged(Landroidx/appcompat/widget/SeslSeekBar;IZ)V
    .locals 2

    .line 92
    iget-object p3, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    rsub-int/lit8 p2, p2, 0x64

    const-string v0, "lock_noticard_opacity"

    invoke-static {p3, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 93
    invoke-virtual {p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->setSeekBarContentDescription(Ljava/lang/CharSequence;)V

    .line 94
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->percentageView:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->mContext:Landroid/content/Context;

    sget p3, Lcom/android/settings/R$string;->sec_lockscreen_noti_card_seekbar_percentage:I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    .line 95
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 94
    invoke-virtual {p2, p3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 3

    .line 116
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result p1

    .line 117
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    rsub-int/lit8 v1, p1, 0x64

    const-string v2, "lock_noticard_opacity"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    int-to-long v0, p1

    const/16 p1, 0x114c

    const/16 v2, 0x1166

    .line 118
    invoke-static {p1, v2, v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    .line 122
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->updateSeekBarDescVisible()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 151
    invoke-super {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 152
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->mSeekBarDescText:Landroid/widget/RelativeLayout;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const p1, 0x3ecccccd    # 0.4f

    .line 153
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method public setSeekBarContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-eqz v0, :cond_1

    .line 101
    iget-boolean p0, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->mIsTalkBackEnabled:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 102
    invoke-virtual {v0, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateSeekBarDescVisible()V
    .locals 4

    .line 137
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_text_color_inversion"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->isTextColorInverseEnabled:Z

    .line 139
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "white_lockscreen_wallpaper"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 141
    iput-boolean v1, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->shouldInvertTextColor:Z

    .line 143
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "current_sec_active_themepackage"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    .line 145
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->mSeekBarDescText:Landroid/widget/RelativeLayout;

    iget-boolean v3, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->isTextColorInverseEnabled:Z

    if-eqz v3, :cond_2

    iget-boolean p0, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->shouldInvertTextColor:Z

    if-eqz p0, :cond_2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method
