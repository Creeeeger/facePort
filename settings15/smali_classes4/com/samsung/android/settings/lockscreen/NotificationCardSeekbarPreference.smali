.class public Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;
.super Landroidx/preference/SecPreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public isTextColorInverseEnabled:Z

.field public final mContext:Landroid/content/Context;

.field public final mIsTalkBackEnabled:Z

.field public mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

.field public mSeekBarDescText:Landroid/widget/RelativeLayout;

.field public percentageView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/preference/SecPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->mIsTalkBackEnabled:Z

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->mIsTalkBackEnabled:Z

    const p1, 0x7f0d0955

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const v0, 0x7f0a0a9b

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SeslSeekBar;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/SeslSeekBar;->setOnSeekBarChangeListener(Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const v0, 0x7f0a0caf

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->mSeekBarDescText:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a1088

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->percentageView:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const-string v1, "lock_noticard_opacity"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    rsub-int/lit8 p1, p1, 0x64

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->percentageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->mContext:Landroid/content/Context;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const v2, 0x7f14252e

    invoke-virtual {v1, v2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->mIsTalkBackEnabled:Z

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->updateSeekBarDescVisible()V

    return-void
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0, p2, p3}, Landroidx/appcompat/widget/SeslAbsSeekBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final onProgressChanged(Landroidx/appcompat/widget/SeslSeekBar;IZ)V
    .locals 1

    iget-object p3, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    rsub-int/lit8 p2, p2, 0x64

    const-string v0, "lock_noticard_opacity"

    invoke-static {p3, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-eqz p2, :cond_1

    iget-boolean p3, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->mIsTalkBackEnabled:Z

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->percentageView:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const p3, 0x7f14252e

    invoke-virtual {p2, p3, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onStartTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 0

    return-void
.end method

.method public final onStopTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 3

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    rsub-int/lit8 v1, p1, 0x64

    const-string v2, "lock_noticard_opacity"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    int-to-long v0, p1

    const/16 p1, 0x1153

    const/16 v2, 0x1166

    invoke-static {p1, v2, v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->updateSeekBarDescVisible()V

    return-void
.end method

.method public final setEnabled(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->mSeekBarDescText:Landroid/widget/RelativeLayout;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const p1, 0x3ecccccd    # 0.4f

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method public final updateSeekBarDescVisible()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "notification_text_color_inversion"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "white_lockscreen_wallpaper"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "current_sec_active_themepackage"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->mSeekBarDescText:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method
