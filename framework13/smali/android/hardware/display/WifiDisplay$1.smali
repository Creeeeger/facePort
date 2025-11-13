.class Landroid/hardware/display/WifiDisplay$1;
.super Ljava/lang/Object;
.source "WifiDisplay.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/WifiDisplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/display/WifiDisplay;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/hardware/display/WifiDisplay;
    .locals 15
    .param p1, "in"    # Landroid/os/Parcel;

    .line 68
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 69
    .local v8, "deviceAddress":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 70
    .local v9, "deviceName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 71
    .local v10, "deviceAlias":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v0, :cond_0

    move v4, v12

    goto :goto_0

    :cond_0
    move v4, v11

    .line 72
    .local v4, "isAvailable":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v5, v12

    goto :goto_1

    :cond_1
    move v5, v11

    .line 73
    .local v5, "canConnect":Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v6, v12

    goto :goto_2

    :cond_2
    move v6, v11

    .line 75
    .local v6, "isRemembered":Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 76
    .local v13, "deviceType":Ljava/lang/String;
    new-instance v14, Landroid/hardware/display/WifiDisplay;

    move-object v0, v14

    move-object v1, v8

    move-object v2, v9

    move-object v3, v10

    move-object v7, v13

    invoke-direct/range {v0 .. v7}, Landroid/hardware/display/WifiDisplay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)V

    .line 78
    .local v0, "wifiDisplay":Landroid/hardware/display/WifiDisplay;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "btMac":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/hardware/display/WifiDisplay;->setBluetoothMacAddress(Ljava/lang/String;)V

    .line 80
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/hardware/display/WifiDisplay;->setIconIdx(I)V

    .line 81
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    move v11, v12

    :cond_3
    move v2, v11

    .line 82
    .local v2, "isEmptySurface":Z
    invoke-virtual {v0, v2}, Landroid/hardware/display/WifiDisplay;->setEmptySurface(Z)V

    .line 83
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/hardware/display/WifiDisplay;->setFlags(I)V

    .line 84
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/hardware/display/WifiDisplay;->setMode(I)V

    .line 85
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/hardware/display/WifiDisplay;->setDeviceInfo(I)V

    .line 88
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 89
    .local v3, "parameterMapSize":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    if-ge v7, v3, :cond_4

    .line 90
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 91
    .local v11, "key":Ljava/lang/String;
    const-class v12, Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    move-object/from16 v14, p1

    invoke-virtual {v14, v12}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 92
    .local v12, "value":Ljava/lang/String;
    invoke-virtual {v0, v11, v12}, Landroid/hardware/display/WifiDisplay;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .end local v11    # "key":Ljava/lang/String;
    .end local v12    # "value":Ljava/lang/String;
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_4
    move-object/from16 v14, p1

    .line 94
    .end local v7    # "i":I
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 66
    invoke-virtual {p0, p1}, Landroid/hardware/display/WifiDisplay$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/display/WifiDisplay;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/hardware/display/WifiDisplay;
    .locals 1
    .param p1, "size"    # I

    .line 99
    if-nez p1, :cond_0

    sget-object v0, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    goto :goto_0

    :cond_0
    new-array v0, p1, [Landroid/hardware/display/WifiDisplay;

    :goto_0
    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 66
    invoke-virtual {p0, p1}, Landroid/hardware/display/WifiDisplay$1;->newArray(I)[Landroid/hardware/display/WifiDisplay;

    move-result-object p1

    return-object p1
.end method
