.class public Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;
.super Lcom/samsung/android/hardware/context/SemContextAttribute;
.source "SemContextSedentaryTimerAttribute.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
    forRemoval = true
    since = "15.5"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "SemContextSedentaryTimerAttribute"


# instance fields
.field private blacklist mAlertCount:I

.field private blacklist mDeviceType:I

.field private blacklist mDuration:I

.field private blacklist mEndTime:I

.field private blacklist mStartTime:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mDeviceType:I

    const/16 v1, 0xe10

    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mDuration:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mAlertCount:I

    const/16 v0, 0x5dc

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mStartTime:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mEndTime:I

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->setAttribute()V

    return-void
.end method

.method public constructor whitelist <init>(IIIII)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mDeviceType:I

    const/16 v1, 0xe10

    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mDuration:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mAlertCount:I

    const/16 v0, 0x5dc

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mStartTime:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mEndTime:I

    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mDeviceType:I

    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mDuration:I

    iput p3, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mAlertCount:I

    iput p4, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mStartTime:I

    iput p5, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mEndTime:I

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->setAttribute()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mDeviceType:I

    const/16 v1, 0xe10

    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mDuration:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mAlertCount:I

    const/16 v0, 0x5dc

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mStartTime:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mEndTime:I

    return-void
.end method

.method private blacklist setAttribute()V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "device_type"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mDeviceType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "duration"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mDuration:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "alert_count"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mAlertCount:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "start_time"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mStartTime:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "end_time"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mEndTime:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x23

    invoke-super {p0, v1, v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public blacklist checkAttribute()Z
    .locals 5

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mDeviceType:I

    const/4 v1, 0x0

    const-string v2, "SemContextSedentaryTimerAttribute"

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mDeviceType:I

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    const-string v0, "The device type is wrong."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mDuration:I

    if-gez v0, :cond_1

    const-string v0, "The duration is wrong."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mAlertCount:I

    if-gez v0, :cond_2

    const-string v0, "The alert count is wrong."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mStartTime:I

    if-gez v0, :cond_3

    const-string v0, "The start time is wrong."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mEndTime:I

    if-gez v0, :cond_4

    const-string v0, "The end time is wrong."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    return v3
.end method
