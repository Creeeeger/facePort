.class public Lcom/samsung/android/knox/bluetooth/BluetoothControlInfo;
.super Lcom/samsung/android/knox/ControlInfo;
.source "BluetoothControlInfo.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/bluetooth/BluetoothControlInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    new-instance v0, Lcom/samsung/android/knox/bluetooth/BluetoothControlInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/bluetooth/BluetoothControlInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/bluetooth/BluetoothControlInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/samsung/android/knox/ControlInfo;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/samsung/android/knox/ControlInfo;-><init>()V

    .line 58
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ControlInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/knox/bluetooth/BluetoothControlInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/bluetooth/BluetoothControlInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method
