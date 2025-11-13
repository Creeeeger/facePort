.class public abstract Lcom/android/internal/carlife/IStatusBarCarLife$Stub;
.super Landroid/os/Binder;
.source "IStatusBarCarLife.java"

# interfaces
.implements Lcom/android/internal/carlife/IStatusBarCarLife;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/carlife/IStatusBarCarLife;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/carlife/IStatusBarCarLife$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_abortTransient:I = 0x3

.field static final blacklist TRANSACTION_onSystemBarAttributesChanged:I = 0x1

.field static final blacklist TRANSACTION_showTransient:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 64
    const-string v0, "com.android.internal.carlife.IStatusBarCarLife"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/carlife/IStatusBarCarLife$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/carlife/IStatusBarCarLife;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 72
    if-nez p0, :cond_0

    .line 73
    const/4 v0, 0x0

    return-object v0

    .line 75
    :cond_0
    const-string v0, "com.android.internal.carlife.IStatusBarCarLife"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 76
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/carlife/IStatusBarCarLife;

    if-eqz v1, :cond_1

    .line 77
    move-object v1, v0

    check-cast v1, Lcom/android/internal/carlife/IStatusBarCarLife;

    return-object v1

    .line 79
    :cond_1
    new-instance v1, Lcom/android/internal/carlife/IStatusBarCarLife$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/carlife/IStatusBarCarLife$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 88
    packed-switch p0, :pswitch_data_0

    .line 104
    const/4 v0, 0x0

    return-object v0

    .line 100
    :pswitch_0
    const-string v0, "abortTransient"

    return-object v0

    .line 96
    :pswitch_1
    const-string/jumbo v0, "showTransient"

    return-object v0

    .line 92
    :pswitch_2
    const-string/jumbo v0, "onSystemBarAttributesChanged"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 83
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 277
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 111
    invoke-static {p1}, Lcom/android/internal/carlife/IStatusBarCarLife$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 21
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 115
    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    const-string v11, "com.android.internal.carlife.IStatusBarCarLife"

    .line 116
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v12, 0x1

    if-lt v9, v12, :cond_0

    const v0, 0xffffff

    if-gt v9, v0, :cond_0

    .line 117
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    :cond_0
    packed-switch v9, :pswitch_data_0

    .line 127
    move-object/from16 v13, p3

    packed-switch v9, :pswitch_data_1

    .line 173
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 123
    :pswitch_0
    move-object/from16 v13, p3

    invoke-virtual {v13, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    return v12

    .line 164
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 166
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 167
    .local v1, "_arg1":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 168
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/carlife/IStatusBarCarLife$Stub;->abortTransient(I[I)V

    .line 169
    goto :goto_0

    .line 152
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[I
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 154
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 156
    .restart local v1    # "_arg1":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 157
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 158
    invoke-virtual {v8, v0, v1, v2}, Lcom/android/internal/carlife/IStatusBarCarLife$Stub;->showTransient(I[IZ)V

    .line 159
    goto :goto_0

    .line 132
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[I
    .end local v2    # "_arg2":Z
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 134
    .local v14, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 136
    .local v15, "_arg1":I
    sget-object v0, Lcom/android/internal/view/AppearanceRegion;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, [Lcom/android/internal/view/AppearanceRegion;

    .line 138
    .local v16, "_arg2":[Lcom/android/internal/view/AppearanceRegion;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    .line 140
    .local v17, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 142
    .local v18, "_arg4":I
    sget-object v0, Landroid/view/InsetsVisibilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Landroid/view/InsetsVisibilities;

    .line 144
    .local v19, "_arg5":Landroid/view/InsetsVisibilities;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 145
    .local v20, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 146
    move-object/from16 v0, p0

    move v1, v14

    move v2, v15

    move-object/from16 v3, v16

    move/from16 v4, v17

    move/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/carlife/IStatusBarCarLife$Stub;->onSystemBarAttributesChanged(II[Lcom/android/internal/view/AppearanceRegion;ZILandroid/view/InsetsVisibilities;Ljava/lang/String;)V

    .line 147
    nop

    .line 176
    .end local v14    # "_arg0":I
    .end local v15    # "_arg1":I
    .end local v16    # "_arg2":[Lcom/android/internal/view/AppearanceRegion;
    .end local v17    # "_arg3":Z
    .end local v18    # "_arg4":I
    .end local v19    # "_arg5":Landroid/view/InsetsVisibilities;
    .end local v20    # "_arg6":Ljava/lang/String;
    :goto_0
    return v12

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
