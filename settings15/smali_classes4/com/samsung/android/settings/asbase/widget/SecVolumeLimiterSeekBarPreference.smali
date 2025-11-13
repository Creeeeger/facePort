.class public Lcom/samsung/android/settings/asbase/widget/SecVolumeLimiterSeekBarPreference;
.super Landroidx/preference/SeekBarPreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final mAudioManager:Landroid/media/AudioManager;

.field public final mContext:Landroid/content/Context;

.field public mSeekBar:Landroid/widget/SeekBar;

.field public final onSeekBarChangeListener:Lcom/samsung/android/settings/asbase/widget/SecVolumeLimiterSeekBarPreference$1;

.field public final onSeekBarTouchListener:Lcom/samsung/android/settings/asbase/widget/SecVolumeLimiterSeekBarPreference$2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/asbase/widget/SecVolumeLimiterSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/asbase/widget/SecVolumeLimiterSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/asbase/widget/SecVolumeLimiterSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p2, Lcom/samsung/android/settings/asbase/widget/SecVolumeLimiterSeekBarPreference$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/asbase/widget/SecVolumeLimiterSeekBarPreference$1;-><init>(Lcom/samsung/android/settings/asbase/widget/SecVolumeLimiterSeekBarPreference;)V

    iput-object p2, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeLimiterSeekBarPreference;->onSeekBarChangeListener:Lcom/samsung/android/settings/asbase/widget/SecVolumeLimiterSeekBarPreference$1;

    new-instance p2, Lcom/samsung/android/settings/asbase/widget/SecVolumeLimiterSeekBarPreference$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/asbase/widget/SecVolumeLimiterSeekBarPreference$2;-><init>(Lcom/samsung/android/settings/asbase/widget/SecVolumeLimiterSeekBarPreference;)V

    iput-object p2, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeLimiterSeekBarPreference;->onSeekBarTouchListener:Lcom/samsung/android/settings/asbase/widget/SecVolumeLimiterSeekBarPreference$2;

    const p2, 0x7f0d0959

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeLimiterSeekBarPreference;->mContext:Landroid/content/Context;

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeLimiterSeekBarPreference;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/preference/SeekBarPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const v0, 0x7f0a111b

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeLimiterSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeLimiterSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "volume_limiter_value"

    const/16 v1, 0x9

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    sub-int/2addr p1, v1

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeLimiterSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeLimiterSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeLimiterSeekBarPreference;->onSeekBarChangeListener:Lcom/samsung/android/settings/asbase/widget/SecVolumeLimiterSeekBarPreference$1;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeLimiterSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeLimiterSeekBarPreference;->onSeekBarTouchListener:Lcom/samsung/android/settings/asbase/widget/SecVolumeLimiterSeekBarPreference$2;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/asbase/widget/SecVolumeLimiterSeekBarPreference;->updateSeekBarDrawable(Z)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/asbase/widget/SecVolumeLimiterSeekBarPreference;->updateVolumeLimiter(I)V

    :goto_0
    return-void
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_2

    :cond_0
    const/16 p1, 0x15

    if-eq p2, p1, :cond_1

    const/16 p1, 0x16

    if-eq p2, p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeLimiterSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p2, p3}, Landroid/widget/SeekBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final updateSeekBarDrawable(Z)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeLimiterSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeLimiterSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080aac

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz p1, :cond_0

    const/16 v2, 0xff

    goto :goto_0

    :cond_0
    const/16 v2, 0x99

    :goto_0
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setTickMark(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeLimiterSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeLimiterSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeLimiterSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result p0

    if-lez p0, :cond_1

    const p0, 0x7f080aaa

    goto :goto_1

    :cond_1
    const p0, 0x7f080aa7

    :goto_1
    invoke-virtual {p1, p0, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeLimiterSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f080aa8

    invoke-virtual {p0, p1, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :goto_2
    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final updateVolumeLimiter(I)V
    .locals 2

    add-int/lit8 p1, p1, 0x9

    const-string/jumbo v0, "volume_limiter_value : "

    const-string v1, "SecVolumeLimiterSeekBarPreference"

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeLimiterSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "volume_limiter_value"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeLimiterSeekBarPreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setVolumeLimiterValue(I)V

    return-void
.end method
