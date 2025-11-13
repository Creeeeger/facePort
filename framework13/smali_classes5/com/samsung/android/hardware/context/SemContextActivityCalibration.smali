.class public Lcom/samsung/android/hardware/context/SemContextActivityCalibration;
.super Lcom/samsung/android/hardware/context/SemContextEventContext;
.source "SemContextActivityCalibration.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/hardware/context/SemContextActivityCalibration;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DATA_CELL_ID:I = 0x2

.field public static final blacklist DATA_GPS:I = 0x1

.field public static final blacklist DATA_UNKNOWN:I = 0x0

.field public static final blacklist DATA_WIFI:I = 0x3

.field public static final blacklist STATUS_MOVING:I = 0x1

.field public static final blacklist STATUS_STOP:I = 0x2

.field public static final blacklist STATUS_UNKNOWN:I


# instance fields
.field private blacklist mContext:Landroid/os/Bundle;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 70
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextActivityCalibration$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextActivityCalibration$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextActivityCalibration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 1

    .line 92
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 93
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityCalibration;->mContext:Landroid/os/Bundle;

    .line 94
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .line 101
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 102
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextActivityCalibration;->readFromParcel(Landroid/os/Parcel;)V

    .line 103
    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .line 137
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityCalibration;->mContext:Landroid/os/Bundle;

    .line 138
    return-void
.end method


# virtual methods
.method public blacklist setValues(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/os/Bundle;

    .line 113
    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextActivityCalibration;->mContext:Landroid/os/Bundle;

    .line 114
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 127
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityCalibration;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 128
    return-void
.end method
