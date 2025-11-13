.class public final Lcom/samsung/android/edge/SemEdgeLightingInfo;
.super Ljava/lang/Object;
.source "SemEdgeLightingInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/edge/SemEdgeLightingInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist REPEAT_INFINITE:I = -0x1

.field public static final blacklist TYPE_APPLICATION:I = 0x1

.field private static final blacklist TYPE_INTERNAL:I = 0x7d0

.field public static final blacklist TYPE_NOTIFICATION:I = 0x7d1


# instance fields
.field private blacklist DEFAULT_LIGHTING_COLOR:I

.field private blacklist mEffectColors:[I

.field private blacklist mExtra:Landroid/os/Bundle;

.field private blacklist mRepeatCount:I

.field private final blacklist mType:I

.field private blacklist mUserId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 231
    new-instance v0, Lcom/samsung/android/edge/SemEdgeLightingInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/edge/SemEdgeLightingInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/edge/SemEdgeLightingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 3

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/edge/SemEdgeLightingInfo;->mUserId:I

    .line 69
    const v1, -0x7b5116

    iput v1, p0, Lcom/samsung/android/edge/SemEdgeLightingInfo;->DEFAULT_LIGHTING_COLOR:I

    .line 77
    const/4 v2, 0x1

    iput v2, p0, Lcom/samsung/android/edge/SemEdgeLightingInfo;->mType:I

    .line 78
    new-array v2, v2, [I

    aput v1, v2, v0

    iput-object v2, p0, Lcom/samsung/android/edge/SemEdgeLightingInfo;->mEffectColors:[I

    .line 79
    iput v0, p0, Lcom/samsung/android/edge/SemEdgeLightingInfo;->mRepeatCount:I

    .line 80
    return-void
.end method

.method public constructor blacklist <init>(I[I)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "color"    # [I

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/edge/SemEdgeLightingInfo;->mUserId:I

    .line 69
    const v1, -0x7b5116

    iput v1, p0, Lcom/samsung/android/edge/SemEdgeLightingInfo;->DEFAULT_LIGHTING_COLOR:I

    .line 90
    invoke-direct {p0, p1}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->enforceEdgeLightingType(I)V

    .line 91
    iput p1, p0, Lcom/samsung/android/edge/SemEdgeLightingInfo;->mType:I

    .line 92
    if-eqz p2, :cond_1

    array-length v1, p2

    if-nez v1, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    iput-object p2, p0, Lcom/samsung/android/edge/SemEdgeLightingInfo;->mEffectColors:[I

    goto :goto_1

    .line 93
    :cond_1
    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [I

    iget v2, p0, Lcom/samsung/android/edge/SemEdgeLightingInfo;->DEFAULT_LIGHTING_COLOR:I

    aput v2, v1, v0

    iput-object v1, p0, Lcom/samsung/android/edge/SemEdgeLightingInfo;->mEffectColors:[I

    .line 97
    :goto_1
    iput v0, p0, Lcom/samsung/android/edge/SemEdgeLightingInfo;->mRepeatCount:I

    .line 98
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/edge/SemEdgeLightingInfo;->mUserId:I

    .line 69
    const v0, -0x7b5116

    iput v0, p0, Lcom/samsung/android/edge/SemEdgeLightingInfo;->DEFAULT_LIGHTING_COLOR:I

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/edge/SemEdgeLightingInfo;->mType:I

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 103
    .local v0, "effectColorSize":I
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/samsung/android/edge/SemEdgeLightingInfo;->mEffectColors:[I

    .line 104
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/edge/SemEdgeLightingInfo;->mRepeatCount:I

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/edge/SemEdgeLightingInfo;->mExtra:Landroid/os/Bundle;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/edge/SemEdgeLightingInfo;->mUserId:I

    .line 108
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/samsung/android/edge/SemEdgeLightingInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/edge/SemEdgeLightingInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist enforceEdgeLightingType(I)V
    .locals 3
    .param p1, "type"    # I

    .line 111
    const/16 v0, 0x7d0

    if-lt p1, v0, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "only SYSTEM can use the type("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 245
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getEffectColors()[I
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/samsung/android/edge/SemEdgeLightingInfo;->mEffectColors:[I

    return-object v0
.end method

.method public blacklist getExtra()Landroid/os/Bundle;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/samsung/android/edge/SemEdgeLightingInfo;->mExtra:Landroid/os/Bundle;

    return-object v0
.end method

.method public blacklist getRepeatCount()I
    .locals 1

    .line 153
    iget v0, p0, Lcom/samsung/android/edge/SemEdgeLightingInfo;->mRepeatCount:I

    return v0
.end method

.method public blacklist getType()I
    .locals 1

    .line 120
    iget v0, p0, Lcom/samsung/android/edge/SemEdgeLightingInfo;->mType:I

    return v0
.end method

.method public blacklist getUserId()I
    .locals 1

    .line 196
    iget v0, p0, Lcom/samsung/android/edge/SemEdgeLightingInfo;->mUserId:I

    return v0
.end method

.method public blacklist setEffectColors([I)V
    .locals 2
    .param p1, "colors"    # [I

    .line 140
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 143
    iput-object p1, p0, Lcom/samsung/android/edge/SemEdgeLightingInfo;->mEffectColors:[I

    .line 145
    return-void

    .line 141
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "color set should be more than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setExtra(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "extra"    # Landroid/os/Bundle;

    .line 175
    iput-object p1, p0, Lcom/samsung/android/edge/SemEdgeLightingInfo;->mExtra:Landroid/os/Bundle;

    .line 176
    return-void
.end method

.method public blacklist setRepeatCount(I)V
    .locals 1
    .param p1, "count"    # I

    .line 164
    if-gez p1, :cond_0

    .line 165
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/edge/SemEdgeLightingInfo;->mRepeatCount:I

    goto :goto_0

    .line 167
    :cond_0
    iput p1, p0, Lcom/samsung/android/edge/SemEdgeLightingInfo;->mRepeatCount:I

    .line 169
    :goto_0
    return-void
.end method

.method public blacklist setUserId(I)V
    .locals 0
    .param p1, "userId"    # I

    .line 189
    iput p1, p0, Lcom/samsung/android/edge/SemEdgeLightingInfo;->mUserId:I

    .line 190
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SemEdgeLighitngInfo{type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/edge/SemEdgeLightingInfo;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", colors= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/edge/SemEdgeLightingInfo;->mEffectColors:[I

    .line 205
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", repeat= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/edge/SemEdgeLightingInfo;->mRepeatCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/edge/SemEdgeLightingInfo;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 204
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 218
    iget v0, p0, Lcom/samsung/android/edge/SemEdgeLightingInfo;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    iget-object v0, p0, Lcom/samsung/android/edge/SemEdgeLightingInfo;->mEffectColors:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    iget-object v0, p0, Lcom/samsung/android/edge/SemEdgeLightingInfo;->mEffectColors:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 221
    iget v0, p0, Lcom/samsung/android/edge/SemEdgeLightingInfo;->mRepeatCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    iget-object v0, p0, Lcom/samsung/android/edge/SemEdgeLightingInfo;->mExtra:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 223
    iget v0, p0, Lcom/samsung/android/edge/SemEdgeLightingInfo;->mUserId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 224
    return-void
.end method
