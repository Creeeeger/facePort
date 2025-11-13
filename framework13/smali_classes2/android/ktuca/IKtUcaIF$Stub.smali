.class public abstract Landroid/ktuca/IKtUcaIF$Stub;
.super Landroid/os/Binder;
.source "IKtUcaIF.java"

# interfaces
.implements Landroid/ktuca/IKtUcaIF;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/ktuca/IKtUcaIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/ktuca/IKtUcaIF$Stub$Proxy;
    }
.end annotation


# static fields
.field static final greylist TRANSACTION_KUCA_CHInit:I = 0x13

.field static final greylist TRANSACTION_KUCA_Close:I = 0x10

.field static final greylist TRANSACTION_KUCA_CloseT:I = 0x19

.field static final greylist TRANSACTION_KUCA_KUH_Establish:I = 0x15

.field static final greylist TRANSACTION_KUCA_KUH_Release:I = 0x16

.field static final greylist TRANSACTION_KUCA_KUH_Transmit:I = 0x17

.field static final greylist TRANSACTION_KUCA_Open:I = 0xe

.field static final greylist TRANSACTION_KUCA_OpenT:I = 0x18

.field static final greylist TRANSACTION_KUCA_Transmit:I = 0xf

.field static final greylist TRANSACTION_KUCA_UCAVersion:I = 0x12

.field static final greylist TRANSACTION_KUCA_getHandle:I = 0x3

.field static final greylist TRANSACTION_KUCA_getICCID:I = 0x6

.field static final greylist TRANSACTION_KUCA_getIMSI:I = 0x5

.field static final greylist TRANSACTION_KUCA_getMDN:I = 0x8

.field static final greylist TRANSACTION_KUCA_getMODEL:I = 0x9

.field static final greylist TRANSACTION_KUCA_getMSISDN:I = 0x4

.field static final greylist TRANSACTION_KUCA_getPUID:I = 0x7

.field static final greylist TRANSACTION_KUCA_getPinStatus:I = 0xc

.field static final greylist TRANSACTION_KUCA_getSIMInfo:I = 0xa

.field static final greylist TRANSACTION_KUCA_getSimStatus:I = 0x11

.field static final greylist TRANSACTION_KUCA_printCHInfo:I = 0x14

.field static final greylist TRANSACTION_KUCA_usimAUTH:I = 0xb

.field static final greylist TRANSACTION_KUCA_verifyPin:I = 0xd

.field static final greylist TRANSACTION_getResource:I = 0x1

.field static final greylist TRANSACTION_releaseResource:I = 0x2


# direct methods
.method public constructor greylist <init>()V
    .locals 1

    .line 121
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 122
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p0, p0, v0}, Landroid/ktuca/IKtUcaIF$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/ktuca/IKtUcaIF;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 130
    if-nez p0, :cond_0

    .line 131
    const/4 v0, 0x0

    return-object v0

    .line 133
    :cond_0
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 134
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/ktuca/IKtUcaIF;

    if-eqz v1, :cond_1

    .line 135
    move-object v1, v0

    check-cast v1, Landroid/ktuca/IKtUcaIF;

    return-object v1

    .line 137
    :cond_1
    new-instance v1, Landroid/ktuca/IKtUcaIF$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/ktuca/IKtUcaIF$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static greylist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 146
    packed-switch p0, :pswitch_data_0

    .line 250
    const/4 v0, 0x0

    return-object v0

    .line 246
    :pswitch_0
    const-string v0, "KUCA_CloseT"

    return-object v0

    .line 242
    :pswitch_1
    const-string v0, "KUCA_OpenT"

    return-object v0

    .line 238
    :pswitch_2
    const-string v0, "KUCA_KUH_Transmit"

    return-object v0

    .line 234
    :pswitch_3
    const-string v0, "KUCA_KUH_Release"

    return-object v0

    .line 230
    :pswitch_4
    const-string v0, "KUCA_KUH_Establish"

    return-object v0

    .line 226
    :pswitch_5
    const-string v0, "KUCA_printCHInfo"

    return-object v0

    .line 222
    :pswitch_6
    const-string v0, "KUCA_CHInit"

    return-object v0

    .line 218
    :pswitch_7
    const-string v0, "KUCA_UCAVersion"

    return-object v0

    .line 214
    :pswitch_8
    const-string v0, "KUCA_getSimStatus"

    return-object v0

    .line 210
    :pswitch_9
    const-string v0, "KUCA_Close"

    return-object v0

    .line 206
    :pswitch_a
    const-string v0, "KUCA_Transmit"

    return-object v0

    .line 202
    :pswitch_b
    const-string v0, "KUCA_Open"

    return-object v0

    .line 198
    :pswitch_c
    const-string v0, "KUCA_verifyPin"

    return-object v0

    .line 194
    :pswitch_d
    const-string v0, "KUCA_getPinStatus"

    return-object v0

    .line 190
    :pswitch_e
    const-string v0, "KUCA_usimAUTH"

    return-object v0

    .line 186
    :pswitch_f
    const-string v0, "KUCA_getSIMInfo"

    return-object v0

    .line 182
    :pswitch_10
    const-string v0, "KUCA_getMODEL"

    return-object v0

    .line 178
    :pswitch_11
    const-string v0, "KUCA_getMDN"

    return-object v0

    .line 174
    :pswitch_12
    const-string v0, "KUCA_getPUID"

    return-object v0

    .line 170
    :pswitch_13
    const-string v0, "KUCA_getICCID"

    return-object v0

    .line 166
    :pswitch_14
    const-string v0, "KUCA_getIMSI"

    return-object v0

    .line 162
    :pswitch_15
    const-string v0, "KUCA_getMSISDN"

    return-object v0

    .line 158
    :pswitch_16
    const-string v0, "KUCA_getHandle"

    return-object v0

    .line 154
    :pswitch_17
    const-string v0, "releaseResource"

    return-object v0

    .line 150
    :pswitch_18
    const-string v0, "getResource"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 141
    return-object p0
