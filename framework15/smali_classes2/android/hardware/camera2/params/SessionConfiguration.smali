.class public final Landroid/hardware/camera2/params/SessionConfiguration;
.super Ljava/lang/Object;
.source "SessionConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/params/SessionConfiguration$SessionMode;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/camera2/params/SessionConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SESSION_HIGH_SPEED:I = 0x1

.field public static final whitelist SESSION_REGULAR:I = 0x0

.field public static final greylist-max-o SESSION_VENDOR_START:I = 0x8000

.field private static final blacklist TAG:Ljava/lang/String; = "SessionConfiguration"


# instance fields
.field private blacklist mColorSpace:I

.field private greylist-max-o mExecutor:Ljava/util/concurrent/Executor;

.field private greylist-max-o mInputConfig:Landroid/hardware/camera2/params/InputConfiguration;

.field private greylist-max-o mOutputConfigurations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mSessionParameters:Landroid/hardware/camera2/CaptureRequest;

.field private greylist-max-o mSessionType:I

.field private greylist-max-o mStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/camera2/params/SessionConfiguration$1;

    invoke-direct {v0}, Landroid/hardware/camera2/params/SessionConfiguration$1;-><init>()V

    sput-object v0, Landroid/hardware/camera2/params/SessionConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mInputConfig:Landroid/hardware/camera2/params/InputConfiguration;

    iput-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mSessionParameters:Landroid/hardware/camera2/CaptureRequest;

    iput p1, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mSessionType:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mOutputConfigurations:Ljava/util/List;

    return-void
.end method

.method public constructor whitelist <init>(ILjava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mInputConfig:Landroid/hardware/camera2/params/InputConfiguration;

    iput-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mSessionParameters:Landroid/hardware/camera2/CaptureRequest;

    iput p1, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mSessionType:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mOutputConfigurations:Ljava/util/List;

    iput-object p4, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    iput-object p3, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mInputConfig:Landroid/hardware/camera2/params/InputConfiguration;

    iput-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mSessionParameters:Landroid/hardware/camera2/CaptureRequest;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sget-object v6, Landroid/hardware/camera2/params/OutputConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v5, v6}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->featureCombinationQuery()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v7, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v7}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    invoke-virtual {v7, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->readFromParcel(Landroid/os/Parcel;)V

    :cond_0
    if-lez v1, :cond_1

    if-lez v2, :cond_1

    const/4 v6, -0x1

    if-eq v3, v6, :cond_1

    new-instance v6, Landroid/hardware/camera2/params/InputConfiguration;

    invoke-direct {v6, v1, v2, v3, v4}, Landroid/hardware/camera2/params/InputConfiguration;-><init>(IIIZ)V

    iput-object v6, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mInputConfig:Landroid/hardware/camera2/params/InputConfiguration;

    :cond_1
    iput v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mSessionType:I

    iput-object v5, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mOutputConfigurations:Ljava/util/List;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/camera2/params/SessionConfiguration-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/camera2/params/SessionConfiguration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist clearColorSpace()V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mColorSpace:I

    iget-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mOutputConfigurations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v1}, Landroid/hardware/camera2/params/OutputConfiguration;->clearColorSpace()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Landroid/hardware/camera2/params/SessionConfiguration;

    if-eqz v2, :cond_6

    move-object v2, p1

    check-cast v2, Landroid/hardware/camera2/params/SessionConfiguration;

    iget-object v3, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mInputConfig:Landroid/hardware/camera2/params/InputConfiguration;

    iget-object v4, v2, Landroid/hardware/camera2/params/SessionConfiguration;->mInputConfig:Landroid/hardware/camera2/params/InputConfiguration;

    if-ne v3, v4, :cond_5

    iget v3, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mSessionType:I

    iget v4, v2, Landroid/hardware/camera2/params/SessionConfiguration;->mSessionType:I

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mOutputConfigurations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, v2, Landroid/hardware/camera2/params/SessionConfiguration;->mOutputConfigurations:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mOutputConfigurations:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    iget-object v4, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mOutputConfigurations:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v5, v2, Landroid/hardware/camera2/params/SessionConfiguration;->mOutputConfigurations:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/params/OutputConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    return v0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v1

    :cond_5
    :goto_1
    return v0

    :cond_6
    return v0
.end method

.method public whitelist getColorSpace()Landroid/graphics/ColorSpace;
    .locals 2

    iget v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mColorSpace:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-static {}, Landroid/graphics/ColorSpace$Named;->values()[Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    iget v1, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mColorSpace:I

    aget-object v0, v0, v1

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public whitelist getInputConfiguration()Landroid/hardware/camera2/params/InputConfiguration;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mInputConfig:Landroid/hardware/camera2/params/InputConfiguration;

    return-object v0
.end method

.method public whitelist getOutputConfigurations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mOutputConfigurations:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getSessionParameters()Landroid/hardware/camera2/CaptureRequest;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mSessionParameters:Landroid/hardware/camera2/CaptureRequest;

    return-object v0
.end method

.method public whitelist getSessionType()I
    .locals 1

    iget v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mSessionType:I

    return v0
.end method

.method public whitelist getStateCallback()Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    iget-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mOutputConfigurations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    iget-object v1, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mInputConfig:Landroid/hardware/camera2/params/InputConfiguration;

    invoke-virtual {v1}, Landroid/hardware/camera2/params/InputConfiguration;->hashCode()I

    move-result v1

    iget v2, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mSessionType:I

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([I)I

    move-result v0

    return v0
.end method

.method public whitelist setColorSpace(Landroid/graphics/ColorSpace$Named;)V
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mColorSpace:I

    iget-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mOutputConfigurations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/params/OutputConfiguration;->setColorSpace(Landroid/graphics/ColorSpace$Named;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public whitelist setInputConfiguration(Landroid/hardware/camera2/params/InputConfiguration;)V
    .locals 2

    iget v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mSessionType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iput-object p1, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mInputConfig:Landroid/hardware/camera2/params/InputConfiguration;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method not supported for high speed session types"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setSessionParameters(Landroid/hardware/camera2/CaptureRequest;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mSessionParameters:Landroid/hardware/camera2/CaptureRequest;

    return-void
.end method

.method public whitelist setStateCallback(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V
    .locals 0

    iput-object p2, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    iput-object p1, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    if-eqz p1, :cond_3

    iget v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mSessionType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mInputConfig:Landroid/hardware/camera2/params/InputConfiguration;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mInputConfig:Landroid/hardware/camera2/params/InputConfiguration;

    invoke-virtual {v0}, Landroid/hardware/camera2/params/InputConfiguration;->getWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mInputConfig:Landroid/hardware/camera2/params/InputConfiguration;

    invoke-virtual {v0}, Landroid/hardware/camera2/params/InputConfiguration;->getHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mInputConfig:Landroid/hardware/camera2/params/InputConfiguration;

    invoke-virtual {v0}, Landroid/hardware/camera2/params/InputConfiguration;->getFormat()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mInputConfig:Landroid/hardware/camera2/params/InputConfiguration;

    invoke-virtual {v0}, Landroid/hardware/camera2/params/InputConfiguration;->isMultiResolution()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    :goto_0
    iget-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mOutputConfigurations:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->featureCombinationQuery()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mSessionParameters:Landroid/hardware/camera2/CaptureRequest;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mSessionParameters:Landroid/hardware/camera2/CaptureRequest;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest;->getNativeCopy()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dest must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
