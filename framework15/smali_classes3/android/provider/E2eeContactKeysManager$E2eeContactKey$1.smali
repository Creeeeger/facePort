.class Landroid/provider/E2eeContactKeysManager$E2eeContactKey$1;
.super Ljava/lang/Object;
.source "E2eeContactKeysManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/E2eeContactKeysManager$E2eeContactKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/provider/E2eeContactKeysManager$E2eeContactKey;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/provider/E2eeContactKeysManager$E2eeContactKey;
    .locals 25

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-lez v11, :cond_0

    new-array v0, v11, [B

    move-object/from16 v10, p1

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readByteArray([B)V

    move-object/from16 v17, v0

    goto :goto_0

    :cond_0
    move-object/from16 v10, p1

    const/4 v0, 0x0

    move-object/from16 v17, v0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v22

    new-instance v23, Landroid/provider/E2eeContactKeysManager$E2eeContactKey;

    move-object/from16 v0, v23

    move-object v1, v12

    move-object v2, v13

    move-object v3, v14

    move-wide v4, v15

    move-object/from16 v6, v17

    move/from16 v7, v18

    move/from16 v8, v19

    move-object/from16 v9, v20

    move-object/from16 v10, v21

    move/from16 v24, v11

    move-object/from16 v11, v22

    invoke-direct/range {v0 .. v11}, Landroid/provider/E2eeContactKeysManager$E2eeContactKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J[BIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v23
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/provider/E2eeContactKeysManager$E2eeContactKey$1;->createFromParcel(Landroid/os/Parcel;)Landroid/provider/E2eeContactKeysManager$E2eeContactKey;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/provider/E2eeContactKeysManager$E2eeContactKey;
    .locals 1

    new-array v0, p1, [Landroid/provider/E2eeContactKeysManager$E2eeContactKey;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/provider/E2eeContactKeysManager$E2eeContactKey$1;->newArray(I)[Landroid/provider/E2eeContactKeysManager$E2eeContactKey;

    move-result-object p1

    return-object p1
.end method
