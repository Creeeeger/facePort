.class public Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;
.super Ljava/lang/Object;
.source "BluetoothSecureModeWhitelistConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public cod:I

.field public name:Ljava/lang/String;

.field public uuids:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 88
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;->name:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;->cod:I

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_1

    .line 92
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;->uuids:[Ljava/lang/String;

    .line 93
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 95
    iput-object p1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;->uuids:[Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 73
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget p2, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;->cod:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    iget-object p2, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;->uuids:[Ljava/lang/String;

    if-eqz p2, :cond_1

    array-length v0, p2

    if-lez v0, :cond_1

    .line 76
    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget-object p0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;->uuids:[Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 79
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return-void
.end method
