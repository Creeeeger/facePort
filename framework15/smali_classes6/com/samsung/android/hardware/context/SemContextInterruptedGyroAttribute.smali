.class public Lcom/samsung/android/hardware/context/SemContextInterruptedGyroAttribute;
.super Lcom/samsung/android/hardware/context/SemContextAttribute;
.source "SemContextInterruptedGyroAttribute.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/hardware/context/SemContextInterruptedGyroAttribute;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist INTERRUPTED_GYRO_DISABLE_SYSFS_NODE:I = 0x0

.field public static final blacklist INTERRUPTED_GYRO_ENABLE_SYSFS_NODE:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "SemContextInterruptedGyroAttribute"


# instance fields
.field private blacklist mEnabled:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/hardware/context/SemContextInterruptedGyroAttribute$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextInterruptedGyroAttribute$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextInterruptedGyroAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextInterruptedGyroAttribute;->mEnabled:I

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextInterruptedGyroAttribute;->setAttribute()V

    return-void
.end method

.method public constructor whitelist <init>(I)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextInterruptedGyroAttribute;->mEnabled:I

    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextInterruptedGyroAttribute;->mEnabled:I

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextInterruptedGyroAttribute;->setAttribute()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextInterruptedGyroAttribute;->mEnabled:I

    return-void
.end method

.method private blacklist setAttribute()V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "interrupt_gyro"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextInterruptedGyroAttribute;->mEnabled:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x30

    invoke-super {p0, v1, v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public blacklist checkAttribute()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextInterruptedGyroAttribute;->mEnabled:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextInterruptedGyroAttribute;->mEnabled:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const-string v0, "SemContextInterruptedGyroAttribute"

    const-string v1, "The interrupt gyro value is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method
