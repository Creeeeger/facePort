.class public Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a2dpEnable:Z

.field public ftpEnable:Z

.field public gattEnable:Z

.field public hdpEnable:Z

.field public hfpEnable:Z

.field public hidEnable:Z

.field public mapEnable:Z

.field public oppEnable:Z

.field public pairingMode:Z

.field public panEnable:Z

.field public pbapEnable:Z

.field public sapEnable:Z

.field public scanMode:Z

.field public whitelistEnable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->scanMode:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->pairingMode:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->hfpEnable:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->a2dpEnable:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_5

    move v0, v2

    goto :goto_4

    :cond_5
    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->hidEnable:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_6

    move v0, v2

    goto :goto_5

    :cond_6
    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->hdpEnable:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_7

    move v0, v2

    goto :goto_6

    :cond_7
    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->panEnable:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_8

    move v0, v2

    goto :goto_7

    :cond_8
    move v0, v1

    :goto_7
    iput-boolean v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->oppEnable:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_9

    move v0, v2

    goto :goto_8

    :cond_9
    move v0, v1

    :goto_8
    iput-boolean v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->pbapEnable:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_a

    move v0, v2

    goto :goto_9

    :cond_a
    move v0, v1

    :goto_9
    iput-boolean v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->mapEnable:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_b

    move v0, v2

    goto :goto_a

    :cond_b
    move v0, v1

    :goto_a
    iput-boolean v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->ftpEnable:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_c

    move v0, v2

    goto :goto_b

    :cond_c
    move v0, v1

    :goto_b
    iput-boolean v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->sapEnable:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-nez p1, :cond_d

    move v1, v2

    :cond_d
    iput-boolean v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->whitelistEnable:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean p2, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->scanMode:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->pairingMode:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->hfpEnable:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->a2dpEnable:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->hidEnable:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->hdpEnable:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->panEnable:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->oppEnable:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->pbapEnable:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->mapEnable:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->ftpEnable:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->sapEnable:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->whitelistEnable:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
