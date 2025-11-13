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

.field private blacklist mMode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 57
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;->mMode:I

    .line 58
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;->mData:I

    .line 64
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;->setAttribute()V

    .line 65
    return-void
.end method

.method public constructor whitelist <init>(II)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "data"    # I

    .line 96
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 57
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;->mMode:I

    .line 58
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;->mData:I

    .line 97
    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;->mMode:I

    .line 98
    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;->mData:I

    .line 99
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;->setAttribute()V

    .line 100
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .line 71
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>(Landroid/os/Parcel;)V

    .line 57
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;->mMode:I

    .line 58
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;->mData:I

    .line 72
    return-void
.end method

.method private blacklist setAttribute()V
    .locals 3

    .line 131
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 132
    .local v0, "attribute":Landroid/os/Bundle;
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;->mMode:I

    const-string v2, "dpcm_mode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 133
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;->mData:I

    const-string v2, "dpcm_data"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 134
    const/16 v1, 0x33

    invoke-super {p0, v1, v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 135
    return-void
.end method


# virtual methods
.method public blacklist checkAttribute()Z
    .locals 5

    .line 108
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;->mMode:I

    const/4 v1, 0x0

    const-string v2, "SemContextCarryingDetection"

    const/4 v3, 0x1

    if-lt v0, v3, :cond_3

    const/16 v4, 0x8

    if-le v0, v4, :cond_0

    goto :goto_1

    .line 113
    :cond_0
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;->mData:I

    if-lez v0, :cond_2

    const/16 v4, 0x7f

    if-le v0, v4, :cond_1

    goto :goto_0

    .line 127
    :cond_1
    return v3

    .line 124
    :cond_2
    :goto_0
    const-string v0, "Data value is wrong!!"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return v1

    .line 110
    :cond_3
    :goto_1
    const-string v0, "Mode value is wrong!!"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    return v1
.end method
