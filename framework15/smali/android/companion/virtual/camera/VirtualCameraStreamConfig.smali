.class public final Landroid/companion/virtual/camera/VirtualCameraStreamConfig;
.super Ljava/lang/Object;
.source "VirtualCameraStreamConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/companion/virtual/camera/VirtualCameraStreamConfig;",
            ">;"
        }
    .end annotation
.end field

.field static final blacklist MAX_FPS_UPPER_LIMIT:I = 0x3c


# instance fields
.field private final blacklist mFormat:I

.field private final blacklist mHeight:I

.field private final blacklist mMaxFps:I

.field private final blacklist mWidth:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/companion/virtual/camera/VirtualCameraStreamConfig$1;

    invoke-direct {v0}, Landroid/companion/virtual/camera/VirtualCameraStreamConfig$1;-><init>()V

    sput-object v0, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;->mWidth:I

    iput p2, p0, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;->mHeight:I

    iput p3, p0, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;->mFormat:I

    iput p4, p0, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;->mMaxFps:I

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;->mWidth:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;->mHeight:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;->mFormat:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;->mMaxFps:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/companion/virtual/camera/VirtualCameraStreamConfig-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;-><init>(Landroid/os/Parcel;)V

    return-void
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

    check-cast v2, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;

    iget v3, p0, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;->mWidth:I

    iget v4, v2, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;->mWidth:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;->mHeight:I

    iget v4, v2, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;->mHeight:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;->mFormat:I

    iget v4, v2, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;->mFormat:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;->mMaxFps:I

    iget v4, v2, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;->mMaxFps:I

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

.method public whitelist getFormat()I
    .locals 1

    iget v0, p0, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;->mFormat:I

    return v0
.end method

.method public whitelist getHeight()I
    .locals 1

    iget v0, p0, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;->mHeight:I

    return v0
.end method

.method public whitelist getMaximumFramesPerSecond()I
    .locals 1

    iget v0, p0, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;->mMaxFps:I

    return v0
.end method

.method public whitelist getWidth()I
    .locals 1

    iget v0, p0, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;->mWidth:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    iget v0, p0, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;->mWidth:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;->mHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;->mFormat:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;->mMaxFps:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;->mWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;->mHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;->mFormat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;->mMaxFps:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
