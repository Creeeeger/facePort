.class public abstract Landroid/hardware/input/VirtualInputDeviceConfig;
.super Ljava/lang/Object;
.source "VirtualInputDeviceConfig.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/VirtualInputDeviceConfig$Builder;
    }
.end annotation


# static fields
.field private static final blacklist DEVICE_NAME_MAX_LENGTH:I = 0x50


# instance fields
.field private final blacklist mAssociatedDisplayId:I

.field private final blacklist mInputDeviceName:Ljava/lang/String;

.field private final blacklist mProductId:I

.field private final blacklist mVendorId:I


# direct methods
.method protected constructor whitelist <init>(Landroid/hardware/input/VirtualInputDeviceConfig$Builder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/input/VirtualInputDeviceConfig$Builder<",
            "+",
            "Landroid/hardware/input/VirtualInputDeviceConfig$Builder<",
            "*>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/hardware/input/VirtualInputDeviceConfig$Builder;->-$$Nest$fgetmVendorId(Landroid/hardware/input/VirtualInputDeviceConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mVendorId:I

    invoke-static {p1}, Landroid/hardware/input/VirtualInputDeviceConfig$Builder;->-$$Nest$fgetmProductId(Landroid/hardware/input/VirtualInputDeviceConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mProductId:I

    invoke-static {p1}, Landroid/hardware/input/VirtualInputDeviceConfig$Builder;->-$$Nest$fgetmAssociatedDisplayId(Landroid/hardware/input/VirtualInputDeviceConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mAssociatedDisplayId:I

    invoke-static {p1}, Landroid/hardware/input/VirtualInputDeviceConfig$Builder;->-$$Nest$fgetmInputDeviceName(Landroid/hardware/input/VirtualInputDeviceConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mInputDeviceName:Ljava/lang/String;

    iget v0, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mAssociatedDisplayId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mInputDeviceName:Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x50

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input device name exceeds maximum length of 80bytes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mInputDeviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Display association is required for virtual input devices."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected constructor whitelist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mVendorId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mProductId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mAssociatedDisplayId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mInputDeviceName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method blacklist additionalFieldsToString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public whitelist getAssociatedDisplayId()I
    .locals 1

    iget v0, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mAssociatedDisplayId:I

    return v0
.end method

.method public whitelist getInputDeviceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mInputDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getProductId()I
    .locals 1

    iget v0, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mProductId:I

    return v0
.end method

.method public whitelist getVendorId()I
    .locals 1

    iget v0, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mVendorId:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(  name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mInputDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " vendorId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mVendorId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " productId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mProductId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " associatedDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mAssociatedDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/input/VirtualInputDeviceConfig;->additionalFieldsToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mVendorId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mProductId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mAssociatedDisplayId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/input/VirtualInputDeviceConfig;->mInputDeviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    return-void
.end method
