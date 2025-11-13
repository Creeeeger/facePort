.class public Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;
.super Lcom/android/settings/widget/SeekBarPreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mAudioFocusListener:Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference$2;

.field public final mAudioManager:Landroid/media/AudioManager;

.field public mCallback:Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference$Callback;

.field public mFirstBind:Z

.field public mFocusRequest:Landroid/media/AudioFocusRequest;

.field public final mJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

.field public mMuteIconResId:I

.field public mMuted:Z

.field public mSeekBar:Landroid/widget/SeekBar;

.field public mStopped:Z

.field public mStream:I

.field public mSuppressionText:Ljava/lang/String;

.field public mSuppressionTextView:Landroid/widget/TextView;

.field public final mUserManager:Landroid/os/UserManager;

.field public mVolumeIcon:Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;

.field public mVolumizer:Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;

.field public mVolumizerDTMF:Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizerDTMF;

.field public mZenMuted:Z


# direct methods
.method public static -$$Nest$mrequestAudioFocus(Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;)Z
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    const/4 v3, 0x5

    const/4 v4, 0x1

    if-ge v1, v3, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mFocusRequest:Landroid/media/AudioFocusRequest;

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

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

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/settings/widget/SeekBarPreference;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mFirstBind:Z

    new-instance v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference$2;-><init>(Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;)V

    iput-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mAudioFocusListener:Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference$2;

    new-instance v1, Landroid/media/AudioFocusRequest$Builder;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    invoke-virtual {v1, v0}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/media/AudioFocusRequest$Builder;->setWillPauseWhenDucked(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mFocusRequest:Landroid/media/AudioFocusRequest;

    const v0, 0x7f0d095a

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mUserManager:Landroid/os/UserManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mFirstBind:Z

    new-instance p2, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference$2;-><init>(Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;)V

    iput-object p2, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mAudioFocusListener:Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference$2;

    new-instance v0, Landroid/media/AudioFocusRequest$Builder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    invoke-virtual {v0, p2}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p2

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/media/AudioFocusRequest$Builder;->setWillPauseWhenDucked(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mFocusRequest:Landroid/media/AudioFocusRequest;

    const p2, 0x7f0d095a

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioManager;

    iput-object p2, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo p2, "user"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mUserManager:Landroid/os/UserManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/widget/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mFirstBind:Z

    new-instance p2, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference$2;-><init>(Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;)V

    iput-object p2, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mAudioFocusListener:Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference$2;

    new-instance p3, Landroid/media/AudioFocusRequest$Builder;

    const/4 v0, 0x2

    invoke-direct {p3, v0}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    invoke-virtual {p3, p2}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p2

    new-instance p3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p3

    invoke-virtual {p3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/media/AudioFocusRequest$Builder;->setWillPauseWhenDucked(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mFocusRequest:Landroid/media/AudioFocusRequest;

    const p2, 0x7f0d095a

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioManager;

    iput-object p2, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo p2, "user"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mUserManager:Landroid/os/UserManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/widget/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mFirstBind:Z

    new-instance p2, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference$2;-><init>(Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;)V

    iput-object p2, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mAudioFocusListener:Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference$2;

    new-instance p3, Landroid/media/AudioFocusRequest$Builder;

    const/4 p4, 0x2

    invoke-direct {p3, p4}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    invoke-virtual {p3, p2}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p2

    new-instance p3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p3

    invoke-virtual {p3, p4}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p3

    invoke-virtual {p3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/media/AudioFocusRequest$Builder;->setWillPauseWhenDucked(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mFocusRequest:Landroid/media/AudioFocusRequest;

    const p2, 0x7f0d095a

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioManager;

    iput-object p2, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo p2, "user"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mUserManager:Landroid/os/UserManager;

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/widget/SeekBarPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x102053c

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v0, 0x7f0a0f8e

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mSuppressionTextView:Landroid/widget/TextView;

    const v0, 0x7f0a01ae

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mVolumeIcon:Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;

    new-instance p1, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mVolumeIcon:Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mStream:I

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->initialize(Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;I)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->semSetMode(I)V

    iget p1, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mStream:I

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->semSetMin(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->setupCustomInit()V

    return-void
.end method

.method public final setContentDescriptionForAutomationTest$1(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final setupCustomInit()V
    .locals 11

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mFocusRequest:Landroid/media/AudioFocusRequest;

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-nez v0, :cond_1

    new-instance v0, Landroid/media/AudioFocusRequest$Builder;

    invoke-direct {v0, v2}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mAudioFocusListener:Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference$2;

    invoke-virtual {v0, v3}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    new-instance v3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v3, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/media/AudioFocusRequest$Builder;->setWillPauseWhenDucked(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mFocusRequest:Landroid/media/AudioFocusRequest;

    :cond_1
    iget v0, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mStream:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/16 v5, 0x8

    if-ne v0, v5, :cond_2

    new-instance v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference$3;-><init>(Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;)V

    iget-object v6, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mVolumizerDTMF:Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizerDTMF;

    if-nez v6, :cond_5

    new-instance v6, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizerDTMF;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizerDTMF;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference$3;)V

    iput-object v6, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mVolumizerDTMF:Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizerDTMF;

    goto :goto_1

    :cond_2
    new-instance v6, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference$3;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference$3;-><init>(Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;)V

    const-string v7, "SecVolumeSeekBarPreference"

    if-ne v0, v4, :cond_3

    const-string v8, "file:///system/media/audio/ui/Media_preview_Over_the_horizon.ogg"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "getMediaVolumeUri: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move-object v8, v3

    :goto_0
    const/16 v9, 0xb

    if-ne v0, v9, :cond_4

    const-string v0, "file:///system/media/audio/ui/Bixby_BOS.ogg"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v9, "getBixbyVolumeUri: "

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mVolumizer:Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;

    if-nez v0, :cond_5

    new-instance v0, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v7

    iget v9, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mStream:I

    invoke-direct {v0, v7, v9, v8, v6}, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;-><init>(Landroid/content/Context;ILandroid/net/Uri;Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference$3;)V

    iput-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mVolumizer:Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mVolumizerDTMF:Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizerDTMF;

    if-nez v0, :cond_6

    iget v0, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mStream:I

    if-ne v0, v5, :cond_6

    new-instance v0, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizerDTMF;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6, v3}, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizerDTMF;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference$3;)V

    iput-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mVolumizerDTMF:Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizerDTMF;

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mVolumizerDTMF:Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizerDTMF;

    if-eqz v0, :cond_7

    iget-object v6, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iput-object v6, v0, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizerDTMF;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v6, v0, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizerDTMF;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "volume_waiting_tone"

    invoke-static {v6, v7, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    iget-object v6, v0, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizerDTMF;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v7, 0xfa0

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v6, v0, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizerDTMF;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v6, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v2, v0, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizerDTMF;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mVolumizer:Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v6, "no_adjust_volume"

    invoke-virtual {v0, v6}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mVolumizer:Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;

    iget-object v6, v0, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;->mHandler:Landroid/os/Handler;

    if-eqz v6, :cond_9

    goto :goto_2

    :cond_9
    new-instance v6, Landroid/os/HandlerThread;

    const-string v7, "SecSeekBarVolumizer.CallbackHandler"

    invoke-direct {v6, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    new-instance v7, Landroid/os/Handler;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v7, v6, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v7, v0, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    new-instance v6, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer$Observer;

    iget-object v7, v0, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-direct {v6, v0, v7}, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer$Observer;-><init>(Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;Landroid/os/Handler;)V

    iput-object v6, v0, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;->mVolumeObserver:Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer$Observer;

    iget-object v6, v0, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/Settings$System;->VOLUME_SETTINGS_INT:[Ljava/lang/String;

    iget v8, v0, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;->mStreamType:I

    aget-object v7, v7, v8

    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, v0, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;->mVolumeObserver:Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer$Observer;

    invoke-virtual {v6, v7, v2, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, v0, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;->mReceiver:Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer$Receiver;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer$Receiver;->setListening(Z)V

    :goto_2
    iget-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mVolumizer:Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;

    iget-object v1, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v6, v0, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v6, :cond_a

    invoke-virtual {v6, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    :cond_a
    iput-object v1, v0, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget v3, v0, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;->mStreamType:I

    if-ne v3, v5, :cond_c

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v1, v0, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    iget v3, v0, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;->mLastProgress:I

    const/4 v5, -0x1

    if-le v3, v5, :cond_b

    goto :goto_3

    :cond_b
    iget v3, v0, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;->mLastWaitingToneVolume:I

    :goto_3
    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_4

    :cond_c
    iget-object v1, v0, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    iget v3, v0, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;->mMaxStreamVolume:I

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setMax(I)V

    invoke-virtual {v0}, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;->updateSeekBar()V

    :goto_4
    iget-object v1, v0, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    :cond_d
    invoke-virtual {p0}, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->updateSuppressionText()V

    iget-boolean v0, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mFirstBind:Z

    if-eqz v0, :cond_e

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;)V

    const-wide/16 v5, 0x32

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mFirstBind:Z

    :cond_e
    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mVolumizer:Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;->stop()V

    :cond_f
    iget-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mVolumizerDTMF:Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizerDTMF;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizerDTMF;->stop()V

    :cond_10
    iget v0, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mStream:I

    if-ne v0, v4, :cond_11

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->setContentDescriptionForAutomationTest$1(I)V

    goto :goto_5

    :cond_11
    iget-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    div-int/lit8 v0, v0, 0x64

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->setContentDescriptionForAutomationTest$1(I)V

    :goto_5
    return-void
.end method

.method public final showIcon(I)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mVolumeIcon:Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->updateLayout(Z)V

    :cond_0
    return-void
.end method

.method public final updateOverlapPointForDualColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->semSetOverlapPointForDualColor(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->invalidate()V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mVolumeIcon:Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->updateLayout(Z)V

    :cond_1
    return-void
.end method

.method public final updateSuppressionText()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mSuppressionTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mSuppressionText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mSuppressionText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mSuppressionTextView:Landroid/widget/TextView;

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
