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

    .line 41
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextShakeMotionAttribute$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextShakeMotionAttribute$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextShakeMotionAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 55
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextShakeMotionAttribute;->mStrength:I

    .line 56
    const/16 v0, 0x320

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextShakeMotionAttribute;->mDuration:I

    .line 62
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextShakeMotionAttribute;->setAttribute()V

    .line 63
    return-void
.end method

.method public constructor blacklist <init>(II)V
    .locals 1
    .param p1, "strength"    # I
    .param p2, "duration"    # I

    .line 86
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 55
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextShakeMotionAttribute;->mStrength:I

    .line 56
    const/16 v0, 0x320

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextShakeMotionAttribute;->mDuration:I

    .line 87
    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextShakeMotionAttribute;->mStrength:I

    .line 88
    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextShakeMotionAttribute;->mDuration:I

    .line 89
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextShakeMotionAttribute;->setAttribute()V

    .line 90
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .line 69
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>(Landroid/os/Parcel;)V

    .line 55
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextShakeMotionAttribute;->mStrength:I

    .line 56
    const/16 v0, 0x320

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextShakeMotionAttribute;->mDuration:I

    .line 70
    return-void
.end method

.method private blacklist setAttribute()V
    .locals 3

    .line 110
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 111
    .local v0, "attribute":Landroid/os/Bundle;
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextShakeMotionAttribute;->mStrength:I

    const-string/jumbo v2, "strength"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 112
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextShakeMotionAttribute;->mDuration:I

    const-string v2, "duration"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 113
    const/16 v1, 0xc

    invoke-super {p0, v1, v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 114
    return-void
.end method


# virtual methods
.method public blacklist checkAttribute()Z
    .locals 3

    .line 98
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextShakeMotionAttribute;->mStrength:I

    const/4 v1, 0x0

    const-string v2, "SemContextShakeMotionAttribute"

    if-gez v0, :cond_0

    .line 99
    const-string v0, "The strength is wrong."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return v1

    .line 102
    :cond_0
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextShakeMotionAttribute;->mDuration:I

    if-gez v0, :cond_1

    .line 103
    const-string v0, "The duration is wrong."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return v1

    .line 106
    :cond_1
    const/4 v0, 0x1

    return v0
.end method
