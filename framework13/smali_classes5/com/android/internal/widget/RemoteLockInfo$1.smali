.class Lcom/android/internal/widget/RemoteLockInfo$1;
.super Ljava/lang/Object;
.source "RemoteLockInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/RemoteLockInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/internal/widget/RemoteLockInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/widget/RemoteLockInfo;
    .locals 34
    .param p1, "in"    # Landroid/os/Parcel;

    .line 252
    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 253
    .local v17, "lockType":I
    const/4 v1, 0x1

    new-array v15, v1, [Z

    .line 254
    .local v15, "typeBooleanArray":[Z
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 255
    const/4 v2, 0x0

    aget-boolean v18, v15, v2

    .line 256
    .local v18, "lockState":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v19

    .line 257
    .local v19, "message":Ljava/lang/CharSequence;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v20

    .line 258
    .local v20, "phoneNumber":Ljava/lang/CharSequence;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v21

    .line 259
    .local v21, "emailAddress":Ljava/lang/CharSequence;
    new-array v14, v1, [Z

    .line 260
    .local v14, "EMCBooleanArray":[Z
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 261
    aget-boolean v22, v14, v2

    .line 262
    .local v22, "enableEmergencyCall":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v23

    .line 263
    .local v23, "clientName":Ljava/lang/CharSequence;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 264
    .local v24, "count":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v25

    .line 265
    .local v25, "time":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 266
    .local v27, "blockcount":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v28

    .line 267
    .local v28, "skipPin":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v29

    .line 268
    .local v29, "skipSupport":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v30

    .line 270
    .local v30, "bundle":Landroid/os/Bundle;
    new-instance v31, Lcom/android/internal/widget/RemoteLockInfo;

    const/16 v16, 0x0

    move-object/from16 v1, v31

    move/from16 v2, v17

    move/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move/from16 v7, v22

    move-object/from16 v8, v23

    move/from16 v9, v24

    move-wide/from16 v10, v25

    move/from16 v12, v27

    move/from16 v13, v28

    move-object/from16 v32, v14

    .end local v14    # "EMCBooleanArray":[Z
    .local v32, "EMCBooleanArray":[Z
    move/from16 v14, v29

    move-object/from16 v33, v15

    .end local v15    # "typeBooleanArray":[Z
    .local v33, "typeBooleanArray":[Z
    move-object/from16 v15, v30

    invoke-direct/range {v1 .. v16}, Lcom/android/internal/widget/RemoteLockInfo;-><init>(IZLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;IJIZZLandroid/os/Bundle;Lcom/android/internal/widget/RemoteLockInfo-IA;)V

    return-object v31
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 249
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RemoteLockInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/widget/RemoteLockInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/android/internal/widget/RemoteLockInfo;
    .locals 1
    .param p1, "size"    # I

    .line 275
    new-array v0, p1, [Lcom/android/internal/widget/RemoteLockInfo;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 249
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RemoteLockInfo$1;->newArray(I)[Lcom/android/internal/widget/RemoteLockInfo;

    move-result-object p1

    return-object p1
.end method
