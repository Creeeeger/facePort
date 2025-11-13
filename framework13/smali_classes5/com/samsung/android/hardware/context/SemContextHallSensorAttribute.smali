.class public Lcom/samsung/android/hardware/context/SemContextHallSensorAttribute;
.super Lcom/samsung/android/hardware/context/SemContextAttribute;
.source "SemContextHallSensorAttribute.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/hardware/context/SemContextHallSensorAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "SemContextHallSensorAttribute"


# instance fields
.field private blacklist mDisplayStatus:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextHallSensorAttribute$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextHallSensorAttribute$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextHallSensorAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextHallSensorAttribute;->mDisplayStatus:I

    .line 61
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextHallSensorAttribute;->setAttribute()V

    .line 62
    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 2
    .param p1, "displayStatus"    # I

    .line 83
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextHallSensorAttribute;->mDisplayStatus:I

    .line 84
    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextHallSensorAttribute;->mDisplayStatus:I

    .line 85
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextHallSensorAttribute;->setAttribute()V

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "constructor + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemContextHallSensorAttribute"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .line 68
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>(Landroid/os/Parcel;)V

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextHallSensorAttribute;->mDisplayStatus:I

    .line 69
    return-void
.end method

.method private blacklist setAttribute()V
    .locals 4

    .line 104
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 105
    .local v0, "attribute":Landroid/os/Bundle;
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextHallSensorAttribute;->mDisplayStatus:I

    const-string v2, "display_status"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hall sensor status   + "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemContextHallSensorAttribute"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const/16 v1, 0x2b

    invoke-super {p0, v1, v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 108
    return-void
.end method


# virtual methods
.method public blacklist checkAttribute()Z
    .locals 2

    .line 95
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextHallSensorAttribute;->mDisplayStatus:I

    if-ltz v0, :cond_1

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 97
    :cond_1
    :goto_0
    const-string v0, "SemContextHallSensorAttribute"

    const-string v1, "The display status is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/4 v0, 0x0

    return v0
.end method
