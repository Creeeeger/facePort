.class public final Landroid/view/Display$HdrCapabilities;
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
    name = "HdrCapabilities"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/Display$HdrCapabilities$HdrType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/Display$HdrCapabilities;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist HDR_TYPES:[I

.field public static final whitelist HDR_TYPE_DOLBY_VISION:I = 0x1

.field public static final whitelist HDR_TYPE_HDR10:I = 0x2

.field public static final whitelist HDR_TYPE_HDR10_PLUS:I = 0x4

.field public static final whitelist HDR_TYPE_HLG:I = 0x3

.field public static final whitelist INVALID_LUMINANCE:F = -1.0f


# instance fields
.field private greylist-max-o mMaxAverageLuminance:F

.field private greylist-max-o mMaxLuminance:F

.field private greylist-max-o mMinLuminance:F

.field private greylist-max-o mSupportedHdrTypes:[I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmMaxAverageLuminance(Landroid/view/Display$HdrCapabilities;)F
    .locals 0

    iget p0, p0, Landroid/view/Display$HdrCapabilities;->mMaxAverageLuminance:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMaxLuminance(Landroid/view/Display$HdrCapabilities;)F
    .locals 0

    iget p0, p0, Landroid/view/Display$HdrCapabilities;->mMaxLuminance:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMinLuminance(Landroid/view/Display$HdrCapabilities;)F
    .locals 0

    iget p0, p0, Landroid/view/Display$HdrCapabilities;->mMinLuminance:F

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 2447
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/view/Display$HdrCapabilities;->HDR_TYPES:[I

    .line 2541
    new-instance v0, Landroid/view/Display$HdrCapabilities$1;

    invoke-direct {v0}, Landroid/view/Display$HdrCapabilities$1;-><init>()V

    sput-object v0, Landroid/view/Display$HdrCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
    .end array-data
.end method

.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 2472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2464
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    .line 2465
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/view/Display$HdrCapabilities;->mMaxLuminance:F

    .line 2466
    iput v0, p0, Landroid/view/Display$HdrCapabilities;->mMaxAverageLuminance:F

    .line 2467
    iput v0, p0, Landroid/view/Display$HdrCapabilities;->mMinLuminance:F

    .line 2473
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 2553
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2464
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    .line 2465
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/view/Display$HdrCapabilities;->mMaxLuminance:F

    .line 2466
    iput v0, p0, Landroid/view/Display$HdrCapabilities;->mMaxAverageLuminance:F

    .line 2467
    iput v0, p0, Landroid/view/Display$HdrCapabilities;->mMinLuminance:F

    .line 2554
    invoke-virtual {p0, p1}, Landroid/view/Display$HdrCapabilities;->readFromParcel(Landroid/os/Parcel;)V

    .line 2555
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/view/Display$HdrCapabilities-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/Display$HdrCapabilities;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor greylist-max-r <init>([IFFF)V
    .locals 1
    .param p1, "supportedHdrTypes"    # [I
    .param p2, "maxLuminance"    # F
    .param p3, "maxAverageLuminance"    # F
    .param p4, "minLuminance"    # F

    .line 2480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2464
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    .line 2465
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/view/Display$HdrCapabilities;->mMaxLuminance:F

    .line 2466
    iput v0, p0, Landroid/view/Display$HdrCapabilities;->mMaxAverageLuminance:F

    .line 2467
    iput v0, p0, Landroid/view/Display$HdrCapabilities;->mMinLuminance:F

    .line 2481
    iput-object p1, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    .line 2482
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 2483
    iput p2, p0, Landroid/view/Display$HdrCapabilities;->mMaxLuminance:F

    .line 2484
    iput p3, p0, Landroid/view/Display$HdrCapabilities;->mMaxAverageLuminance:F

    .line 2485
    iput p4, p0, Landroid/view/Display$HdrCapabilities;->mMinLuminance:F

    .line 2486
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 2584
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 2516
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 2517
    return v0

    .line 2520
    :cond_0
    instance-of v1, p1, Landroid/view/Display$HdrCapabilities;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 2521
    return v2

    .line 2523
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/view/Display$HdrCapabilities;

    .line 2525
    .local v1, "that":Landroid/view/Display$HdrCapabilities;
    iget-object v3, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    iget-object v4, v1, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/view/Display$HdrCapabilities;->mMaxLuminance:F

    iget v4, v1, Landroid/view/Display$HdrCapabilities;->mMaxLuminance:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    iget v3, p0, Landroid/view/Display$HdrCapabilities;->mMaxAverageLuminance:F

    iget v4, v1, Landroid/view/Display$HdrCapabilities;->mMaxAverageLuminance:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    iget v3, p0, Landroid/view/Display$HdrCapabilities;->mMinLuminance:F

    iget v4, v1, Landroid/view/Display$HdrCapabilities;->mMinLuminance:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public whitelist getDesiredMaxAverageLuminance()F
    .locals 1

    .line 2505
    iget v0, p0, Landroid/view/Display$HdrCapabilities;->mMaxAverageLuminance:F

    return v0
.end method

.method public whitelist getDesiredMaxLuminance()F
    .locals 1

    .line 2499
    iget v0, p0, Landroid/view/Display$HdrCapabilities;->mMaxLuminance:F

    return v0
.end method

.method public whitelist getDesiredMinLuminance()F
    .locals 1

    .line 2511
    iget v0, p0, Landroid/view/Display$HdrCapabilities;->mMinLuminance:F

    return v0
.end method

.method public whitelist getSupportedHdrTypes()[I
    .locals 1

    .line 2493
    iget-object v0, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 2533
    const/16 v0, 0x17

    .line 2534
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x11

    iget-object v2, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    add-int/2addr v1, v2

    .line 2535
    .end local v0    # "hash":I
    .local v1, "hash":I
    mul-int/lit8 v0, v1, 0x11

    iget v2, p0, Landroid/view/Display$HdrCapabilities;->mMaxLuminance:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    .line 2536
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x11

    iget v2, p0, Landroid/view/Display$HdrCapabilities;->mMaxAverageLuminance:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v1, v2

    .line 2537
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    mul-int/lit8 v0, v1, 0x11

    iget v2, p0, Landroid/view/Display$HdrCapabilities;->mMinLuminance:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    .line 2538
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    return v0
.end method

.method public greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 2561
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2562
    .local v0, "types":I
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    .line 2563
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2564
    iget-object v2, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v2, v1

    .line 2563
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2566
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Landroid/view/Display$HdrCapabilities;->mMaxLuminance:F

    .line 2567
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Landroid/view/Display$HdrCapabilities;->mMaxAverageLuminance:F

    .line 2568
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Landroid/view/Display$HdrCapabilities;->mMinLuminance:F

    .line 2569
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 2589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HdrCapabilities{mSupportedHdrTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    .line 2590
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMaxLuminance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/Display$HdrCapabilities;->mMaxLuminance:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMaxAverageLuminance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/Display$HdrCapabilities;->mMaxAverageLuminance:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMinLuminance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/Display$HdrCapabilities;->mMinLuminance:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2589
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2573
    iget-object v0, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2574
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 2575
    aget v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2574
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2577
    .end local v0    # "i":I
    :cond_0
    iget v0, p0, Landroid/view/Display$HdrCapabilities;->mMaxLuminance:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2578
    iget v0, p0, Landroid/view/Display$HdrCapabilities;->mMaxAverageLuminance:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2579
    iget v0, p0, Landroid/view/Display$HdrCapabilities;->mMinLuminance:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2580
    return-void
.end method
