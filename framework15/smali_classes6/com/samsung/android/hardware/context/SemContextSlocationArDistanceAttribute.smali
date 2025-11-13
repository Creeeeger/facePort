.class public Lcom/samsung/android/hardware/context/SemContextSlocationArDistanceAttribute;
.super Lcom/samsung/android/hardware/context/SemContextAttribute;
.source "SemContextSlocationArDistanceAttribute.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/hardware/context/SemContextSlocationArDistanceAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "SemContextSlocationArDistanceAttribute"


# instance fields
.field private blacklist mDistanceCmd:[I

.field private blacklist mMode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/hardware/context/SemContextSlocationArDistanceAttribute$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextSlocationArDistanceAttribute$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextSlocationArDistanceAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSlocationArDistanceAttribute;->mMode:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextSlocationArDistanceAttribute;->mDistanceCmd:[I

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextSlocationArDistanceAttribute;->setAttribute()V

    return-void
.end method

.method public constructor blacklist <init>(I[I)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSlocationArDistanceAttribute;->mMode:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextSlocationArDistanceAttribute;->mDistanceCmd:[I

    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextSlocationArDistanceAttribute;->mMode:I

    array-length v0, p2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextSlocationArDistanceAttribute;->mDistanceCmd:[I

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextSlocationArDistanceAttribute;->mDistanceCmd:[I

    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextSlocationArDistanceAttribute;->setAttribute()V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>(Landroid/os/Parcel;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSlocationArDistanceAttribute;->mMode:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextSlocationArDistanceAttribute;->mDistanceCmd:[I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/samsung/android/hardware/context/SemContextSlocationArDistanceAttribute-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextSlocationArDistanceAttribute;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist setAttribute()V
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextSlocationArDistanceAttribute;->mMode:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextSlocationArDistanceAttribute;->mDistanceCmd:[I

    array-length v1, v1

    new-array v1, v1, [I

    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextSlocationArDistanceAttribute;->mDistanceCmd:[I

    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextSlocationArDistanceAttribute;->mDistanceCmd:[I

    array-length v3, v3

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string v2, "distance_cmd_array"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    nop

    :goto_0
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextSlocationArDistanceAttribute;->mMode:I

    const-string v2, "mode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAttribute() mode : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemContextSlocationArDistanceAttribute"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x38

    invoke-super {p0, v1, v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public blacklist checkAttribute()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSlocationArDistanceAttribute;->mMode:I

    const/4 v1, -0x1

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSlocationArDistanceAttribute;->mMode:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const-string v0, "SemContextSlocationArDistanceAttribute"

    const-string v1, "Mode value is wrong!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method
