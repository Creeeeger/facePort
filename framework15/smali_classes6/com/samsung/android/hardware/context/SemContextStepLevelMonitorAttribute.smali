.class public Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute;
.super Lcom/samsung/android/hardware/context/SemContextAttribute;
.source "SemContextStepLevelMonitorAttribute.java"


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
            "Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "SemContextStepLevelMonitorAttribute"


# instance fields
.field private blacklist mDuration:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    const/16 v0, 0x12c

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute;->mDuration:I

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute;->setAttribute()V

    return-void
.end method

.method public constructor whitelist <init>(I)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    const/16 v0, 0x12c

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute;->mDuration:I

    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute;->mDuration:I

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute;->setAttribute()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>(Landroid/os/Parcel;)V

    const/16 v0, 0x12c

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute;->mDuration:I

    return-void
.end method

.method private blacklist setAttribute()V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "duration"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute;->mDuration:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x21

    invoke-super {p0, v1, v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public blacklist checkAttribute()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute;->mDuration:I

    if-gez v0, :cond_0

    const-string v0, "SemContextStepLevelMonitorAttribute"

    const-string v1, "The duration is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
