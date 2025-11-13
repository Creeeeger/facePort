.class public final Landroid/media/AudioFocusRequest;
.super Ljava/lang/Object;
.source "AudioFocusRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioFocusRequest$Builder;
    }
.end annotation


# static fields
.field private static final greylist-max-o FOCUS_DEFAULT_ATTR:Landroid/media/AudioAttributes;

.field public static final greylist-max-o KEY_ACCESSIBILITY_FORCE_FOCUS_DUCKING:Ljava/lang/String; = "a11y_force_ducking"


# instance fields
.field private final greylist-max-o mAttr:Landroid/media/AudioAttributes;

.field private final greylist-max-o mFlags:I

.field private final greylist-max-o mFocusGain:I

.field private final greylist-max-o mFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private final greylist-max-o mListenerHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAttr(Landroid/media/AudioFocusRequest;)Landroid/media/AudioAttributes;
    .locals 0

    iget-object p0, p0, Landroid/media/AudioFocusRequest;->mAttr:Landroid/media/AudioAttributes;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFocusGain(Landroid/media/AudioFocusRequest;)I
    .locals 0

    iget p0, p0, Landroid/media/AudioFocusRequest;->mFocusGain:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFocusListener(Landroid/media/AudioFocusRequest;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 0

    iget-object p0, p0, Landroid/media/AudioFocusRequest;->mFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListenerHandler(Landroid/media/AudioFocusRequest;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/media/AudioFocusRequest;->mListenerHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetFOCUS_DEFAULT_ATTR()Landroid/media/AudioAttributes;
    .locals 1

    sget-object v0, Landroid/media/AudioFocusRequest;->FOCUS_DEFAULT_ATTR:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Landroid/media/AudioFocusRequest;->FOCUS_DEFAULT_ATTR:Landroid/media/AudioAttributes;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;Landroid/media/AudioAttributes;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/AudioFocusRequest;->mFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    iput-object p2, p0, Landroid/media/AudioFocusRequest;->mListenerHandler:Landroid/os/Handler;

    iput p4, p0, Landroid/media/AudioFocusRequest;->mFocusGain:I

    iput-object p3, p0, Landroid/media/AudioFocusRequest;->mAttr:Landroid/media/AudioAttributes;

    iput p5, p0, Landroid/media/AudioFocusRequest;->mFlags:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;Landroid/media/AudioAttributes;IILandroid/media/AudioFocusRequest-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/media/AudioFocusRequest;-><init>(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;Landroid/media/AudioAttributes;II)V

    return-void
.end method

.method static final greylist-max-o isValidFocusGain(I)Z
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist acceptsDelayedFocusGain()Z
    .locals 2

    iget v0, p0, Landroid/media/AudioFocusRequest;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public whitelist getAudioAttributes()Landroid/media/AudioAttributes;
    .locals 1

    iget-object v0, p0, Landroid/media/AudioFocusRequest;->mAttr:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method greylist-max-o getFlags()I
    .locals 1

    iget v0, p0, Landroid/media/AudioFocusRequest;->mFlags:I

    return v0
.end method

.method public whitelist getFocusGain()I
    .locals 1

    iget v0, p0, Landroid/media/AudioFocusRequest;->mFocusGain:I

    return v0
.end method

.method public blacklist getOnAudioFocusChangeListener()Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1

    iget-object v0, p0, Landroid/media/AudioFocusRequest;->mFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object v0
.end method

.method public greylist-max-o getOnAudioFocusChangeListenerHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/media/AudioFocusRequest;->mListenerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public whitelist locksFocus()Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/media/AudioFocusRequest;->mFlags:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist willPauseWhenDucked()Z
    .locals 2

    iget v0, p0, Landroid/media/AudioFocusRequest;->mFlags:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
