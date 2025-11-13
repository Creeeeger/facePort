.class public Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;
.super Ljava/lang/Object;
.source "BluetoothSecureModeConfig.java"

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

    .line 97
    new-instance v0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig-IA;)V
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

    .line 134
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->scanMode:Z

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->pairingMode:Z

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_2

    :cond_3
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->hfpEnable:Z

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_3

    :cond_4
    move v0, v2

    :goto_3
    iput-boolean v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->a2dpEnable:Z

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    goto :goto_4

    :cond_5
    move v0, v2

    :goto_4
    iput-boolean v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->hidEnable:Z

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    goto :goto_5

    :cond_6
    move v0, v2

    :goto_5
    iput-boolean v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->hdpEnable:Z

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_6

    :cond_7
    move v0, v2

    :goto_6
    iput-boolean v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->panEnable:Z

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    goto :goto_7

    :cond_8
    move v0, v2

    :goto_7
    iput-boolean v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->oppEnable:Z

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    goto :goto_8

    :cond_9
    move v0, v2

    :goto_8
    iput-boolean v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->pbapEnable:Z

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_a

    move v0, v1

    goto :goto_9

    :cond_a
    move v0, v2

    :goto_9
    iput-boolean v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->mapEnable:Z

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_b

    move v0, v1

    goto :goto_a

    :cond_b
    move v0, v2

    :goto_a
    iput-boolean v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->ftpEnable:Z

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_c

    move v0, v1

    goto :goto_b

    :cond_c
    move v0, v2

    :goto_b
    iput-boolean v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->sapEnable:Z

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-nez p1, :cond_d

    goto :goto_c

    :cond_d
    move v1, v2

    :goto_c
    iput-boolean v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->whitelistEnable:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 115
    :cond_0
    iget-boolean p2, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->scanMode:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    iget-boolean p2, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->pairingMode:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    iget-boolean p2, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->hfpEnable:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget-boolean p2, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->a2dpEnable:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget-boolean p2, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->hidEnable:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    iget-boolean p2, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->hdpEnable:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    iget-boolean p2, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->panEnable:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    iget-boolean p2, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->oppEnable:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    iget-boolean p2, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->pbapEnable:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    iget-boolean p2, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->mapEnable:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget-boolean p2, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->ftpEnable:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget-boolean p2, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->sapEnable:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    iget-boolean p0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->whitelistEnable:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
