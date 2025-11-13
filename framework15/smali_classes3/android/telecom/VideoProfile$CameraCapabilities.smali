.class public final Landroid/telecom/VideoProfile$CameraCapabilities;
.super Ljava/lang/Object;
.source "VideoProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/VideoProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CameraCapabilities"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telecom/VideoProfile$CameraCapabilities;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mHeight:I

.field private final greylist-max-o mMaxZoom:F

.field private final greylist-max-o mWidth:I

.field private final greylist-max-o mZoomSupported:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telecom/VideoProfile$CameraCapabilities$1;

    invoke-direct {v0}, Landroid/telecom/VideoProfile$CameraCapabilities$1;-><init>()V

    sput-object v0, Landroid/telecom/VideoProfile$CameraCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(II)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/telecom/VideoProfile$CameraCapabilities;-><init>(IIZF)V

    return-void
.end method

.method public constructor whitelist <init>(IIZF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telecom/VideoProfile$CameraCapabilities;->mWidth:I

    iput p2, p0, Landroid/telecom/VideoProfile$CameraCapabilities;->mHeight:I

    iput-boolean p3, p0, Landroid/telecom/VideoProfile$CameraCapabilities;->mZoomSupported:Z

    iput p4, p0, Landroid/telecom/VideoProfile$CameraCapabilities;->mMaxZoom:F

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getHeight()I
    .locals 1

    iget v0, p0, Landroid/telecom/VideoProfile$CameraCapabilities;->mHeight:I

    return v0
.end method

.method public whitelist getMaxZoom()F
    .locals 1

    iget v0, p0, Landroid/telecom/VideoProfile$CameraCapabilities;->mMaxZoom:F

    return v0
.end method

.method public whitelist getWidth()I
    .locals 1

    iget v0, p0, Landroid/telecom/VideoProfile$CameraCapabilities;->mWidth:I

    return v0
.end method

.method public whitelist isZoomSupported()Z
    .locals 1

    iget-boolean v0, p0, Landroid/telecom/VideoProfile$CameraCapabilities;->mZoomSupported:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-virtual {p0}, Landroid/telecom/VideoProfile$CameraCapabilities;->getWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Landroid/telecom/VideoProfile$CameraCapabilities;->getHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Landroid/telecom/VideoProfile$CameraCapabilities;->isZoomSupported()Z

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    invoke-virtual {p0}, Landroid/telecom/VideoProfile$CameraCapabilities;->getMaxZoom()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
