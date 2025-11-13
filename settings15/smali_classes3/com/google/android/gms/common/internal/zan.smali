.class public final Lcom/google/android/gms/common/internal/zan;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p1

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    move v8, v2

    move v9, v8

    move v10, v9

    move/from16 v17, v10

    move-wide v11, v3

    move-wide v13, v11

    move-object v15, v5

    move-object/from16 v16, v15

    move/from16 v18, v6

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    packed-switch v3, :pswitch_data_0

    invoke-static {v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->skipUnknownField(ILandroid/os/Parcel;)V

    goto :goto_0

    :pswitch_0
    invoke-static {v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(ILandroid/os/Parcel;)I

    move-result v2

    move/from16 v18, v2

    goto :goto_0

    :pswitch_1
    invoke-static {v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(ILandroid/os/Parcel;)I

    move-result v2

    move/from16 v17, v2

    goto :goto_0

    :pswitch_2
    invoke-static {v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v16, v2

    goto :goto_0

    :pswitch_3
    invoke-static {v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v2

    move-object v15, v2

    goto :goto_0

    :pswitch_4
    invoke-static {v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readLong(ILandroid/os/Parcel;)J

    move-result-wide v2

    move-wide v13, v2

    goto :goto_0

    :pswitch_5
    invoke-static {v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readLong(ILandroid/os/Parcel;)J

    move-result-wide v2

    move-wide v11, v2

    goto :goto_0

    :pswitch_6
    invoke-static {v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(ILandroid/os/Parcel;)I

    move-result v2

    move v10, v2

    goto :goto_0

    :pswitch_7
    invoke-static {v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(ILandroid/os/Parcel;)I

    move-result v2

    move v9, v2

    goto :goto_0

    :pswitch_8
    invoke-static {v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(ILandroid/os/Parcel;)I

    move-result v2

    move v8, v2

    goto :goto_0

    :cond_0
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->ensureAtEnd(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/common/internal/MethodInvocation;

    move-object v7, v0

    invoke-direct/range {v7 .. v18}, Lcom/google/android/gms/common/internal/MethodInvocation;-><init>(IIIJJLjava/lang/String;Ljava/lang/String;II)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p0, p1, [Lcom/google/android/gms/common/internal/MethodInvocation;

    return-object p0
.end method
