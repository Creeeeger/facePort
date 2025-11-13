.class public Lcom/samsung/android/hardware/context/SemContextStepCountAlertAttribute;
.super Lcom/samsung/android/hardware/context/SemContextAttribute;
.source "SemContextStepCountAlertAttribute.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/hardware/context/SemContextStepCountAlertAttribute;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist INTERRUPT_GYRO_DISABLE_SYSFS_NODE:I = 0x0

.field public static final blacklist INTERRUPT_GYRO_ENABLE_SYSFS_NODE:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "SemContextStepCountAlertAttribute"


# instance fields
.field private blacklist mStepCount:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextStepCountAlertAttribute$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextStepCountAlertAttribute$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextStepCountAlertAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 68
    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextStepCountAlertAttribute;->mStepCount:I

    .line 74
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextStepCountAlertAttribute;->setAttribute()V

    .line 75
    return-void
.end method

.method public constructor whitelist <init>(I)V
    .locals 1
    .param p1, "stepCount"    # I

    .line 96
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 68
    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextStepCountAlertAttribute;->mStepCount:I

    .line 97
    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextStepCountAlertAttribute;->mStepCount:I

    .line 98
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextStepCountAlertAttribute;->setAttribute()V

    .line 99
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .line 81
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>(Landroid/os/Parcel;)V

    .line 68
    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextStepCountAlertAttribute;->mStepCount:I

    .line 82
    return-void
.end method

.method private blacklist setAttribute()V
    .locals 3

    .line 125
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 126
    .local v0, "attribute":Landroid/os/Bundle;
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextStepCountAlertAttribute;->mStepCount:I

    const-string/jumbo v2, "step_count"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 127
    const/4 v1, 0x3

    invoke-super {p0, v1, v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 128
    return-void
.end method


# virtual methods
.method public blacklist checkAttribute()Z
    .locals 2

    .line 117
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextStepCountAlertAttribute;->mStepCount:I

    if-gez v0, :cond_0

    .line 118
    const-string v0, "SemContextStepCountAlertAttribute"

    const-string v1, "The step count is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const/4 v0, 0x0

    return v0

    .line 121
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getStepCount()I
    .locals 1

    .line 108
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextStepCountAlertAttribute;->mStepCount:I

    return v0
.end method
