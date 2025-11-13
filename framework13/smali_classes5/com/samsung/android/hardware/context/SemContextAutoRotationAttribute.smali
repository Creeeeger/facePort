.class public Lcom/samsung/android/hardware/context/SemContextAutoRotationAttribute;
.super Lcom/samsung/android/hardware/context/SemContextAttribute;
.source "SemContextAutoRotationAttribute.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
    forRemoval = true
    since = "13.0"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/hardware/context/SemContextAutoRotationAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "SemContextAutoRotationAttribute"


# instance fields
.field private blacklist mDeviceType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextAutoRotationAttribute$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextAutoRotationAttribute$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextAutoRotationAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoRotationAttribute;->mDeviceType:I

    .line 62
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAutoRotationAttribute;->setAttribute()V

    .line 63
    return-void
.end method

.method public constructor whitelist <init>(I)V
    .locals 1
    .param p1, "deviceType"    # I

    .line 86
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoRotationAttribute;->mDeviceType:I

    .line 87
    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextAutoRotationAttribute;->mDeviceType:I

    .line 88
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAutoRotationAttribute;->setAttribute()V

    .line 89
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .line 69
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>(Landroid/os/Parcel;)V

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoRotationAttribute;->mDeviceType:I

    .line 70
    return-void
.end method

.method private blacklist setAttribute()V
    .locals 3

    .line 107
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 108
    .local v0, "attribute":Landroid/os/Bundle;
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextAutoRotationAttribute;->mDeviceType:I

    const-string v2, "device_type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 109
    const/4 v1, 0x6

    invoke-super {p0, v1, v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 110
    return-void
.end method


# virtual methods
.method public blacklist checkAttribute()Z
    .locals 2

    .line 97
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoRotationAttribute;->mDeviceType:I

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 100
    const-string v0, "SemContextAutoRotationAttribute"

    const-string v1, "The device type is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const/4 v0, 0x0

    return v0

    .line 103
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
