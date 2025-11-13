.class abstract Landroid/hardware/input/VirtualTouchDeviceConfig;
.super Landroid/hardware/input/VirtualInputDeviceConfig;
.source "VirtualTouchDeviceConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/VirtualTouchDeviceConfig$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mHeight:I

.field private final blacklist mWidth:I


# direct methods
.method constructor blacklist <init>(Landroid/hardware/input/VirtualTouchDeviceConfig$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/input/VirtualTouchDeviceConfig$Builder<",
            "+",
            "Landroid/hardware/input/VirtualTouchDeviceConfig$Builder<",
            "*>;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/hardware/input/VirtualInputDeviceConfig;-><init>(Landroid/hardware/input/VirtualInputDeviceConfig$Builder;)V

    invoke-static {p1}, Landroid/hardware/input/VirtualTouchDeviceConfig$Builder;->-$$Nest$fgetmWidth(Landroid/hardware/input/VirtualTouchDeviceConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualTouchDeviceConfig;->mWidth:I

    invoke-static {p1}, Landroid/hardware/input/VirtualTouchDeviceConfig$Builder;->-$$Nest$fgetmHeight(Landroid/hardware/input/VirtualTouchDeviceConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualTouchDeviceConfig;->mHeight:I

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/hardware/input/VirtualInputDeviceConfig;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualTouchDeviceConfig;->mWidth:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualTouchDeviceConfig;->mHeight:I

    return-void
.end method


# virtual methods
.method blacklist additionalFieldsToString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/input/VirtualTouchDeviceConfig;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/input/VirtualTouchDeviceConfig;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getHeight()I
    .locals 1

    iget v0, p0, Landroid/hardware/input/VirtualTouchDeviceConfig;->mHeight:I

    return v0
.end method

.method public blacklist getWidth()I
    .locals 1

    iget v0, p0, Landroid/hardware/input/VirtualTouchDeviceConfig;->mWidth:I

    return v0
.end method

.method blacklist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/hardware/input/VirtualInputDeviceConfig;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/hardware/input/VirtualTouchDeviceConfig;->mWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/input/VirtualTouchDeviceConfig;->mHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