.end method

.method public greylist getMaxTransactionId()I
    .locals 1

    .line 1598
    const/16 v0, 0x18

    return v0
.end method

.method public greylist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 257
    invoke-static {p1}, Landroid/ktuca/IKtUcaIF$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 18
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 261
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p3

    const-string v9, "android.ktuca.IKtUcaIF"

    .line 262
    .local v9, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v7, v10, :cond_0

    const v0, 0xffffff

    if-gt v7, v0, :cond_0

    .line 263
    move-object/from16 v11, p2

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_0

    .line 262
    :cond_0
    move-object/from16 v11, p2

    .line 265
    :goto_0
    packed-switch v7, :pswitch_data_0

    .line 273
    packed-switch v7, :pswitch_data_1

    .line 841
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 269
    :pswitch_0
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 270
    return v10

    .line 830
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 832
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 833
    .local v1, "_arg1":B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 834
    invoke-virtual {v6, v0, v1}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_CloseT([BB)J

    move-result-wide v2

    .line 835
    .local v2, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 836
    invoke-virtual {v8, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 837
    goto/16 :goto_22

    .line 804
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":B
    .end local v2    # "_result":J
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 806
    .restart local v0    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 807
    .local v1, "_arg1_length":I
    if-gez v1, :cond_1

    .line 808
    const/4 v2, 0x0

    .local v2, "_arg1":[B
    goto :goto_1

    .line 810
    .end local v2    # "_arg1":[B
    :cond_1
    new-array v2, v1, [B

    .line 813
    .restart local v2    # "_arg1":[B
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 814
    .local v3, "_arg2_length":I
    if-gez v3, :cond_2

    .line 815
    const/4 v4, 0x0

    .local v4, "_arg2":[I
    goto :goto_2

    .line 817
    .end local v4    # "_arg2":[I
    :cond_2
    new-array v4, v3, [I

    .line 819
    .restart local v4    # "_arg2":[I
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 820
    invoke-virtual {v6, v0, v2, v4}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_OpenT([B[B[I)J

    move-result-wide v12

    .line 821
    .local v12, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 822
    invoke-virtual {v8, v12, v13}, Landroid/os/Parcel;->writeLong(J)V

    .line 823
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 824
    invoke-virtual {v8, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 825
    goto/16 :goto_22

    .line 774
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1_length":I
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2_length":I
    .end local v4    # "_arg2":[I
    .end local v12    # "_result":J
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v12

    .line 776
    .local v12, "_arg0":B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v13

    .line 778
    .local v13, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 780
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 781
    .local v15, "_arg3_length":I
    if-gez v15, :cond_3

    .line 782
    const/4 v0, 0x0

    move-object v5, v0

    .local v0, "_arg3":[B
    goto :goto_3

    .line 784
    .end local v0    # "_arg3":[B
    :cond_3
    new-array v0, v15, [B

    move-object v5, v0

    .line 787
    .local v5, "_arg3":[B
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 788
    .local v4, "_arg4_length":I
    if-gez v4, :cond_4

    .line 789
    const/4 v0, 0x0

    move-object v3, v0

    .local v0, "_arg4":[I
    goto :goto_4

    .line 791
    .end local v0    # "_arg4":[I
    :cond_4
    new-array v0, v4, [I

    move-object v3, v0

    .line 793
    .local v3, "_arg4":[I
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 794
    move-object/from16 v0, p0

    move v1, v12

    move-object v2, v13

    move-object/from16 v16, v3

    .end local v3    # "_arg4":[I
    .local v16, "_arg4":[I
    move v3, v14

    move/from16 v17, v4

    .end local v4    # "_arg4_length":I
    .local v17, "_arg4_length":I
    move-object v4, v5

    move-object v10, v5

    .end local v5    # "_arg3":[B
    .local v10, "_arg3":[B
    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_KUH_Transmit(B[BI[B[I)J

    move-result-wide v0

    .line 795
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 796
    invoke-virtual {v8, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 797
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 798
    move-object/from16 v2, v16

    .end local v16    # "_arg4":[I
    .local v2, "_arg4":[I
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 799
    goto/16 :goto_22

    .line 764
    .end local v0    # "_result":J
    .end local v2    # "_arg4":[I
    .end local v10    # "_arg3":[B
    .end local v12    # "_arg0":B
    .end local v13    # "_arg1":[B
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3_length":I
    .end local v17    # "_arg4_length":I
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 765
    .local v0, "_arg0":B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 766
    invoke-virtual {v6, v0}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_KUH_Release(B)J

    move-result-wide v1

    .line 767
    .local v1, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 768
    invoke-virtual {v8, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 769
    goto/16 :goto_22

    .line 754
    .end local v0    # "_arg0":B
    .end local v1    # "_result":J
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 755
    .restart local v0    # "_arg0":B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 756
    invoke-virtual {v6, v0}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_KUH_Establish(B)J

    move-result-wide v1

    .line 757
    .restart local v1    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 758
    invoke-virtual {v8, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 759
    goto/16 :goto_22

    .line 744
    .end local v0    # "_arg0":B
    .end local v1    # "_result":J
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 745
    .restart local v0    # "_arg0":B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 746
    invoke-virtual {v6, v0}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_printCHInfo(B)J

    move-result-wide v1

    .line 747
    .restart local v1    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 748
    invoke-virtual {v8, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 749
    goto/16 :goto_22

    .line 718
    .end local v0    # "_arg0":B
    .end local v1    # "_result":J
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 720
    .restart local v0    # "_arg0":B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 721
    .local v1, "_arg1_length":I
    if-gez v1, :cond_5

    .line 722
    const/4 v2, 0x0

    .local v2, "_arg1":[B
    goto :goto_5

    .line 724
    .end local v2    # "_arg1":[B
    :cond_5
    new-array v2, v1, [B

    .line 727
    .restart local v2    # "_arg1":[B
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 728
    .local v3, "_arg2_length":I
    if-gez v3, :cond_6

    .line 729
    const/4 v4, 0x0

    .local v4, "_arg2":[I
    goto :goto_6

    .line 731
    .end local v4    # "_arg2":[I
    :cond_6
    new-array v4, v3, [I

    .line 733
    .restart local v4    # "_arg2":[I
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 734
    invoke-virtual {v6, v0, v2, v4}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_CHInit(B[B[I)J

    move-result-wide v12

    .line 735
    .local v12, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 736
    invoke-virtual {v8, v12, v13}, Landroid/os/Parcel;->writeLong(J)V

    .line 737
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 738
    invoke-virtual {v8, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 739
    goto/16 :goto_22

    .line 692
    .end local v0    # "_arg0":B
    .end local v1    # "_arg1_length":I
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2_length":I
    .end local v4    # "_arg2":[I
    .end local v12    # "_result":J
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 694
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 695
    .restart local v1    # "_arg1_length":I
    if-gez v1, :cond_7

    .line 696
    const/4 v2, 0x0

    .restart local v2    # "_arg1":[B
    goto :goto_7

    .line 698
    .end local v2    # "_arg1":[B
    :cond_7
    new-array v2, v1, [B

    .line 701
    .restart local v2    # "_arg1":[B
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 702
    .restart local v3    # "_arg2_length":I
    if-gez v3, :cond_8

    .line 703
    const/4 v4, 0x0

    .restart local v4    # "_arg2":[I
    goto :goto_8

    .line 705
    .end local v4    # "_arg2":[I
    :cond_8
    new-array v4, v3, [I

    .line 707
    .restart local v4    # "_arg2":[I
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 708
    invoke-virtual {v6, v0, v2, v4}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_UCAVersion([B[B[I)J

    move-result-wide v12

    .line 709
    .restart local v12    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 710
    invoke-virtual {v8, v12, v13}, Landroid/os/Parcel;->writeLong(J)V

    .line 711
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 712
    invoke-virtual {v8, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 713
    goto/16 :goto_22

    .line 674
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1_length":I
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2_length":I
    .end local v4    # "_arg2":[I
    .end local v12    # "_result":J
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 676
    .restart local v0    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 677
    .restart local v1    # "_arg1_length":I
    if-gez v1, :cond_9

    .line 678
    const/4 v2, 0x0

    .restart local v2    # "_arg1":[B
    goto :goto_9

    .line 680
    .end local v2    # "_arg1":[B
    :cond_9
    new-array v2, v1, [B

    .line 682
    .restart local v2    # "_arg1":[B
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 683
    invoke-virtual {v6, v0, v2}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_getSimStatus([B[B)J

    move-result-wide v3

    .line 684
    .local v3, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 685
    invoke-virtual {v8, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 686
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 687
    goto/16 :goto_22

    .line 662
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1_length":I
    .end local v2    # "_arg1":[B
    .end local v3    # "_result":J
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 664
    .restart local v0    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 665
    .local v1, "_arg1":B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 666
    invoke-virtual {v6, v0, v1}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_Close([BB)J

    move-result-wide v2

    .line 667
    .local v2, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 668
    invoke-virtual {v8, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 669
    goto/16 :goto_22

    .line 632
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":B
    .end local v2    # "_result":J
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v10

    .line 634
    .local v10, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v12

    .line 636
    .local v12, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 638
    .local v13, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 639
    .local v14, "_arg3_length":I
    if-gez v14, :cond_a

    .line 640
    const/4 v0, 0x0

    move-object v15, v0

    .local v0, "_arg3":[B
    goto :goto_a

    .line 642
    .end local v0    # "_arg3":[B
    :cond_a
    new-array v0, v14, [B

    move-object v15, v0

    .line 645
    .local v15, "_arg3":[B
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 646
    .local v5, "_arg4_length":I
    if-gez v5, :cond_b

    .line 647
    const/4 v0, 0x0

    move-object v4, v0

    .local v0, "_arg4":[I
    goto :goto_b

    .line 649
    .end local v0    # "_arg4":[I
    :cond_b
    new-array v0, v5, [I

    move-object v4, v0

    .line 651
    .local v4, "_arg4":[I
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 652
    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v12

    move v3, v13

    move-object/from16 v16, v4

    .end local v4    # "_arg4":[I
    .restart local v16    # "_arg4":[I
    move-object v4, v15

    move/from16 v17, v5

    .end local v5    # "_arg4_length":I
    .restart local v17    # "_arg4_length":I
    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_Transmit([B[BI[B[I)J

    move-result-wide v0

    .line 653
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 654
    invoke-virtual {v8, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 655
    invoke-virtual {v8, v15}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 656
    move-object/from16 v2, v16

    .end local v16    # "_arg4":[I
    .local v2, "_arg4":[I
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 657
    goto/16 :goto_22

    .line 606
    .end local v0    # "_result":J
    .end local v2    # "_arg4":[I
    .end local v10    # "_arg0":[B
    .end local v12    # "_arg1":[B
    .end local v13    # "_arg2":I
    .end local v14    # "_arg3_length":I
    .end local v15    # "_arg3":[B
    .end local v17    # "_arg4_length":I
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 608
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 609
    .local v1, "_arg1_length":I
    if-gez v1, :cond_c

    .line 610
    const/4 v2, 0x0

    .local v2, "_arg1":[B
    goto :goto_c

    .line 612
    .end local v2    # "_arg1":[B
    :cond_c
    new-array v2, v1, [B

    .line 615
    .restart local v2    # "_arg1":[B
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 616
    .local v3, "_arg2_length":I
    if-gez v3, :cond_d

    .line 617
    const/4 v4, 0x0

    .local v4, "_arg2":[I
    goto :goto_d

    .line 619
    .end local v4    # "_arg2":[I
    :cond_d
    new-array v4, v3, [I

    .line 621
    .restart local v4    # "_arg2":[I
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 622
    invoke-virtual {v6, v0, v2, v4}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_Open([B[B[I)J

    move-result-wide v12

    .line 623
    .local v12, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 624
    invoke-virtual {v8, v12, v13}, Landroid/os/Parcel;->writeLong(J)V

    .line 625
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 626
    invoke-virtual {v8, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 627
    goto/16 :goto_22

    .line 576
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1_length":I
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2_length":I
    .end local v4    # "_arg2":[I
    .end local v12    # "_result":J
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v10

    .line 578
    .restart local v10    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 580
    .local v12, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 582
    .local v13, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 583
    .restart local v14    # "_arg3_length":I
    if-gez v14, :cond_e

    .line 584
    const/4 v0, 0x0

    move-object v15, v0

    .local v0, "_arg3":[B
    goto :goto_e

    .line 586
    .end local v0    # "_arg3":[B
    :cond_e
    new-array v0, v14, [B

    move-object v15, v0

    .line 589
    .restart local v15    # "_arg3":[B
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 590
    .restart local v5    # "_arg4_length":I
    if-gez v5, :cond_f

    .line 591
    const/4 v0, 0x0

    move-object v4, v0

    .local v0, "_arg4":[I
    goto :goto_f

    .line 593
    .end local v0    # "_arg4":[I
    :cond_f
    new-array v0, v5, [I

    move-object v4, v0

    .line 595
    .local v4, "_arg4":[I
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 596
    move-object/from16 v0, p0

    move-object v1, v10

    move v2, v12

    move-object v3, v13

    move-object/from16 v16, v4

    .end local v4    # "_arg4":[I
    .restart local v16    # "_arg4":[I
    move-object v4, v15

    move/from16 v17, v5

    .end local v5    # "_arg4_length":I
    .restart local v17    # "_arg4_length":I
    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_verifyPin([BILjava/lang/String;[B[I)J

    move-result-wide v0

    .line 597
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 598
    invoke-virtual {v8, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 599
    invoke-virtual {v8, v15}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 600
    move-object/from16 v2, v16

    .end local v16    # "_arg4":[I
    .local v2, "_arg4":[I
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 601
    goto/16 :goto_22

    .line 548
    .end local v0    # "_result":J
    .end local v2    # "_arg4":[I
    .end local v10    # "_arg0":[B
    .end local v12    # "_arg1":I
    .end local v13    # "_arg2":Ljava/lang/String;
    .end local v14    # "_arg3_length":I
    .end local v15    # "_arg3":[B
    .end local v17    # "_arg4_length":I
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 550
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 552
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 553
    .local v2, "_arg2_length":I
    if-gez v2, :cond_10

    .line 554
    const/4 v3, 0x0

    .local v3, "_arg2":[B
    goto :goto_10

    .line 556
    .end local v3    # "_arg2":[B
    :cond_10
    new-array v3, v2, [B

    .line 559
    .restart local v3    # "_arg2":[B
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 560
    .local v4, "_arg3_length":I
    if-gez v4, :cond_11

    .line 561
    const/4 v5, 0x0

    .local v5, "_arg3":[I
    goto :goto_11

    .line 563
    .end local v5    # "_arg3":[I
    :cond_11
    new-array v5, v4, [I

    .line 565
    .restart local v5    # "_arg3":[I
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 566
    invoke-virtual {v6, v0, v1, v3, v5}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_getPinStatus([BI[B[I)J

    move-result-wide v12

    .line 567
    .local v12, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 568
    invoke-virtual {v8, v12, v13}, Landroid/os/Parcel;->writeLong(J)V

    .line 569
    invoke-virtual {v8, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 570
    invoke-virtual {v8, v5}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 571
    goto/16 :goto_22

    .line 518
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2_length":I
    .end local v3    # "_arg2":[B
    .end local v4    # "_arg3_length":I
    .end local v5    # "_arg3":[I
    .end local v12    # "_result":J
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v10

    .line 520
    .restart local v10    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v12

    .line 522
    .local v12, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v13

    .line 524
    .local v13, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 525
    .restart local v14    # "_arg3_length":I
    if-gez v14, :cond_12

    .line 526
    const/4 v0, 0x0

    move-object v15, v0

    .local v0, "_arg3":[B
    goto :goto_12

    .line 528
    .end local v0    # "_arg3":[B
    :cond_12
    new-array v0, v14, [B

    move-object v15, v0

    .line 531
    .restart local v15    # "_arg3":[B
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 532
    .local v5, "_arg4_length":I
    if-gez v5, :cond_13

    .line 533
    const/4 v0, 0x0

    move-object v4, v0

    .local v0, "_arg4":[I
    goto :goto_13

    .line 535
    .end local v0    # "_arg4":[I
    :cond_13
    new-array v0, v5, [I

    move-object v4, v0

    .line 537
    .local v4, "_arg4":[I
    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 538
    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v12

    move-object v3, v13

    move-object/from16 v16, v4

    .end local v4    # "_arg4":[I
    .restart local v16    # "_arg4":[I
    move-object v4, v15

    move/from16 v17, v5

    .end local v5    # "_arg4_length":I
    .restart local v17    # "_arg4_length":I
    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_usimAUTH([B[B[B[B[I)J

    move-result-wide v0

    .line 539
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 540
    invoke-virtual {v8, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 541
    invoke-virtual {v8, v15}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 542
    move-object/from16 v2, v16

    .end local v16    # "_arg4":[I
    .local v2, "_arg4":[I
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 543
    goto/16 :goto_22

    .line 492
    .end local v0    # "_result":J
    .end local v2    # "_arg4":[I
    .end local v10    # "_arg0":[B
    .end local v12    # "_arg1":[B
    .end local v13    # "_arg2":[B
    .end local v14    # "_arg3_length":I
    .end local v15    # "_arg3":[B
    .end local v17    # "_arg4_length":I
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 494
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 495
    .local v1, "_arg1_length":I
    if-gez v1, :cond_14

    .line 496
    const/4 v2, 0x0

    .local v2, "_arg1":[B
    goto :goto_14

    .line 498
    .end local v2    # "_arg1":[B
    :cond_14
    new-array v2, v1, [B

    .line 501
    .restart local v2    # "_arg1":[B
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 502
    .local v3, "_arg2_length":I
    if-gez v3, :cond_15

    .line 503
    const/4 v4, 0x0

    .local v4, "_arg2":[I
    goto :goto_15

    .line 505
    .end local v4    # "_arg2":[I
    :cond_15
    new-array v4, v3, [I

    .line 507
    .restart local v4    # "_arg2":[I
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 508
    invoke-virtual {v6, v0, v2, v4}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_getSIMInfo([B[B[I)J

    move-result-wide v12

    .line 509
    .local v12, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 510
    invoke-virtual {v8, v12, v13}, Landroid/os/Parcel;->writeLong(J)V

    .line 511
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 512
    invoke-virtual {v8, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 513
    goto/16 :goto_22

    .line 462
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1_length":I
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2_length":I
    .end local v4    # "_arg2":[I
    .end local v12    # "_result":J
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v10

    .line 464
    .restart local v10    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 465
    .local v12, "_arg1_length":I
    if-gez v12, :cond_16

    .line 466
    const/4 v0, 0x0

    move-object v13, v0

    .local v0, "_arg1":[B
    goto :goto_16

    .line 468
    .end local v0    # "_arg1":[B
    :cond_16
    new-array v0, v12, [B

    move-object v13, v0

    .line 471
    .local v13, "_arg1":[B
    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 472
    .local v14, "_arg2_length":I
    if-gez v14, :cond_17

    .line 473
    const/4 v0, 0x0

    move-object v15, v0

    .local v0, "_arg2":[I
    goto :goto_17

    .line 475
    .end local v0    # "_arg2":[I
    :cond_17
    new-array v0, v14, [I

    move-object v15, v0

    .line 478
    .local v15, "_arg2":[I
    :goto_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 480
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v17

    .line 481
    .local v17, "_arg4":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 482
    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v13

    move-object v3, v15

    move/from16 v4, v16

    move-object/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_getMODEL([B[B[II[B)J

    move-result-wide v0

    .line 483
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 484
    invoke-virtual {v8, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 485
    invoke-virtual {v8, v13}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 486
    invoke-virtual {v8, v15}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 487
    goto/16 :goto_22

    .line 432
    .end local v0    # "_result":J
    .end local v10    # "_arg0":[B
    .end local v12    # "_arg1_length":I
    .end local v13    # "_arg1":[B
    .end local v14    # "_arg2_length":I
    .end local v15    # "_arg2":[I
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":[B
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v10

    .line 434
    .restart local v10    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 435
    .restart local v12    # "_arg1_length":I
    if-gez v12, :cond_18

    .line 436
    const/4 v0, 0x0

    move-object v13, v0

    .local v0, "_arg1":[B
    goto :goto_18

    .line 438
    .end local v0    # "_arg1":[B
    :cond_18
    new-array v0, v12, [B

    move-object v13, v0

    .line 441
    .restart local v13    # "_arg1":[B
    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 442
    .restart local v14    # "_arg2_length":I
    if-gez v14, :cond_19

    .line 443
    const/4 v0, 0x0

    move-object v15, v0

    .local v0, "_arg2":[I
    goto :goto_19

    .line 445
    .end local v0    # "_arg2":[I
    :cond_19
    new-array v0, v14, [I

    move-object v15, v0

    .line 448
    .restart local v15    # "_arg2":[I
    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 450
    .restart local v16    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v17

    .line 451
    .restart local v17    # "_arg4":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 452
    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v13

    move-object v3, v15

    move/from16 v4, v16

    move-object/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_getMDN([B[B[II[B)J

    move-result-wide v0

    .line 453
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 454
    invoke-virtual {v8, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 455
    invoke-virtual {v8, v13}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 456
    invoke-virtual {v8, v15}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 457
    goto/16 :goto_22

    .line 402
    .end local v0    # "_result":J
    .end local v10    # "_arg0":[B
    .end local v12    # "_arg1_length":I
    .end local v13    # "_arg1":[B
    .end local v14    # "_arg2_length":I
    .end local v15    # "_arg2":[I
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":[B
    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v10

    .line 404
    .restart local v10    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 405
    .restart local v12    # "_arg1_length":I
    if-gez v12, :cond_1a

    .line 406
    const/4 v0, 0x0

    move-object v13, v0

    .local v0, "_arg1":[B
    goto :goto_1a

    .line 408
    .end local v0    # "_arg1":[B
    :cond_1a
    new-array v0, v12, [B

    move-object v13, v0

    .line 411
    .restart local v13    # "_arg1":[B
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 412
    .restart local v14    # "_arg2_length":I
    if-gez v14, :cond_1b

    .line 413
    const/4 v0, 0x0

    move-object v15, v0

    .local v0, "_arg2":[I
    goto :goto_1b

    .line 415
    .end local v0    # "_arg2":[I
    :cond_1b
    new-array v0, v14, [I

    move-object v15, v0

    .line 418
    .restart local v15    # "_arg2":[I
    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 420
    .restart local v16    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v17

    .line 421
    .restart local v17    # "_arg4":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 422
    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v13

    move-object v3, v15

    move/from16 v4, v16

    move-object/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_getPUID([B[B[II[B)J

    move-result-wide v0

    .line 423
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 424
    invoke-virtual {v8, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 425
    invoke-virtual {v8, v13}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 426
    invoke-virtual {v8, v15}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 427
    goto/16 :goto_22

    .line 372
    .end local v0    # "_result":J
    .end local v10    # "_arg0":[B
    .end local v12    # "_arg1_length":I
    .end local v13    # "_arg1":[B
    .end local v14    # "_arg2_length":I
    .end local v15    # "_arg2":[I
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":[B
    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v10

    .line 374
    .restart local v10    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 375
    .restart local v12    # "_arg1_length":I
    if-gez v12, :cond_1c

    .line 376
    const/4 v0, 0x0

    move-object v13, v0

    .local v0, "_arg1":[B
    goto :goto_1c

    .line 378
    .end local v0    # "_arg1":[B
    :cond_1c
    new-array v0, v12, [B

    move-object v13, v0

    .line 381
    .restart local v13    # "_arg1":[B
    :goto_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 382
    .restart local v14    # "_arg2_length":I
    if-gez v14, :cond_1d

    .line 383
    const/4 v0, 0x0

    move-object v15, v0

    .local v0, "_arg2":[I
    goto :goto_1d

    .line 385
    .end local v0    # "_arg2":[I
    :cond_1d
    new-array v0, v14, [I

    move-object v15, v0

    .line 388
    .restart local v15    # "_arg2":[I
    :goto_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 390
    .restart local v16    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v17

    .line 391
    .restart local v17    # "_arg4":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 392
    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v13

    move-object v3, v15

    move/from16 v4, v16

    move-object/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_getICCID([B[B[II[B)J

    move-result-wide v0

    .line 393
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    invoke-virtual {v8, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 395
    invoke-virtual {v8, v13}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 396
    invoke-virtual {v8, v15}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 397
    goto/16 :goto_22

    .line 342
    .end local v0    # "_result":J
    .end local v10    # "_arg0":[B
    .end local v12    # "_arg1_length":I
    .end local v13    # "_arg1":[B
    .end local v14    # "_arg2_length":I
    .end local v15    # "_arg2":[I
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":[B
    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v10

    .line 344
    .restart local v10    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 345
    .restart local v12    # "_arg1_length":I
    if-gez v12, :cond_1e

    .line 346
    const/4 v0, 0x0

    move-object v13, v0

    .local v0, "_arg1":[B
    goto :goto_1e

    .line 348
    .end local v0    # "_arg1":[B
    :cond_1e
    new-array v0, v12, [B

    move-object v13, v0

    .line 351
    .restart local v13    # "_arg1":[B
    :goto_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 352
    .restart local v14    # "_arg2_length":I
    if-gez v14, :cond_1f

    .line 353
    const/4 v0, 0x0

    move-object v15, v0

    .local v0, "_arg2":[I
    goto :goto_1f

    .line 355
    .end local v0    # "_arg2":[I
    :cond_1f
    new-array v0, v14, [I

    move-object v15, v0

    .line 358
    .restart local v15    # "_arg2":[I
    :goto_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 360
    .restart local v16    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v17

    .line 361
    .restart local v17    # "_arg4":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 362
    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v13

    move-object v3, v15

    move/from16 v4, v16

    move-object/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_getIMSI([B[B[II[B)J

    move-result-wide v0

    .line 363
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    invoke-virtual {v8, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 365
    invoke-virtual {v8, v13}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 366
    invoke-virtual {v8, v15}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 367
    goto/16 :goto_22

    .line 312
    .end local v0    # "_result":J
    .end local v10    # "_arg0":[B
    .end local v12    # "_arg1_length":I
    .end local v13    # "_arg1":[B
    .end local v14    # "_arg2_length":I
    .end local v15    # "_arg2":[I
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":[B
    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v10

    .line 314
    .restart local v10    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 315
    .restart local v12    # "_arg1_length":I
    if-gez v12, :cond_20

    .line 316
    const/4 v0, 0x0

    move-object v13, v0

    .local v0, "_arg1":[B
    goto :goto_20

    .line 318
    .end local v0    # "_arg1":[B
    :cond_20
    new-array v0, v12, [B

    move-object v13, v0

    .line 321
    .restart local v13    # "_arg1":[B
    :goto_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 322
    .restart local v14    # "_arg2_length":I
    if-gez v14, :cond_21

    .line 323
    const/4 v0, 0x0

    move-object v15, v0

    .local v0, "_arg2":[I
    goto :goto_21

    .line 325
    .end local v0    # "_arg2":[I
    :cond_21
    new-array v0, v14, [I

    move-object v15, v0

    .line 328
    .restart local v15    # "_arg2":[I
    :goto_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 330
    .restart local v16    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v17

    .line 331
    .restart local v17    # "_arg4":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 332
    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v13

    move-object v3, v15

    move/from16 v4, v16

    move-object/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_getMSISDN([B[B[II[B)J

    move-result-wide v0

    .line 333
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    invoke-virtual {v8, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 335
    invoke-virtual {v8, v13}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 336
    invoke-virtual {v8, v15}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 337
    goto :goto_22

    .line 292
    .end local v0    # "_result":J
    .end local v10    # "_arg0":[B
    .end local v12    # "_arg1_length":I
    .end local v13    # "_arg1":[B
    .end local v14    # "_arg2_length":I
    .end local v15    # "_arg2":[I
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":[B
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v10

    .line 294
    .restart local v10    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v12

    .line 296
    .local v12, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v13

    .line 298
    .local v13, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v14

    .line 300
    .local v14, "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v15

    .line 301
    .local v15, "_arg4":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 302
    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v12

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    invoke-virtual/range {v0 .. v5}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_getHandle([B[B[B[B[I)J

    move-result-wide v0

    .line 303
    .restart local v0    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    invoke-virtual {v8, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 305
    invoke-virtual {v8, v14}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 306
    invoke-virtual {v8, v15}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 307
    goto :goto_22

    .line 284
    .end local v0    # "_result":J
    .end local v10    # "_arg0":[B
    .end local v12    # "_arg1":[B
    .end local v13    # "_arg2":[B
    .end local v14    # "_arg3":[B
    .end local v15    # "_arg4":[I
    :pswitch_18
    invoke-virtual/range {p0 .. p0}, Landroid/ktuca/IKtUcaIF$Stub;->releaseResource()I

    move-result v0

    .line 285
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 287
    goto :goto_22

    .line 277
    .end local v0    # "_result":I
    :pswitch_19
    invoke-virtual/range {p0 .. p0}, Landroid/ktuca/IKtUcaIF$Stub;->getResource()I

    move-result v0

    .line 278
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 280
    nop

    .line 844
    .end local v0    # "_result":I
    :goto_22
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
