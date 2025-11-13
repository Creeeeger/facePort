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

    .line 82
    new-instance v0, Landroid/os/DynamicEffect$1;

    invoke-direct {v0}, Landroid/os/DynamicEffect$1;-><init>()V

    sput-object v0, Landroid/os/DynamicEffect;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .line 20
    invoke-direct {p0}, Landroid/os/VibrationEffect;-><init>()V

    .line 21
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "json"    # Ljava/lang/String;

    .line 23
    invoke-direct {p0}, Landroid/os/VibrationEffect;-><init>()V

    .line 24
    iput-object p1, p0, Landroid/os/DynamicEffect;->mJson:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public static greylist create(Ljava/lang/String;)Landroid/os/DynamicEffect;
    .locals 1
    .param p0, "json"    # Ljava/lang/String;

    .line 17
    new-instance v0, Landroid/os/DynamicEffect;

    invoke-direct {v0, p0}, Landroid/os/DynamicEffect;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 55
    instance-of v0, p1, Landroid/os/DynamicEffect;

    if-nez v0, :cond_0

    .line 56
    const/4 v0, 0x0

    return v0

    .line 58
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

    .line 38
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getEffectInfo()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Landroid/os/DynamicEffect;->mJson:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    .line 63
    iget-object v0, p0, Landroid/os/DynamicEffect;->mJson:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist resolve(I)Landroid/os/DynamicEffect;
    .locals 0
    .param p1, "defaultAmplitude"    # I

    .line 44
    return-object p0
.end method

.method public bridge synthetic blacklist resolve(I)Landroid/os/VibrationEffect;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Landroid/os/DynamicEffect;->resolve(I)Landroid/os/DynamicEffect;

    move-result-object p1

    return-object p1
.end method

.method public blacklist scale(F)Landroid/os/DynamicEffect;
    .locals 0
    .param p1, "scaleFactor"    # F

    .line 50
    return-object p0
.end method

.method public bridge synthetic blacklist scale(F)Landroid/os/VibrationEffect;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Landroid/os/DynamicEffect;->scale(F)Landroid/os/DynamicEffect;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 69
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

    .line 34
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 79
    return-void
.end method
