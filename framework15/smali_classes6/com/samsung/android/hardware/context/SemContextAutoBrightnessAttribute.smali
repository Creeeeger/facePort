.class public Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;
.super Lcom/samsung/android/hardware/context/SemContextAttribute;
.source "SemContextAutoBrightnessAttribute.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist MODE_CONFIGURATION:I = 0x1

.field private static final blacklist MODE_DEVICE_MODE:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "SemContextAutoBrightnessAttribute"


# instance fields
.field private blacklist mDeviceMode:I

.field private blacklist mLuminanceTable:[B

.field private blacklist mMode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mLuminanceTable:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mDeviceMode:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mMode:I

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->setAttribute()V

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mLuminanceTable:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mDeviceMode:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mMode:I

    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mDeviceMode:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mMode:I

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->setAttribute()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mLuminanceTable:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mDeviceMode:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mMode:I

    return-void
.end method

.method public constructor blacklist <init>([B)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mLuminanceTable:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mDeviceMode:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mMode:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mMode:I

    if-eqz p1, :cond_0

    array-length v1, p1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mLuminanceTable:[B

    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mLuminanceTable:[B

    array-length v2, p1

    invoke-static {p1, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->setAttribute()V

    goto :goto_0

    :cond_0
    const-string v0, "SemContextAutoBrightnessAttribute"

    const-string v1, "The luminanceTable is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private blacklist setAttribute()V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "mode"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "luminance_config_data"

    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mLuminanceTable:[B

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mMode:I

    if-nez v1, :cond_1

    const-string v1, "device_mode"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mDeviceMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    const/16 v1, 0x27

    invoke-super {p0, v1, v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public blacklist checkAttribute()Z
    .locals 5

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mMode:I

    const/4 v1, 0x0

    const-string v2, "SemContextAutoBrightnessAttribute"

    const/4 v3, 0x1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mDeviceMode:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mDeviceMode:I

    const/4 v4, 0x2

    if-le v0, v4, :cond_2

    :cond_0
    const-string v0, "The device mode is wrong."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mMode:I

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mLuminanceTable:[B

    if-nez v0, :cond_2

    const-string v0, "The luminance configuration data is null."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    return v3
.end method
