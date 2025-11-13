.class public final Landroid/os/VibrationAttributes$Builder;
.super Ljava/lang/Object;
.source "VibrationAttributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/VibrationAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCategory:I

.field private blacklist mFlags:I

.field private blacklist mOriginalAudioUsage:I

.field private blacklist mTags:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mUsage:I


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mUsage:I

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mOriginalAudioUsage:I

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mFlags:I

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mCategory:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/os/VibrationAttributes$Builder;->mTags:Ljava/util/HashSet;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/media/AudioAttributes;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mUsage:I

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mOriginalAudioUsage:I

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mFlags:I

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mCategory:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/os/VibrationAttributes$Builder;->mTags:Ljava/util/HashSet;

    invoke-direct {p0, p1}, Landroid/os/VibrationAttributes$Builder;->setUsage(Landroid/media/AudioAttributes;)V

    invoke-direct {p0, p1}, Landroid/os/VibrationAttributes$Builder;->setFlags(Landroid/media/AudioAttributes;)V

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getTags()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/VibrationAttributes$Builder;->semAddTag(Ljava/lang/String;)Landroid/os/VibrationAttributes$Builder;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/VibrationAttributes;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mUsage:I

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mOriginalAudioUsage:I

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mFlags:I

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mCategory:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/os/VibrationAttributes$Builder;->mTags:Ljava/util/HashSet;

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/os/VibrationAttributes;->-$$Nest$fgetmUsage(Landroid/os/VibrationAttributes;)I

    move-result v0

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mUsage:I

    invoke-static {p1}, Landroid/os/VibrationAttributes;->-$$Nest$fgetmOriginalAudioUsage(Landroid/os/VibrationAttributes;)I

    move-result v0

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mOriginalAudioUsage:I

    invoke-static {p1}, Landroid/os/VibrationAttributes;->-$$Nest$fgetmFlags(Landroid/os/VibrationAttributes;)I

    move-result v0

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mFlags:I

    invoke-static {p1}, Landroid/os/VibrationAttributes;->-$$Nest$fgetmCategory(Landroid/os/VibrationAttributes;)I

    move-result v0

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mCategory:I

    invoke-static {p1}, Landroid/os/VibrationAttributes;->-$$Nest$fgetmTags(Landroid/os/VibrationAttributes;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    iput-object v0, p0, Landroid/os/VibrationAttributes$Builder;->mTags:Ljava/util/HashSet;

    :cond_0
    return-void
.end method

.method private blacklist setFlags(Landroid/media/AudioAttributes;)V
    .locals 1

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/os/VibrationAttributes$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mFlags:I

    :cond_0
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/os/VibrationAttributes$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mFlags:I

    :cond_1
    return-void
.end method

.method private blacklist setUsage(Landroid/media/AudioAttributes;)V
    .locals 1

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mOriginalAudioUsage:I

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mUsage:I

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x12

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mUsage:I

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x42

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mUsage:I

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x21

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mUsage:I

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x31

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mUsage:I

    goto :goto_0

    :pswitch_5
    const/16 v0, 0x11

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mUsage:I

    goto :goto_0

    :pswitch_6
    const/16 v0, 0x41

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mUsage:I

    goto :goto_0

    :pswitch_7
    const/16 v0, 0x13

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mUsage:I

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_6
        :pswitch_1
        :pswitch_7
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public whitelist build()Landroid/os/VibrationAttributes;
    .locals 7

    new-instance v6, Landroid/os/VibrationAttributes;

    iget v1, p0, Landroid/os/VibrationAttributes$Builder;->mUsage:I

    iget v2, p0, Landroid/os/VibrationAttributes$Builder;->mOriginalAudioUsage:I

    iget v3, p0, Landroid/os/VibrationAttributes$Builder;->mFlags:I

    iget v4, p0, Landroid/os/VibrationAttributes$Builder;->mCategory:I

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/os/VibrationAttributes;-><init>(IIIILandroid/os/VibrationAttributes-IA;)V

    iget-object v1, p0, Landroid/os/VibrationAttributes$Builder;->mTags:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    invoke-static {v0, v1}, Landroid/os/VibrationAttributes;->-$$Nest$fputmTags(Landroid/os/VibrationAttributes;Ljava/util/HashSet;)V

    const-string v1, ";"

    iget-object v2, p0, Landroid/os/VibrationAttributes$Builder;->mTags:Ljava/util/HashSet;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/VibrationAttributes;->-$$Nest$fputmFormattedTags(Landroid/os/VibrationAttributes;Ljava/lang/String;)V

    return-object v0
.end method

.method public whitelist semAddTag(Ljava/lang/String;)Landroid/os/VibrationAttributes$Builder;
    .locals 1

    iget-object v0, p0, Landroid/os/VibrationAttributes$Builder;->mTags:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist setCategory(I)Landroid/os/VibrationAttributes$Builder;
    .locals 0

    iput p1, p0, Landroid/os/VibrationAttributes$Builder;->mCategory:I

    return-object p0
.end method

.method public blacklist setFlags(I)Landroid/os/VibrationAttributes$Builder;
    .locals 1

    const/16 v0, 0x1f

    invoke-virtual {p0, p1, v0}, Landroid/os/VibrationAttributes$Builder;->setFlags(II)Landroid/os/VibrationAttributes$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setFlags(II)Landroid/os/VibrationAttributes$Builder;
    .locals 2

    and-int/lit8 p2, p2, 0x1f

    iget v0, p0, Landroid/os/VibrationAttributes$Builder;->mFlags:I

    not-int v1, p2

    and-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mFlags:I

    return-object p0
.end method

.method public whitelist setUsage(I)Landroid/os/VibrationAttributes$Builder;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mOriginalAudioUsage:I

    iput p1, p0, Landroid/os/VibrationAttributes$Builder;->mUsage:I

    return-object p0
.end method
