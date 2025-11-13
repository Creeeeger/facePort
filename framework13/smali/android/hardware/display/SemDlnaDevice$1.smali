.class Landroid/hardware/display/SemDlnaDevice$1;
.super Ljava/lang/Object;
.source "SemDlnaDevice.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/SemDlnaDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/display/SemDlnaDevice;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/hardware/display/SemDlnaDevice;
    .locals 21
    .param p1, "in"    # Landroid/os/Parcel;

    .line 107
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 108
    .local v10, "deviceName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 109
    .local v11, "deviceIpAddress":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 110
    .local v12, "deviceP2pMacAddress":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 111
    .local v13, "deviceMacAddressFromARP":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 112
    .local v14, "deviceNICType":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 113
    .local v15, "uid":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 114
    .local v16, "dlnaType":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v8, v0

    .line 115
    .local v8, "isSwitchingDevice":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 116
    .local v17, "uri":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 117
    .local v9, "dlnaSupportTypes":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 118
    .local v7, "connectionState":I
    new-instance v18, Landroid/hardware/display/SemDlnaDevice;

    move-object/from16 v0, v18

    move-object v1, v10

    move-object v2, v11

    move-object v3, v12

    move-object v4, v13

    move-object v5, v14

    move-object v6, v15

    move-object/from16 v19, v10

    move v10, v7

    .end local v7    # "connectionState":I
    .local v10, "connectionState":I
    .local v19, "deviceName":Ljava/lang/String;
    move/from16 v7, v16

    move-object/from16 v20, v11

    move v11, v9

    .end local v9    # "dlnaSupportTypes":I
    .local v11, "dlnaSupportTypes":I
    .local v20, "deviceIpAddress":Ljava/lang/String;
    move-object/from16 v9, v17

    invoke-direct/range {v0 .. v9}, Landroid/hardware/display/SemDlnaDevice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V

    .line 119
    .local v0, "dlnaDevice":Landroid/hardware/display/SemDlnaDevice;
    invoke-virtual {v0, v11}, Landroid/hardware/display/SemDlnaDevice;->setDlnaSupportTypes(I)V

    .line 120
    invoke-virtual {v0, v10}, Landroid/hardware/display/SemDlnaDevice;->setConnectionState(I)V

    .line 121
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 105
    invoke-virtual {p0, p1}, Landroid/hardware/display/SemDlnaDevice$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/display/SemDlnaDevice;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/hardware/display/SemDlnaDevice;
    .locals 1
    .param p1, "size"    # I

    .line 124
    if-nez p1, :cond_0

    sget-object v0, Landroid/hardware/display/SemDlnaDevice;->EMPTY_ARRAY:[Landroid/hardware/display/SemDlnaDevice;

    goto :goto_0

    :cond_0
    new-array v0, p1, [Landroid/hardware/display/SemDlnaDevice;

    :goto_0
    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 105
    invoke-virtual {p0, p1}, Landroid/hardware/display/SemDlnaDevice$1;->newArray(I)[Landroid/hardware/display/SemDlnaDevice;

    move-result-object p1

    return-object p1
.end method
