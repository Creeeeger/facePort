.class public Lcom/samsung/android/hardware/context/SemContextShakeMotionAttribute;
.super Lcom/samsung/android/hardware/context/SemContextAttribute;
.source "SemContextShakeMotionAttribute.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/hardware/context/SemContextShakeMotionAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "SemContextShakeMotionAttribute"


# instance fields
.field private blacklist mDuration:I

.field private blacklist mStrength:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/hardware/context/SemContextShakeMotionAttribute$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextShakeMotionAttribute$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextShakeMotionAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextShakeMotionAttribute;->mStrength:I

    const/16 v0, 0x320

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextShakeMotionAttribute;->mDuration:I

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextShakeMotionAttribute;->setAttribute()V

    return-void
.end method

.method public constructor blacklist <init>(II)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextShakeMotionAttribute;->mStrength:I

    const/16 v0, 0x320

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextShakeMotionAttribute;->mDuration:I

    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextShakeMotionAttribute;->mStrength:I

    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextShakeMotionAttribute;->mDuration:I

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextShakeMotionAttribute;->setAttribute()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextShakeMotionAttribute;->mStrength:I

    const/16 v0, 0x320

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextShakeMotionAttribute;->mDuration:I

    return-void
.end method

.method private blacklist setAttribute()V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "strength"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextShakeMotionAttribute;->mStrength:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "duration"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextShakeMotionAttribute;->mDuration:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0xc

    invoke-super {p0, v1, v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public blacklist checkAttribute()Z
    .locals 3

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextShakeMotionAttribute;->mStrength:I

    const/4 v1, 0x0

    const-string v2, "SemContextShakeMotionAttribute"

    if-gez v0, :cond_0

    const-string v0, "The strength is wrong."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextShakeMotionAttribute;->mDuration:I

    if-gez v0, :cond_1

    const-string v0, "The duration is wrong."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method
