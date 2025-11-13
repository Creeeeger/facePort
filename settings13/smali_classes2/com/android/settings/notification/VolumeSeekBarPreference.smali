.class public Lcom/android/settings/notification/VolumeSeekBarPreference;
.super Lcom/android/settings/widget/SeekBarPreference;
.source "VolumeSeekBarPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;
    }
.end annotation


# instance fields
.field mAudioManager:Landroid/media/AudioManager;

.field private mCallback:Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;

.field private mIconResId:I

.field private mIconView:Landroid/widget/ImageView;

.field private final mJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

.field private mMuteIconResId:I

.field private mMuted:Z

.field protected mSeekBar:Landroid/widget/SeekBar;

.field private mStopped:Z

.field private mStream:I

.field private mSuppressionText:Ljava/lang/String;

.field private mSuppressionTextView:Landroid/widget/TextView;

.field private mVolumizer:Landroid/preference/SeekBarVolumizer;

.field private mZenMuted:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallback(Lcom/android/settings/notification/VolumeSeekBarPreference;)Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mCallback:Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmJankMonitor(Lcom/android/settings/notification/VolumeSeekBarPreference;)Lcom/android/internal/jank/InteractionJankMonitor;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMuted(Lcom/android/settings/notification/VolumeSeekBarPreference;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mMuted:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStream(Lcom/android/settings/notification/VolumeSeekBarPreference;)I
    .locals 0

    iget p0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mStream:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmZenMuted(Lcom/android/settings/notification/VolumeSeekBarPreference;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mZenMuted:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmMuted(Lcom/android/settings/notification/VolumeSeekBarPreference;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mMuted:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmZenMuted(Lcom/android/settings/notification/VolumeSeekBarPreference;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mZenMuted:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 83
    invoke-direct {p0, p1}, Lcom/android/settings/widget/SeekBarPreference;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    .line 84
    sget v0, Lcom/android/settings/R$layout;->preference_volume_slider:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const-string v0, "audio"

    .line 85
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    .line 78
    sget p2, Lcom/android/settings/R$layout;->preference_volume_slider:I

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const-string p2, "audio"

    .line 79
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/widget/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    .line 72
    sget p2, Lcom/android/settings/R$layout;->preference_volume_slider:I

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const-string p2, "audio"

    .line 73
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/widget/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 46
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    .line 66
    sget p2, Lcom/android/settings/R$layout;->preference_volume_slider:I

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const-string p2, "audio"

    .line 67
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method private getMediaVolumeUri()Landroid/net/Uri;
    .locals 2

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p0, Lcom/android/settings/R$raw;->media_volume:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 200
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected init()V
    .locals 5

    .line 125
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-nez v0, :cond_0

    return-void

    .line 126
    :cond_0
    new-instance v0, Lcom/android/settings/notification/VolumeSeekBarPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/VolumeSeekBarPreference$1;-><init>(Lcom/android/settings/notification/VolumeSeekBarPreference;)V

    .line 160
    iget v1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mStream:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->getMediaVolumeUri()Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 161
    :goto_0
    iget-object v2, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mVolumizer:Landroid/preference/SeekBarVolumizer;

    if-nez v2, :cond_2

    .line 162
    new-instance v2, Landroid/preference/SeekBarVolumizer;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mStream:I

    invoke-direct {v2, v3, v4, v1, v0}, Landroid/preference/SeekBarVolumizer;-><init>(Landroid/content/Context;ILandroid/net/Uri;Landroid/preference/SeekBarVolumizer$Callback;)V

    iput-object v2, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mVolumizer:Landroid/preference/SeekBarVolumizer;

    .line 164
    :cond_2
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mVolumizer:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->start()V

    .line 165
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mVolumizer:Landroid/preference/SeekBarVolumizer;

    iget-object v1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/preference/SeekBarVolumizer;->setSeekBar(Landroid/widget/SeekBar;)V

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->updateIconView()V

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->updateSuppressionText()V

    .line 168
    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 169
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 170
    iget-object p0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mVolumizer:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {p0}, Landroid/preference/SeekBarVolumizer;->stop()V

    :cond_3
    return-void
.end method

.method public onActivityPause()V
    .locals 1

    const/4 v0, 0x1

    .line 108
    iput-boolean v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mStopped:Z

    .line 109
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mVolumizer:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->stop()V

    const/4 v0, 0x0

    .line 111
    iput-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mVolumizer:Landroid/preference/SeekBarVolumizer;

    :cond_0
    return-void
.end method

.method public onActivityResume()V
    .locals 1

    .line 102
    iget-boolean v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mStopped:Z

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->init()V

    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 117
    invoke-super {p0, p1}, Lcom/android/settings/widget/SeekBarPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020531

    .line 118
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    const v0, 0x1020006

    .line 119
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mIconView:Landroid/widget/ImageView;

    .line 120
    sget v0, Lcom/android/settings/R$id;->suppression_text:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mSuppressionTextView:Landroid/widget/TextView;

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->init()V

    return-void
.end method

.method public setCallback(Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mCallback:Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;

    return-void
.end method

.method public setMuteIcon(I)V
    .locals 1

    .line 194
    iget v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mMuteIconResId:I

    if-ne v0, p1, :cond_0

    return-void

    .line 195
    :cond_0
    iput p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mMuteIconResId:I

    .line 196
    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->updateIconView()V

    return-void
.end method

.method public setStream(I)V
    .locals 1

    .line 89
    iput p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mStream:I

    .line 90
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SeekBarPreference;->setMax(I)V

    .line 93
    iget-object p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mAudioManager:Landroid/media/AudioManager;

    iget v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mStream:I

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamMinVolumeInt(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SeekBarPreference;->setMin(I)V

    .line 94
    iget-object p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mAudioManager:Landroid/media/AudioManager;

    iget v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mStream:I

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(I)V

    return-void
.end method

.method public setSuppressionText(Ljava/lang/String;)V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mSuppressionText:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 207
    :cond_0
    iput-object p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mSuppressionText:Ljava/lang/String;

    .line 208
    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->updateSuppressionText()V

    return-void
.end method

.method public showIcon(I)V
    .locals 1

    .line 188
    iget v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mIconResId:I

    if-ne v0, p1, :cond_0

    return-void

    .line 189
    :cond_0
    iput p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mIconResId:I

    .line 190
    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->updateIconView()V

    return-void
.end method

.method protected updateIconView()V
    .locals 3

    .line 175
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mIconView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 176
    :cond_0
    iget v1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mIconResId:I

    if-eqz v1, :cond_1

    .line 177
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 178
    :cond_1
    iget v1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mMuteIconResId:I

    if-eqz v1, :cond_2

    iget-boolean v2, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mMuted:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mZenMuted:Z

    if-nez v2, :cond_2

    .line 179
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 181
    :cond_2
    invoke-virtual {p0}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method protected updateSuppressionText()V
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mSuppressionTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v1, :cond_1

    .line 213
    iget-object v1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mSuppressionText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mSuppressionText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 215
    iget-object p0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mSuppressionTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method
