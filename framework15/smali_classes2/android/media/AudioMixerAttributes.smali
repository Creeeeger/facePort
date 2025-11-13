.class public final Landroid/media/AudioMixerAttributes;
.super Ljava/lang/Object;
.source "AudioMixerAttributes.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioMixerAttributes$Builder;,
        Landroid/media/AudioMixerAttributes$MixerBehavior;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/AudioMixerAttributes;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist MIXER_BEHAVIOR_BIT_PERFECT:I = 0x1

.field public static final whitelist MIXER_BEHAVIOR_DEFAULT:I


# instance fields
.field private final blacklist mFormat:Landroid/media/AudioFormat;

.field private final blacklist mMixerBehavior:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/media/AudioMixerAttributes$1;

    invoke-direct {v0}, Landroid/media/AudioMixerAttributes$1;-><init>()V

    sput-object v0, Landroid/media/AudioMixerAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/media/AudioFormat;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/AudioMixerAttributes;->mFormat:Landroid/media/AudioFormat;

    iput p2, p0, Landroid/media/AudioMixerAttributes;->mMixerBehavior:I

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Landroid/media/AudioFormat;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/media/AudioFormat;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioFormat;

    iput-object v0, p0, Landroid/media/AudioMixerAttributes;->mFormat:Landroid/media/AudioFormat;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioMixerAttributes;->mMixerBehavior:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/AudioMixerAttributes-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/AudioMixerAttributes;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist mixerBehaviorToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const-string v0, "unknown"

    return-object v0

    :pswitch_0
    const-string v0, "bit-perfect"

    return-object v0

    :pswitch_1
    const-string v0, "default"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/media/AudioMixerAttributes;

    iget-object v3, p0, Landroid/media/AudioMixerAttributes;->mFormat:Landroid/media/AudioFormat;

    iget-object v4, v2, Landroid/media/AudioMixerAttributes;->mFormat:Landroid/media/AudioFormat;

    invoke-virtual {v3, v4}, Landroid/media/AudioFormat;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/media/AudioMixerAttributes;->mMixerBehavior:I

    iget v4, v2, Landroid/media/AudioMixerAttributes;->mMixerBehavior:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist getFormat()Landroid/media/AudioFormat;
    .locals 1

    iget-object v0, p0, Landroid/media/AudioMixerAttributes;->mFormat:Landroid/media/AudioFormat;

    return-object v0
.end method

.method public whitelist getMixerBehavior()I
    .locals 1

    iget v0, p0, Landroid/media/AudioMixerAttributes;->mMixerBehavior:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    iget-object v0, p0, Landroid/media/AudioMixerAttributes;->mFormat:Landroid/media/AudioFormat;

    iget v1, p0, Landroid/media/AudioMixerAttributes;->mMixerBehavior:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioMixerAttributes: format:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioMixerAttributes;->mFormat:Landroid/media/AudioFormat;

    invoke-virtual {v2}, Landroid/media/AudioFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mixer behavior:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioMixerAttributes;->mMixerBehavior:I

    invoke-direct {p0, v2}, Landroid/media/AudioMixerAttributes;->mixerBehaviorToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/media/AudioMixerAttributes;->mFormat:Landroid/media/AudioFormat;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Landroid/media/AudioMixerAttributes;->mMixerBehavior:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
