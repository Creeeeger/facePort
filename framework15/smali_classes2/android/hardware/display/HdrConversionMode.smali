.class public final Landroid/hardware/display/HdrConversionMode;
.super Ljava/lang/Object;
.source "HdrConversionMode.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/HdrConversionMode$ConversionMode;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/display/HdrConversionMode;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist HDR_CONVERSION_FORCE:I = 0x3

.field public static final whitelist HDR_CONVERSION_PASSTHROUGH:I = 0x1

.field public static final whitelist HDR_CONVERSION_SYSTEM:I = 0x2

.field public static final whitelist HDR_CONVERSION_UNSUPPORTED:I


# instance fields
.field private final blacklist mConversionMode:I

.field private blacklist mPreferredHdrOutputType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/display/HdrConversionMode$1;

    invoke-direct {v0}, Landroid/hardware/display/HdrConversionMode$1;-><init>()V

    sput-object v0, Landroid/hardware/display/HdrConversionMode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/display/HdrConversionMode;->mConversionMode:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/display/HdrConversionMode;->mPreferredHdrOutputType:I

    return-void
.end method

.method public constructor whitelist <init>(II)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    :cond_1
    iput p1, p0, Landroid/hardware/display/HdrConversionMode;->mConversionMode:I

    iput p2, p0, Landroid/hardware/display/HdrConversionMode;->mPreferredHdrOutputType:I

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preferredHdrOutputType must not be set if the conversion mode is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/hardware/display/HdrConversionMode;->hdrConversionModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/display/HdrConversionMode;-><init>(II)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/display/HdrConversionMode-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/display/HdrConversionMode;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist equals(Landroid/hardware/display/HdrConversionMode;)Z
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/hardware/display/HdrConversionMode;->mConversionMode:I

    invoke-virtual {p1}, Landroid/hardware/display/HdrConversionMode;->getConversionMode()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/hardware/display/HdrConversionMode;->mPreferredHdrOutputType:I

    invoke-virtual {p1}, Landroid/hardware/display/HdrConversionMode;->getPreferredHdrOutputType()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static blacklist hdrConversionModeString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "HDR_CONVERSION_UNSUPPORTED"

    return-object v0

    :pswitch_0
    const-string v0, "HDR_CONVERSION_FORCE"

    return-object v0

    :pswitch_1
    const-string v0, "HDR_CONVERSION_SYSTEM"

    return-object v0

    :pswitch_2
    const-string v0, "HDR_CONVERSION_PASSTHROUGH"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
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
    .locals 1

    instance-of v0, p1, Landroid/hardware/display/HdrConversionMode;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/hardware/display/HdrConversionMode;

    invoke-direct {p0, v0}, Landroid/hardware/display/HdrConversionMode;->equals(Landroid/hardware/display/HdrConversionMode;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist getConversionMode()I
    .locals 1

    iget v0, p0, Landroid/hardware/display/HdrConversionMode;->mConversionMode:I

    return v0
.end method

.method public whitelist getPreferredHdrOutputType()I
    .locals 1

    iget v0, p0, Landroid/hardware/display/HdrConversionMode;->mPreferredHdrOutputType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HdrConversionMode{ConversionMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/display/HdrConversionMode;->getConversionMode()I

    move-result v1

    invoke-static {v1}, Landroid/hardware/display/HdrConversionMode;->hdrConversionModeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", PreferredHdrOutputType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/display/HdrConversionMode;->getPreferredHdrOutputType()I

    move-result v1

    invoke-static {v1}, Landroid/view/Display$HdrCapabilities;->hdrTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/hardware/display/HdrConversionMode;->mConversionMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/display/HdrConversionMode;->mPreferredHdrOutputType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
