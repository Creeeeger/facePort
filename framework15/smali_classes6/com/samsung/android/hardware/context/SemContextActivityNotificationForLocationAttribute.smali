.class public Lcom/samsung/android/hardware/context/SemContextActivityNotificationForLocationAttribute;
.super Lcom/samsung/android/hardware/context/SemContextAttribute;
.source "SemContextActivityNotificationForLocationAttribute.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/hardware/context/SemContextActivityNotificationForLocationAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist STATUS_MAX:I = 0x5

.field private static final blacklist TAG:Ljava/lang/String; = "SemContextActivityNotificationForLocationAttribute"


# instance fields
.field private blacklist mActivityFilter:[I

.field private blacklist mDuration:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationForLocationAttribute$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextActivityNotificationForLocationAttribute$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationForLocationAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    const/4 v0, 0x4

    filled-new-array {v0}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationForLocationAttribute;->mActivityFilter:[I

    const/16 v0, 0x1e

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationForLocationAttribute;->mDuration:I

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextActivityNotificationForLocationAttribute;->setAttribute()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x4

    filled-new-array {v0}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationForLocationAttribute;->mActivityFilter:[I

    const/16 v0, 0x1e

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationForLocationAttribute;->mDuration:I

    return-void
.end method

.method public constructor blacklist <init>([II)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    const/4 v0, 0x4

    filled-new-array {v0}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationForLocationAttribute;->mActivityFilter:[I

    const/16 v0, 0x1e

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationForLocationAttribute;->mDuration:I

    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationForLocationAttribute;->mActivityFilter:[I

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationForLocationAttribute;->mActivityFilter:[I

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationForLocationAttribute;->mDuration:I

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextActivityNotificationForLocationAttribute;->setAttribute()V

    return-void
.end method

.method private blacklist setAttribute()V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "activity_filter"

    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationForLocationAttribute;->mActivityFilter:[I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string v1, "duration"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationForLocationAttribute;->mDuration:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x1e

    invoke-super {p0, v1, v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public blacklist checkAttribute()Z
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationForLocationAttribute;->mActivityFilter:[I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationForLocationAttribute;->mActivityFilter:[I

    array-length v3, v3

    const-string v4, "SemContextActivityNotificationForLocationAttribute"

    if-ge v2, v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationForLocationAttribute;->mActivityFilter:[I

    aget v3, v3, v2

    if-ltz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationForLocationAttribute;->mActivityFilter:[I

    aget v3, v3, v2

    const/4 v5, 0x5

    if-le v3, v5, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationForLocationAttribute;->mActivityFilter:[I

    aget v3, v3, v2

    const/16 v5, 0x1e

    if-eq v3, v5, :cond_2

    const-string v3, "The activity status is wrong."

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationForLocationAttribute;->mActivityFilter:[I

    aget v3, v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "This activity status cannot have duplicated status."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationForLocationAttribute;->mDuration:I

    if-gez v2, :cond_6

    const-string v2, "The duration is wrong."

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_6
    const/4 v1, 0x1

    return v1
.end method
