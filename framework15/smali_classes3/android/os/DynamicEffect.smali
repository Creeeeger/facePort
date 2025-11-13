.class public final Landroid/os/DynamicEffect;
.super Landroid/os/VibrationEffect;
.source "DynamicEffect.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/DynamicEffect;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mJson:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/DynamicEffect$1;

    invoke-direct {v0}, Landroid/os/DynamicEffect$1;-><init>()V

    sput-object v0, Landroid/os/DynamicEffect;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/VibrationEffect;-><init>()V

    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/VibrationEffect;-><init>()V

    iput-object p1, p0, Landroid/os/DynamicEffect;->mJson:Ljava/lang/String;

    return-void
.end method

.method public static greylist create(Ljava/lang/String;)Landroid/os/DynamicEffect;
    .locals 1

    new-instance v0, Landroid/os/DynamicEffect;

    invoke-direct {v0, p0}, Landroid/os/DynamicEffect;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public blacklist applyRepeatingIndefinitely(ZI)Landroid/os/VibrationEffect;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist areVibrationFeaturesSupported(Landroid/os/VibratorInfo;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist computeCreateWaveformOffOnTimingsOrNull()[J
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [J

    return-object v0
.end method

.method public blacklist cropToLengthOrNull(I)Landroid/os/VibrationEffect;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroid/os/DynamicEffect;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/os/DynamicEffect;

    iget-object v0, v0, Landroid/os/DynamicEffect;->mJson:Ljava/lang/String;

    iget-object v1, p0, Landroid/os/DynamicEffect;->mJson:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist getDuration()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getEffectInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/os/DynamicEffect;->mJson:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/os/DynamicEffect;->mJson:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist resolve(I)Landroid/os/DynamicEffect;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic blacklist resolve(I)Landroid/os/VibrationEffect;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/os/DynamicEffect;->resolve(I)Landroid/os/DynamicEffect;

    move-result-object p1

    return-object p1
.end method

.method public blacklist scale(F)Landroid/os/DynamicEffect;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic blacklist scale(F)Landroid/os/VibrationEffect;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/os/DynamicEffect;->scale(F)Landroid/os/DynamicEffect;

    move-result-object p1

    return-object p1
.end method

.method public blacklist toDebugString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DynamicEffect{mJson="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/DynamicEffect;->mJson:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist validate()V
    .locals 0

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    return-void
.end method
