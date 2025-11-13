.class public final Landroid/view/Display$Mode;
.super Ljava/lang/Object;
.source "Display.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Display;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/Display$Mode$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/Display$Mode;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o EMPTY_ARRAY:[Landroid/view/Display$Mode;

.field public static final blacklist INVALID_MODE_ID:I = -0x1


# instance fields
.field private final blacklist mAlternativeRefreshRates:[F

.field private final greylist-max-o mHeight:I

.field private final greylist-max-o mModeId:I

.field private final greylist-max-o mRefreshRate:F

.field private final greylist-max-o mWidth:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 2088
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/view/Display$Mode;

    sput-object v0, Landroid/view/Display$Mode;->EMPTY_ARRAY:[Landroid/view/Display$Mode;

    .line 2329
    new-instance v0, Landroid/view/Display$Mode$1;

    invoke-direct {v0}, Landroid/view/Display$Mode$1;-><init>()V

    sput-object v0, Landroid/view/Display$Mode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IIF)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "refreshRate"    # F

    .line 2107
    const/4 v0, 0x0

    new-array v6, v0, [F

    const/4 v2, -0x1

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Landroid/view/Display$Mode;-><init>(IIIF[F)V

    .line 2108
    return-void
.end method

.method public constructor greylist-max-r <init>(IIIF)V
    .locals 7
    .param p1, "modeId"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "refreshRate"    # F

    .line 2115
    const/4 v0, 0x0

    new-array v6, v0, [F

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Landroid/view/Display$Mode;-><init>(IIIF[F)V

    .line 2116
    return-void
.end method

.method public constructor blacklist <init>(IIIF[F)V
    .locals 1
    .param p1, "modeId"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "refreshRate"    # F
    .param p5, "alternativeRefreshRates"    # [F

    .line 2122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2123
    iput p1, p0, Landroid/view/Display$Mode;->mModeId:I

    .line 2124
    iput p2, p0, Landroid/view/Display$Mode;->mWidth:I

    .line 2125
    iput p3, p0, Landroid/view/Display$Mode;->mHeight:I

    .line 2126
    iput p4, p0, Landroid/view/Display$Mode;->mRefreshRate:F

    .line 2127
    array-length v0, p5

    .line 2128
    invoke-static {p5, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Landroid/view/Display$Mode;->mAlternativeRefreshRates:[F

    .line 2129
    invoke-static {v0}, Ljava/util/Arrays;->sort([F)V

    .line 2130
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 2316
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/view/Display$Mode;-><init>(IIIF[F)V

    .line 2317
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/view/Display$Mode-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/Display$Mode;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 2312
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;

    .line 2275
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 2276
    return v0

    .line 2278
    :cond_0
    instance-of v1, p1, Landroid/view/Display$Mode;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 2279
    return v2

    .line 2281
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/view/Display$Mode;

    .line 2282
    .local v1, "that":Landroid/view/Display$Mode;
    iget v3, p0, Landroid/view/Display$Mode;->mModeId:I

    iget v4, v1, Landroid/view/Display$Mode;->mModeId:I

    if-ne v3, v4, :cond_2

    iget v3, v1, Landroid/view/Display$Mode;->mWidth:I

    iget v4, v1, Landroid/view/Display$Mode;->mHeight:I

    iget v5, v1, Landroid/view/Display$Mode;->mRefreshRate:F

    invoke-virtual {p0, v3, v4, v5}, Landroid/view/Display$Mode;->matches(IIF)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/view/Display$Mode;->mAlternativeRefreshRates:[F

    iget-object v4, v1, Landroid/view/Display$Mode;->mAlternativeRefreshRates:[F

    .line 2283
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 2282
    :goto_0
    return v0
.end method

.method public blacklist equalsExceptRefreshRate(Landroid/view/Display$Mode;)Z
    .locals 2
    .param p1, "other"    # Landroid/view/Display$Mode;

    .line 2252
    iget v0, p0, Landroid/view/Display$Mode;->mWidth:I

    iget v1, p1, Landroid/view/Display$Mode;->mWidth:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/Display$Mode;->mHeight:I

    iget v1, p1, Landroid/view/Display$Mode;->mHeight:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist getAlternativeRefreshRates()[F
    .locals 1

    .line 2201
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_POLICY:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getInstance()Lcom/samsung/android/hardware/display/RefreshRateConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->isSwitchable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2202
    const/4 v0, 0x0

    new-array v0, v0, [F

    return-object v0

    .line 2206
    :cond_0
    iget-object v0, p0, Landroid/view/Display$Mode;->mAlternativeRefreshRates:[F

    return-object v0
.end method

.method public whitelist getModeId()I
    .locals 1

    .line 2136
    iget v0, p0, Landroid/view/Display$Mode;->mModeId:I

    return v0
.end method

.method public whitelist getPhysicalHeight()I
    .locals 1

    .line 2168
    iget v0, p0, Landroid/view/Display$Mode;->mHeight:I

    return v0
.end method

.method public whitelist getPhysicalWidth()I
    .locals 1

    .line 2152
    iget v0, p0, Landroid/view/Display$Mode;->mWidth:I

    return v0
.end method

.method public whitelist getRefreshRate()F
    .locals 1

    .line 2175
    iget v0, p0, Landroid/view/Display$Mode;->mRefreshRate:F

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 2288
    const/4 v0, 0x1

    .line 2289
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x11

    iget v2, p0, Landroid/view/Display$Mode;->mModeId:I

    add-int/2addr v1, v2

    .line 2290
    .end local v0    # "hash":I
    .local v1, "hash":I
    mul-int/lit8 v0, v1, 0x11

    iget v2, p0, Landroid/view/Display$Mode;->mWidth:I

    add-int/2addr v0, v2

    .line 2291
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x11

    iget v2, p0, Landroid/view/Display$Mode;->mHeight:I

    add-int/2addr v1, v2

    .line 2292
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    mul-int/lit8 v0, v1, 0x11

    iget v2, p0, Landroid/view/Display$Mode;->mRefreshRate:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    .line 2293
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x11

    iget-object v2, p0, Landroid/view/Display$Mode;->mAlternativeRefreshRates:[F

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([F)I

    move-result v2

    add-int/2addr v1, v2

    .line 2294
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    return v1
.end method

.method public blacklist isRefreshRateSet()Z
    .locals 2

    .line 2261
    iget v0, p0, Landroid/view/Display$Mode;->mRefreshRate:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isResolutionSet()Z
    .locals 2

    .line 2270
    iget v0, p0, Landroid/view/Display$Mode;->mWidth:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/view/Display$Mode;->mHeight:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o matches(IIF)Z
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "refreshRate"    # F

    .line 2216
    iget v0, p0, Landroid/view/Display$Mode;->mWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Landroid/view/Display$Mode;->mHeight:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Landroid/view/Display$Mode;->mRefreshRate:F

    .line 2218
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {p3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2216
    :goto_0
    return v0
.end method

.method public blacklist matchesIfValid(IIF)Z
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "refreshRate"    # F

    .line 2232
    invoke-static {p1}, Landroid/view/Display;->isWidthValid(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/view/Display;->isHeightValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2233
    invoke-static {p3}, Landroid/view/Display;->isRefreshRateValid(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2234
    return v1

    .line 2236
    :cond_0
    invoke-static {p1}, Landroid/view/Display;->isWidthValid(I)Z

    move-result v0

    invoke-static {p2}, Landroid/view/Display;->isHeightValid(I)Z

    move-result v2

    if-eq v0, v2, :cond_1

    .line 2237
    return v1

    .line 2239
    :cond_1
    invoke-static {p1}, Landroid/view/Display;->isWidthValid(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/view/Display$Mode;->mWidth:I

    if-ne v0, p1, :cond_4

    .line 2240
    :cond_2
    invoke-static {p2}, Landroid/view/Display;->isHeightValid(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/view/Display$Mode;->mHeight:I

    if-ne v0, p2, :cond_4

    .line 2241
    :cond_3
    invoke-static {p3}, Landroid/view/Display;->isRefreshRateValid(F)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Landroid/view/Display$Mode;->mRefreshRate:F

    .line 2242
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {p3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-ne v0, v2, :cond_4

    goto :goto_0

    :cond_4
    goto :goto_1

    :cond_5
    :goto_0
    const/4 v1, 0x1

    .line 2239
    :goto_1
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 2299
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2300
    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/Display$Mode;->mModeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2301
    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/Display$Mode;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2302
    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/Display$Mode;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2303
    const-string v1, ", fps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/Display$Mode;->mRefreshRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2304
    const-string v1, ", alternativeRefreshRates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/Display$Mode;->mAlternativeRefreshRates:[F

    .line 2305
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2306
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2307
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2299
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .line 2321
    iget v0, p0, Landroid/view/Display$Mode;->mModeId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2322
    iget v0, p0, Landroid/view/Display$Mode;->mWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2323
    iget v0, p0, Landroid/view/Display$Mode;->mHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2324
    iget v0, p0, Landroid/view/Display$Mode;->mRefreshRate:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2325
    iget-object v0, p0, Landroid/view/Display$Mode;->mAlternativeRefreshRates:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 2326
    return-void
.end method
