.class public Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;
.super Lcom/android/settings/widget/SeekBarPreference;
.source "SecVolumeSeekBarPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$Callback;
    }
.end annotation


# instance fields
.field private final mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field mAudioManager:Landroid/media/AudioManager;

.field private mCallback:Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$Callback;

.field private mEarProtectLevel:I

.field private mFirstBind:Z

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

.field mVolumeIcon:Lcom/samsung/android/settings/as/widget/SecVolumeIcon;

.field private mVolumizer:Landroid/preference/SeekBarVolumizer;

.field private mVolumizerDTMF:Lcom/samsung/android/settings/as/audio/SecSeekBarVolumizerDTMF;

.field private mZenMuted:Z


# direct methods
.method public static synthetic $r8$lambda$0y94YUoUvhHAUTqobAhOLGSlG7w(Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->lambda$updateUI$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmCallback(Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;)Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$Callback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mCallback:Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$Callback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmJankMonitor(Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;)Lcom/android/internal/jank/InteractionJankMonitor;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMuted(Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mMuted:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStream(Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mStream:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmVolumizer(Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;)Landroid/preference/SeekBarVolumizer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mVolumizer:Landroid/preference/SeekBarVolumizer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmZenMuted(Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mZenMuted:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmMuted(Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mMuted:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmZenMuted(Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mZenMuted:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mrequestAudioFocus(Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->requestAudioFocus()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetContentDescriptionForAutomationTest(Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->setContentDescriptionForAutomationTest(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 112
    invoke-direct {p0, p1}, Lcom/android/settings/widget/SeekBarPreference;-><init>(Landroid/content/Context;)V

    .line 55
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mFirstBind:Z

    const v0, 0x7fffffff

    .line 76
    iput v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mEarProtectLevel:I

    .line 310
    new-instance v0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$2;-><init>(Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;)V

    iput-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 114
    sget v0, Lcom/android/settings/R$layout;->sec_preference_volume_slider:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const-string v0, "audio"

    .line 118
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    const/4 p2, 0x0

    .line 73
    iput-boolean p2, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mFirstBind:Z

    const p2, 0x7fffffff

    .line 76
    iput p2, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mEarProtectLevel:I

    .line 310
    new-instance p2, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$2;-><init>(Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;)V

    iput-object p2, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 104
    sget p2, Lcom/android/settings/R$layout;->sec_preference_volume_slider:I

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const-string p2, "audio"

    .line 108
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 92
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/widget/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    const/4 p2, 0x0

    .line 73
    iput-boolean p2, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mFirstBind:Z

    const p2, 0x7fffffff

    .line 76
    iput p2, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mEarProtectLevel:I

    .line 310
    new-instance p2, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$2;-><init>(Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;)V

    iput-object p2, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 94
    sget p2, Lcom/android/settings/R$layout;->sec_preference_volume_slider:I

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const-string p2, "audio"

    .line 98
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/widget/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 55
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    const/4 p2, 0x0

    .line 73
    iput-boolean p2, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mFirstBind:Z

    const p2, 0x7fffffff

    .line 76
    iput p2, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mEarProtectLevel:I

    .line 310
    new-instance p2, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$2;-><init>(Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;)V

    iput-object p2, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 84
    sget p2, Lcom/android/settings/R$layout;->sec_preference_volume_slider:I

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const-string p2, "audio"

    .line 88
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method private getBixbyVolumeUri()Landroid/net/Uri;
    .locals 2

    const-string p0, "file:///system/media/audio/ui/Bixby_BOS.ogg"

    .line 461
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getBixbyVolumeUri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecVolumeSeekBarPreference"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method private getMediaVolumeUri()Landroid/net/Uri;
    .locals 2

    const-string p0, "file:///system/media/audio/ui/Media_preview_Over_the_horizon.ogg"

    .line 276
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMediaVolumeUri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecVolumeSeekBarPreference"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method private getSampleUri(I)Landroid/net/Uri;
    .locals 2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 495
    invoke-direct {p0}, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->getMediaVolumeUri()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xb

    if-ne p1, v1, :cond_1

    .line 497
    invoke-direct {p0}, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->getBixbyVolumeUri()Landroid/net/Uri;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private synthetic lambda$updateUI$0()V
    .locals 0

    .line 480
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method private requestAudioFocus()Z
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    const/4 v3, 0x5

    const/4 v4, 0x1

    if-ge v1, v3, :cond_1

    .line 469
    iget-object v2, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v5, 0x3

    const/4 v6, 0x2

    invoke-virtual {v2, v3, v5, v6}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v2

    if-ne v2, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    move v0, v4

    :cond_2
    return v0
.end method

.method private setContentDescriptionForAutomationTest(I)V
    .locals 1

    .line 506
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 507
    iget-object p0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setupCustomInit()V
    .locals 6

    .line 327
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-nez v0, :cond_0

    return-void

    .line 329
    :cond_0
    iget v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mStream:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 330
    new-instance v0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$3;-><init>(Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;)V

    .line 363
    iget-object v2, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mVolumizerDTMF:Lcom/samsung/android/settings/as/audio/SecSeekBarVolumizerDTMF;

    if-nez v2, :cond_2

    .line 364
    new-instance v2, Lcom/samsung/android/settings/as/audio/SecSeekBarVolumizerDTMF;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/samsung/android/settings/as/audio/SecSeekBarVolumizerDTMF;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/as/audio/SecSeekBarVolumizerDTMF$Callback;)V

    iput-object v2, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mVolumizerDTMF:Lcom/samsung/android/settings/as/audio/SecSeekBarVolumizerDTMF;

    goto :goto_0

    .line 367
    :cond_1
    new-instance v0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$4;-><init>(Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;)V

    .line 410
    iget v2, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mStream:I

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->getSampleUri(I)Landroid/net/Uri;

    move-result-object v2

    .line 412
    iget-object v3, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mVolumizer:Landroid/preference/SeekBarVolumizer;

    if-nez v3, :cond_2

    .line 413
    new-instance v3, Landroid/preference/SeekBarVolumizer;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mStream:I

    invoke-direct {v3, v4, v5, v2, v0}, Landroid/preference/SeekBarVolumizer;-><init>(Landroid/content/Context;ILandroid/net/Uri;Landroid/preference/SeekBarVolumizer$Callback;)V

    iput-object v3, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mVolumizer:Landroid/preference/SeekBarVolumizer;

    .line 417
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mVolumizerDTMF:Lcom/samsung/android/settings/as/audio/SecSeekBarVolumizerDTMF;

    if-nez v0, :cond_3

    iget v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mStream:I

    if-ne v0, v1, :cond_3

    .line 418
    new-instance v0, Lcom/samsung/android/settings/as/audio/SecSeekBarVolumizerDTMF;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/as/audio/SecSeekBarVolumizerDTMF;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mVolumizerDTMF:Lcom/samsung/android/settings/as/audio/SecSeekBarVolumizerDTMF;

    .line 420
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mVolumizerDTMF:Lcom/samsung/android/settings/as/audio/SecSeekBarVolumizerDTMF;

    if-eqz v0, :cond_4

    .line 421
    iget-object v1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/as/audio/SecSeekBarVolumizerDTMF;->setSeekBar(Landroid/widget/SeekBar;)V

    .line 424
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mVolumizer:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_5

    .line 425
    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->start()V

    .line 426
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mVolumizer:Landroid/preference/SeekBarVolumizer;

    iget-object v1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/preference/SeekBarVolumizer;->setSeekBar(Landroid/widget/SeekBar;)V

    .line 429
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->updateSuppressionText()V

    .line 431
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/as/utils/SoundUtils;->isMuteAllSoundEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 432
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 433
    invoke-direct {p0}, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->updateUI()V

    .line 436
    :cond_6
    iget-boolean v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mFirstBind:Z

    if-eqz v0, :cond_7

    .line 437
    invoke-direct {p0}, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->updateUI()V

    .line 438
    iput-boolean v1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mFirstBind:Z

    .line 440
    :cond_7
    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    .line 441
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 442
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mVolumizer:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_8

    .line 443
    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->stop()V

    .line 446
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mVolumizerDTMF:Lcom/samsung/android/settings/as/audio/SecSeekBarVolumizerDTMF;

    if-eqz v0, :cond_9

    .line 447
    invoke-virtual {v0}, Lcom/samsung/android/settings/as/audio/SecSeekBarVolumizerDTMF;->stop()V

    .line 452
    :cond_9
    iget v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mStream:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    .line 453
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->setContentDescriptionForAutomationTest(I)V

    goto :goto_1

    .line 455
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    div-int/lit8 v0, v0, 0x64

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->setContentDescriptionForAutomationTest(I)V

    :goto_1
    return-void
.end method

.method private updateUI()V
    .locals 4

    .line 479
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 480
    new-instance v1, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public initializeIcon()V
    .locals 3

    .line 187
    new-instance v0, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;-><init>(Landroid/content/Context;)V

    .line 188
    iget-object v1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mVolumeIcon:Lcom/samsung/android/settings/as/widget/SecVolumeIcon;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v2, :cond_0

    .line 189
    iget p0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mStream:I

    invoke-virtual {v1, v0, p0}, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->initialize(Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;I)V

    :cond_0
    return-void
.end method

.method public onActivityPause()V
    .locals 2

    const/4 v0, 0x1

    .line 153
    iput-boolean v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mStopped:Z

    .line 155
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 156
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mVolumizerDTMF:Lcom/samsung/android/settings/as/audio/SecSeekBarVolumizerDTMF;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0}, Lcom/samsung/android/settings/as/audio/SecSeekBarVolumizerDTMF;->stop()V

    .line 158
    iput-object v1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mVolumizerDTMF:Lcom/samsung/android/settings/as/audio/SecSeekBarVolumizerDTMF;

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mVolumizer:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_1

    .line 162
    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->stop()V

    .line 163
    iput-object v1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mVolumizer:Landroid/preference/SeekBarVolumizer;

    :cond_1
    return-void
.end method

.method public onActivityResume()V
    .locals 1

    .line 138
    iget-boolean v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mStopped:Z

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->initializeIcon()V

    .line 141
    invoke-direct {p0}, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->setupCustomInit()V

    :cond_0
    const/4 v0, 0x1

    .line 147
    iput-boolean v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mFirstBind:Z

    .line 148
    invoke-direct {p0}, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->updateUI()V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 169
    invoke-super {p0, p1}, Lcom/android/settings/widget/SeekBarPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020531

    .line 170
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    const v0, 0x1020006

    .line 171
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mIconView:Landroid/widget/ImageView;

    .line 172
    sget v0, Lcom/android/settings/R$id;->suppression_text:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mSuppressionTextView:Landroid/widget/TextView;

    .line 174
    sget v0, Lcom/android/settings/R$id;->basic_volume_icon:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;

    iput-object p1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mVolumeIcon:Lcom/samsung/android/settings/as/widget/SecVolumeIcon;

    .line 175
    invoke-virtual {p0}, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->initializeIcon()V

    .line 176
    iget-object p1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->semSetMode(I)V

    .line 177
    iget p1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mStream:I

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 178
    iget-object p1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->semSetMin(I)V

    .line 180
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->setupCustomInit()V

    return-void
.end method

.method public setCallback(Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$Callback;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mCallback:Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$Callback;

    return-void
.end method

.method public setEarProtectLevel(I)V
    .locals 0

    .line 484
    iput p1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mEarProtectLevel:I

    return-void
.end method

.method public setMuteIcon(I)V
    .locals 1

    .line 269
    iget v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mMuteIconResId:I

    if-ne v0, p1, :cond_0

    return-void

    .line 270
    :cond_0
    iput p1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mMuteIconResId:I

    .line 271
    invoke-virtual {p0}, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->updateIconView()V

    return-void
.end method

.method public setStream(I)V
    .locals 1

    .line 122
    iput p1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mStream:I

    .line 123
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SeekBarPreference;->setMax(I)V

    .line 126
    iget-object p1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mAudioManager:Landroid/media/AudioManager;

    iget v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mStream:I

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamMinVolumeInt(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SeekBarPreference;->setMin(I)V

    return-void
.end method

.method public setSuppressionText(Ljava/lang/String;)V
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mSuppressionText:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 288
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mSuppressionText:Ljava/lang/String;

    .line 289
    invoke-virtual {p0}, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->updateSuppressionText()V

    return-void
.end method

.method public showIcon(I)V
    .locals 0

    .line 264
    iput p1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mIconResId:I

    .line 265
    invoke-virtual {p0}, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->updateIconView()V

    return-void
.end method

.method protected updateIconView()V
    .locals 1

    .line 245
    iget-object p0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mVolumeIcon:Lcom/samsung/android/settings/as/widget/SecVolumeIcon;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 246
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/as/widget/SecVolumeIcon;->updateLayout(Z)V

    :cond_0
    return-void
.end method

.method public updateOverlapPointForDualColor(I)V
    .locals 1

    .line 488
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->semSetOverlapPointForDualColor(I)V

    .line 490
    iget-object p0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->invalidate()V

    :cond_0
    return-void
.end method

.method protected updateSuppressionText()V
    .locals 2

    .line 293
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mSuppressionTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v1, :cond_1

    .line 294
    iget-object v1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mSuppressionText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mSuppressionText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 296
    iget-object p0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mSuppressionTextView:Landroid/widget/TextView;

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
