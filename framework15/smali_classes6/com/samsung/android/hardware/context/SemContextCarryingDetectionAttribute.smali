.class public Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;
.super Lcom/samsung/android/hardware/context/SemContextAttribute;
.source "SemContextCarryingDetectionAttribute.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DATA:I = 0x1

.field private static final blacklist MODE:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String; = "SemContextCarryingDetection"


# instance fields
.field private blacklist mData:I

.field private blacklist mDpcmHighData:I

.field private blacklist mDpcmLowData:I

.field private blacklist mMode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;->mMode:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;->mData:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;->mDpcmLowData:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;->mDpcmHighData:I

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;->setAttribute()V

    return-void
.end method

.method public constructor whitelist <init>(II)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;->mMode:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;->mData:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;->mDpcmLowData:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;->mDpcmHighData:I

    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;->mMode:I

    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;->mData:I

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;->setAttribute()V

    return-void
.end method

.method public constructor whitelist <init>(III)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;->mMode:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;->mData:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;->mDpcmLowData:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;->mDpcmHighData:I

    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;->mMode:I

    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;->mDpcmLowData:I

    iput p3, p0, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;->mDpcmHighData:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "dpcm_mode"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;->mMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x9

    if-ne p1, v1, :cond_0

    const-string v1, "dpcm_lowlux"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "dpcm_highlux"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/16 v1, 0xa

    if-ne p1, v1, :cond_1

    const-string v1, "dpcm_lowcnt"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "dpcm_highcnt"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    const/16 v1, 0x33

    invoke-super {p0, v1, v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;->mMode:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;->mData:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;->mDpcmLowData:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;->mDpcmHighData:I

    return-void
.end method

.method private blacklist setAttribute()V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "dpcm_mode"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;->mMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "dpcm_data"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;->mData:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x33

    invoke-super {p0, v1, v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public blacklist checkAttribute()Z
    .locals 8

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;->mMode:I

    const-string v1, "DPCM Data value is wrong"

    const/16 v2, 0xa

    const/4 v3, 0x0

    const-string v4, "SemContextCarryingDetection"

    const/16 v5, 0x9

    if-ne v0, v5, :cond_1

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;->mDpcmLowData:I

    const/4 v6, -0x2

    if-lt v0, v6, :cond_0

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;->mDpcmLowData:I

    const v7, 0xf4240

    if-gt v0, v7, :cond_0

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;->mDpcmHighData:I

    if-lt v0, v6, :cond_0

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;->mDpcmHighData:I

    if-le v0, v7, :cond_3

    :cond_0
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;->mMode:I

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;->mDpcmLowData:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;->mDpcmHighData:I

    if-gez v0, :cond_3

    :cond_2
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;->mMode:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_9

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;->mMode:I

    const/16 v6, 0xc

    if-le v0, v6, :cond_4

    goto :goto_2

    :cond_4
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;->mMode:I

    if-eq v0, v5, :cond_8

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;->mMode:I

    const/16 v5, 0xb

    if-eq v0, v5, :cond_8

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;->mMode:I

    if-eq v0, v2, :cond_8

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;->mMode:I

    if-ne v0, v6, :cond_5

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;->mData:I

    if-lez v0, :cond_7

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;->mData:I

    const/16 v2, 0x7f

    if-le v0, v2, :cond_6

    goto :goto_0

    :cond_6
    return v1

    :cond_7
    :goto_0
    const-string v0, "Data value is wrong!!"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_8
    :goto_1
    return v1

    :cond_9
    :goto_2
    const-string v0, "Mode value is wrong!!"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method
