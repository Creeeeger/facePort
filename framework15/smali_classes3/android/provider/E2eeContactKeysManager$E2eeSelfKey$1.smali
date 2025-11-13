.class Landroid/provider/E2eeContactKeysManager$E2eeSelfKey$1;
.super Ljava/lang/Object;
.source "E2eeContactKeysManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/E2eeContactKeysManager$E2eeSelfKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/provider/E2eeContactKeysManager$E2eeSelfKey;",
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
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/provider/E2eeContactKeysManager$E2eeSelfKey;
    .locals 18

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-lez v13, :cond_0

    new-array v0, v13, [B

    move-object/from16 v14, p1

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readByteArray([B)V

    move-object v15, v0

    goto :goto_0

    :cond_0
    move-object/from16 v14, p1

    const/4 v0, 0x0

    move-object v15, v0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    new-instance v17, Landroid/provider/E2eeContactKeysManager$E2eeSelfKey;

    move-object/from16 v0, v17

    move-object v1, v8

    move-object v2, v9

    move-object v3, v10

    move-wide v4, v11

    move-object v6, v15

    move/from16 v7, v16

    invoke-direct/range {v0 .. v7}, Landroid/provider/E2eeContactKeysManager$E2eeSelfKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J[BI)V

    return-object v17
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

    invoke-virtual {p0, p1}, Landroid/provider/E2eeContactKeysManager$E2eeSelfKey$1;->createFromParcel(Landroid/os/Parcel;)Landroid/provider/E2eeContactKeysManager$E2eeSelfKey;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/provider/E2eeContactKeysManager$E2eeSelfKey;
    .locals 1

    new-array v0, p1, [Landroid/provider/E2eeContactKeysManager$E2eeSelfKey;

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

    invoke-virtual {p0, p1}, Landroid/provider/E2eeContactKeysManager$E2eeSelfKey$1;->newArray(I)[Landroid/provider/E2eeContactKeysManager$E2eeSelfKey;

    move-result-object p1

    return-object p1
.end method
