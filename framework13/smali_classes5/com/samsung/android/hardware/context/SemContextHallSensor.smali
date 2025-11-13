.class public Lcom/samsung/android/hardware/context/SemContextHallSensor;
.super Lcom/samsung/android/hardware/context/SemContextEventContext;
.source "SemContextHallSensor.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/hardware/context/SemContextHallSensor;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist MODE_CARRY:I = 0x0

.field public static final blacklist MODE_KIOSK:I = 0x3

.field public static final blacklist MODE_SMARTPHONE:I = 0x4

.field public static final blacklist MODE_TABLE:I = 0x1

.field public static final blacklist MODE_TABLET:I = 0x2


# instance fields
.field private blacklist mContext:Landroid/os/Bundle;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 126
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextHallSensor$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextHallSensor$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextHallSensor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 146
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 147
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextHallSensor;->mContext:Landroid/os/Bundle;

    .line 148
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .line 153
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 154
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextHallSensor;->readFromParcel(Landroid/os/Parcel;)V

    .line 155
    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .line 204
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextHallSensor;->mContext:Landroid/os/Bundle;

    .line 205
    return-void
.end method


# virtual methods
.method public blacklist getType()I
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextHallSensor;->mContext:Landroid/os/Bundle;

    const-string v1, "Type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist setValues(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/os/Bundle;

    .line 179
    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextHallSensor;->mContext:Landroid/os/Bundle;

    .line 180
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 194
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextHallSensor;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 195
    return-void
.end method
