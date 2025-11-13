.class public Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;
.super Landroidx/preference/SeekBarPreference;
.source "SecVolumeLimiterSeekBarPreference.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference$Callback;
    }
.end annotation


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCallback:Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference$Callback;

.field private mCheckedPW:Z

.field private mContext:Landroid/content/Context;

.field private mDisabledSeekBar:Landroid/widget/SeekBar;

.field private mOldLimiterValue:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mStopped:Z

.field public onDisabledSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field public onSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field public onSeekBarTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallback(Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;)Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference$Callback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;->mCallback:Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference$Callback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCheckedPW(Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;->mCheckedPW:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisabledSeekBar(Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;)Landroid/widget/SeekBar;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;->mDisabledSeekBar:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOldLimiterValue(Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;->mOldLimiterValue:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSeekBar(Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;)Landroid/widget/SeekBar;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateVolumeLimiter(Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;->updateVolumeLimiter(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 127
    new-instance p2, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference$1;-><init>(Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;)V

    iput-object p2, p0, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;->onSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 161
    new-instance p2, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference$2;-><init>(Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;)V

    iput-object p2, p0, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;->onDisabledSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 176
    new-instance p2, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference$3;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference$3;-><init>(Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;)V

    iput-object p2, p0, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;->onSeekBarTouchListener:Landroid/view/View$OnTouchListener;

    .line 61
    sget p2, Lcom/android/settings/R$layout;->sec_preference_volume_limiter_slider:I

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 62
    iput-object p1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;->mContext:Landroid/content/Context;

    const-string p2, "audio"

    .line 63
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method private updateVolumeLimiter(I)V
    .locals 3

    .line 223
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "volumelimit_set_password"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;->mCheckedPW:Z

    if-nez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-nez v2, :cond_1

    .line 226
    iput p1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;->mOldLimiterValue:I

    :cond_1
    add-int/lit8 p1, p1, 0x9

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "volume_limiter_value : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecVolumeLimiterSeekBarPreference"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "volume_limiter_value"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 231
    iget-object p0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setVolumeLimiterValue(I)V

    return-void
.end method


# virtual methods
.method public DisplayCheckUI(Landroid/view/View;)V
    .locals 0

    .line 215
    iget-object p0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;->mCallback:Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference$Callback;

    invoke-interface {p0, p1}, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference$Callback;->showCheckPasswordDialog(Landroid/view/View;)V

    return-void
.end method

.method protected init()V
    .locals 5

    .line 108
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x5

    .line 109
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->semSetMode(I)V

    .line 110
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v2, 0x1770

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 111
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->semSetOverlapPointForDualColor(I)V

    .line 112
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "volume_limiter_value"

    const/16 v4, 0x9

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sub-int/2addr v0, v4

    .line 114
    iget-object v3, p0, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    mul-int/lit16 v0, v0, 0x3e8

    invoke-virtual {v3, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 115
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->refreshDrawableState()V

    .line 116
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;->onSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 117
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;->onSeekBarTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 119
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;->mDisabledSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 120
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;->mDisabledSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->semSetMode(I)V

    .line 122
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;->mDisabledSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 123
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;->mDisabledSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;->onDisabledSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 124
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;->mDisabledSeekBar:Landroid/widget/SeekBar;

    iget-object p0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;->onSeekBarTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public onActivityStop()V
    .locals 1

    const/4 v0, 0x1

    .line 91
    iput-boolean v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;->mStopped:Z

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 96
    invoke-super {p0, p1}, Landroidx/preference/SeekBarPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 97
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    .line 98
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 99
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 100
    sget v0, Lcom/android/settings/R$id;->volume_limiter_seekbar:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 101
    sget v0, Lcom/android/settings/R$id;->volume_limiter_disabled_seekbar:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;->mDisabledSeekBar:Landroid/widget/SeekBar;

    .line 102
    iget-object p1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "volume_limiter_value"

    const/16 v1, 0x9

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;->mOldLimiterValue:I

    .line 104
    invoke-virtual {p0}, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;->init()V

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 195
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

    .line 199
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz p0, :cond_2

    .line 200
    invoke-virtual {p0, p2, p3}, Landroid/widget/SeekBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public setCallback(Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference$Callback;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;->mCallback:Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference$Callback;

    const/4 p1, 0x0

    .line 81
    iput-boolean p1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;->mCheckedPW:Z

    return-void
.end method

.method public setCheckedPW(Z)V
    .locals 0

    .line 211
    iput-boolean p1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;->mCheckedPW:Z

    return-void
.end method
