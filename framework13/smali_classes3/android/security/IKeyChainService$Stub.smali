.class public abstract Landroid/security/IKeyChainService$Stub;
.super Landroid/os/Binder;
.source "IKeyChainService.java"

# interfaces
.implements Landroid/security/IKeyChainService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/IKeyChainService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/IKeyChainService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.security.IKeyChainService"

.field static final blacklist TRANSACTION_allSystemAliases:I = 0x20

.field static final blacklist TRANSACTION_contains:I = 0x27

.field static final blacklist TRANSACTION_containsAlias:I = 0x22

.field static final greylist-max-o TRANSACTION_containsCaAlias:I = 0x11

.field static final blacklist TRANSACTION_containsKeyPair:I = 0xb

.field static final greylist-max-o TRANSACTION_deleteCaCertificate:I = 0xd

.field static final blacklist TRANSACTION_deleteEntry:I = 0x24

.field static final blacklist TRANSACTION_findIssuer:I = 0x23

.field static final greylist-max-o TRANSACTION_generateKeyPair:I = 0x6

.field static final greylist-max-o TRANSACTION_getCaCertificateChainAliases:I = 0x13

.field static final greylist-max-o TRANSACTION_getCaCertificates:I = 0x3

.field static final greylist-max-o TRANSACTION_getCertificate:I = 0x2

.field static final blacklist TRANSACTION_getCertificateAlias:I = 0x1f

.field static final blacklist TRANSACTION_getCertificateFromTrustCredential:I = 0x1e

.field static final blacklist TRANSACTION_getCertificateSystem:I = 0x26

.field static final blacklist TRANSACTION_getCredentialManagementAppPackageName:I = 0x16

.field static final blacklist TRANSACTION_getCredentialManagementAppPolicy:I = 0x17

.field static final greylist-max-o TRANSACTION_getEncodedCaCertificate:I = 0x12

.field static final blacklist TRANSACTION_getGrants:I = 0xc

.field static final blacklist TRANSACTION_getPredefinedAliasForPackageAndUri:I = 0x18

.field static final greylist-max-o TRANSACTION_getSystemCaAliases:I = 0x10

.field static final greylist-max-o TRANSACTION_getUserCaAliases:I = 0xf

.field static final blacklist TRANSACTION_getWifiKeyGrantAsUser:I = 0x1d

.field static final blacklist TRANSACTION_hasCredentialManagementApp:I = 0x15

.field static final greylist-max-o TRANSACTION_hasGrant:I = 0x1c

.field static final greylist-max-o TRANSACTION_installCaCertificate:I = 0x8

.field static final greylist-max-o TRANSACTION_installKeyPair:I = 0x9

.field static final blacklist TRANSACTION_isCertificateEntry:I = 0x29

.field static final blacklist TRANSACTION_isCredentialManagementApp:I = 0x1a

.field static final greylist-max-o TRANSACTION_isUserSelectable:I = 0x4

.field static final blacklist TRANSACTION_listAliases:I = 0x25

.field static final blacklist TRANSACTION_removeCredentialManagementApp:I = 0x19

.field static final greylist-max-o TRANSACTION_removeKeyPair:I = 0xa

.field static final greylist-max-o TRANSACTION_requestPrivateKey:I = 0x1

.field static final greylist-max-o TRANSACTION_reset:I = 0xe

.field static final blacklist TRANSACTION_setCredentialManagementApp:I = 0x14

.field static final greylist-max-o TRANSACTION_setGrant:I = 0x1b

.field static final greylist-max-o TRANSACTION_setKeyPairCertificate:I = 0x7

.field static final greylist-max-o TRANSACTION_setUserSelectable:I = 0x5

.field static final blacklist TRANSACTION_updateKeyPair:I = 0x28

.field static final blacklist TRANSACTION_userAliases:I = 0x21


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 195
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 196
    const-string v0, "android.security.IKeyChainService"

    invoke-virtual {p0, p0, v0}, Landroid/security/IKeyChainService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/security/IKeyChainService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 204
    if-nez p0, :cond_0

    .line 205
    const/4 v0, 0x0

    return-object v0

    .line 207
    :cond_0
    const-string v0, "android.security.IKeyChainService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 208
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/security/IKeyChainService;

    if-eqz v1, :cond_1

    .line 209
    move-object v1, v0

    check-cast v1, Landroid/security/IKeyChainService;

    return-object v1

    .line 211
    :cond_1
    new-instance v1, Landroid/security/IKeyChainService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/security/IKeyChainService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 220
    packed-switch p0, :pswitch_data_0

    .line 388
    const/4 v0, 0x0

    return-object v0

    .line 384
    :pswitch_0
    const-string/jumbo v0, "isCertificateEntry"

    return-object v0

    .line 380
    :pswitch_1
    const-string/jumbo v0, "updateKeyPair"

    return-object v0

    .line 376
    :pswitch_2
    const-string v0, "contains"

    return-object v0

    .line 372
    :pswitch_3
    const-string v0, "getCertificateSystem"

    return-object v0

    .line 368
    :pswitch_4
    const-string/jumbo v0, "listAliases"

    return-object v0

    .line 364
    :pswitch_5
    const-string v0, "deleteEntry"

    return-object v0

    .line 360
    :pswitch_6
    const-string v0, "findIssuer"

    return-object v0

    .line 356
    :pswitch_7
    const-string v0, "containsAlias"

    return-object v0

    .line 352
    :pswitch_8
    const-string/jumbo v0, "userAliases"

    return-object v0

    .line 348
    :pswitch_9
    const-string v0, "allSystemAliases"

    return-object v0

    .line 344
    :pswitch_a
    const-string v0, "getCertificateAlias"

    return-object v0

    .line 340
    :pswitch_b
    const-string v0, "getCertificateFromTrustCredential"

    return-object v0

    .line 336
    :pswitch_c
    const-string/jumbo v0, "getWifiKeyGrantAsUser"

    return-object v0

    .line 332
    :pswitch_d
    const-string/jumbo v0, "hasGrant"

    return-object v0

    .line 328
    :pswitch_e
    const-string/jumbo v0, "setGrant"

    return-object v0

    .line 324
    :pswitch_f
    const-string/jumbo v0, "isCredentialManagementApp"

    return-object v0

    .line 320
    :pswitch_10
    const-string/jumbo v0, "removeCredentialManagementApp"

    return-object v0

    .line 316
    :pswitch_11
    const-string/jumbo v0, "getPredefinedAliasForPackageAndUri"

    return-object v0

    .line 312
    :pswitch_12
    const-string v0, "getCredentialManagementAppPolicy"

    return-object v0

    .line 308
    :pswitch_13
    const-string v0, "getCredentialManagementAppPackageName"

    return-object v0

    .line 304
    :pswitch_14
    const-string/jumbo v0, "hasCredentialManagementApp"

    return-object v0

    .line 300
    :pswitch_15
    const-string/jumbo v0, "setCredentialManagementApp"

    return-object v0

    .line 296
    :pswitch_16
    const-string v0, "getCaCertificateChainAliases"

    return-object v0

    .line 292
    :pswitch_17
    const-string v0, "getEncodedCaCertificate"

    return-object v0

    .line 288
    :pswitch_18
    const-string v0, "containsCaAlias"

    return-object v0

    .line 284
    :pswitch_19
    const-string/jumbo v0, "getSystemCaAliases"

    return-object v0

    .line 280
    :pswitch_1a
    const-string/jumbo v0, "getUserCaAliases"

    return-object v0

    .line 276
    :pswitch_1b
    const-string/jumbo v0, "reset"

    return-object v0

    .line 272
    :pswitch_1c
    const-string v0, "deleteCaCertificate"

    return-object v0

    .line 268
    :pswitch_1d
    const-string v0, "getGrants"

    return-object v0

    .line 264
    :pswitch_1e
    const-string v0, "containsKeyPair"

    return-object v0

    .line 260
    :pswitch_1f
    const-string/jumbo v0, "removeKeyPair"

    return-object v0

    .line 256
    :pswitch_20
    const-string/jumbo v0, "installKeyPair"

    return-object v0

    .line 252
    :pswitch_21
    const-string/jumbo v0, "installCaCertificate"

    return-object v0

    .line 248
    :pswitch_22
    const-string/jumbo v0, "setKeyPairCertificate"

    return-object v0

    .line 244
    :pswitch_23
    const-string v0, "generateKeyPair"

    return-object v0

    .line 240
    :pswitch_24
    const-string/jumbo v0, "setUserSelectable"

    return-object v0

    .line 236
    :pswitch_25
    const-string/jumbo v0, "isUserSelectable"

    return-object v0

    .line 232
    :pswitch_26
    const-string v0, "getCaCertificates"

    return-object v0

    .line 228
    :pswitch_27
    const-string v0, "getCertificate"

    return-object v0

    .line 224
    :pswitch_28
    const-string/jumbo v0, "requestPrivateKey"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
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
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 215
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 1664
    const/16 v0, 0x28

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 395
    invoke-static {p1}, Landroid/security/IKeyChainService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 17
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 399
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v10, "android.security.IKeyChainService"

    .line 400
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v7, v11, :cond_0

    const v0, 0xffffff

    if-gt v7, v0, :cond_0

    .line 401
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 403
    :cond_0
    packed-switch v7, :pswitch_data_0

    .line 411
    packed-switch v7, :pswitch_data_1

    .line 845
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 407
    :pswitch_0
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 408
    return v11

    .line 834
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 836
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 837
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 838
    invoke-virtual {v6, v0, v1}, Landroid/security/IKeyChainService$Stub;->isCertificateEntry(Ljava/lang/String;I)Z

    move-result v2

    .line 839
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 840
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 841
    goto/16 :goto_0

    .line 818
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 820
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 822
    .local v1, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 824
    .local v2, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 825
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 826
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/security/IKeyChainService$Stub;->updateKeyPair(Ljava/lang/String;[B[BI)Z

    move-result v4

    .line 827
    .local v4, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 828
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 829
    goto/16 :goto_0

    .line 806
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[B
    .end local v2    # "_arg2":[B
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Z
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 808
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 809
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 810
    invoke-virtual {v6, v0, v1}, Landroid/security/IKeyChainService$Stub;->contains(Ljava/lang/String;I)Z

    move-result v2

    .line 811
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 812
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 813
    goto/16 :goto_0

    .line 792
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 794
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 796
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 797
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 798
    invoke-virtual {v6, v0, v1, v2}, Landroid/security/IKeyChainService$Stub;->getCertificateSystem(Ljava/lang/String;Ljava/lang/String;I)[B

    move-result-object v3

    .line 799
    .local v3, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 800
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 801
    goto/16 :goto_0

    .line 780
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":[B
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 782
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 783
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 784
    invoke-virtual {v6, v0, v1}, Landroid/security/IKeyChainService$Stub;->listAliases(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 785
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 786
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 787
    goto/16 :goto_0

    .line 768
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":[Ljava/lang/String;
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 770
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 771
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 772
    invoke-virtual {v6, v0, v1}, Landroid/security/IKeyChainService$Stub;->deleteEntry(Ljava/lang/String;I)Z

    move-result v2

    .line 773
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 774
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 775
    goto/16 :goto_0

    .line 758
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 759
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 760
    invoke-virtual {v6, v0}, Landroid/security/IKeyChainService$Stub;->findIssuer([B)[B

    move-result-object v1

    .line 761
    .local v1, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 762
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 763
    goto/16 :goto_0

    .line 748
    .end local v0    # "_arg0":[B
    .end local v1    # "_result":[B
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 749
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 750
    invoke-virtual {v6, v0}, Landroid/security/IKeyChainService$Stub;->containsAlias(Ljava/lang/String;)Z

    move-result v1

    .line 751
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 752
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 753
    goto/16 :goto_0

    .line 740
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Landroid/security/IKeyChainService$Stub;->userAliases()Ljava/util/List;

    move-result-object v0

    .line 741
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 742
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 743
    goto/16 :goto_0

    .line 733
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Landroid/security/IKeyChainService$Stub;->allSystemAliases()Ljava/util/List;

    move-result-object v0

    .line 734
    .restart local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 735
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 736
    goto/16 :goto_0

    .line 724
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 725
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 726
    invoke-virtual {v6, v0}, Landroid/security/IKeyChainService$Stub;->getCertificateAlias([B)Ljava/lang/String;

    move-result-object v1

    .line 727
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 728
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 729
    goto/16 :goto_0

    .line 712
    .end local v0    # "_arg0":[B
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 714
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 715
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 716
    invoke-virtual {v6, v0, v1}, Landroid/security/IKeyChainService$Stub;->getCertificateFromTrustCredential(Ljava/lang/String;Z)[B

    move-result-object v2

    .line 717
    .local v2, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 718
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 719
    goto/16 :goto_0

    .line 702
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":[B
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 703
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 704
    invoke-virtual {v6, v0}, Landroid/security/IKeyChainService$Stub;->getWifiKeyGrantAsUser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 705
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 706
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 707
    goto/16 :goto_0

    .line 690
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 692
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 693
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 694
    invoke-virtual {v6, v0, v1}, Landroid/security/IKeyChainService$Stub;->hasGrant(ILjava/lang/String;)Z

    move-result v2

    .line 695
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 696
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 697
    goto/16 :goto_0

    .line 676
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 678
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 680
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 681
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 682
    invoke-virtual {v6, v0, v1, v2}, Landroid/security/IKeyChainService$Stub;->setGrant(ILjava/lang/String;Z)Z

    move-result v3

    .line 683
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 684
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 685
    goto/16 :goto_0

    .line 666
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Z
    .end local v3    # "_result":Z
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 667
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 668
    invoke-virtual {v6, v0}, Landroid/security/IKeyChainService$Stub;->isCredentialManagementApp(Ljava/lang/String;)Z

    move-result v1

    .line 669
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 670
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 671
    goto/16 :goto_0

    .line 659
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_11
    invoke-virtual/range {p0 .. p0}, Landroid/security/IKeyChainService$Stub;->removeCredentialManagementApp()V

    .line 660
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 661
    goto/16 :goto_0

    .line 648
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 650
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 651
    .local v1, "_arg1":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 652
    invoke-virtual {v6, v0, v1}, Landroid/security/IKeyChainService$Stub;->getPredefinedAliasForPackageAndUri(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 653
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 654
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 655
    goto/16 :goto_0

    .line 640
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/net/Uri;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_13
    invoke-virtual/range {p0 .. p0}, Landroid/security/IKeyChainService$Stub;->getCredentialManagementAppPolicy()Landroid/security/AppUriAuthenticationPolicy;

    move-result-object v0

    .line 641
    .local v0, "_result":Landroid/security/AppUriAuthenticationPolicy;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 642
    invoke-virtual {v9, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 643
    goto/16 :goto_0

    .line 633
    .end local v0    # "_result":Landroid/security/AppUriAuthenticationPolicy;
    :pswitch_14
    invoke-virtual/range {p0 .. p0}, Landroid/security/IKeyChainService$Stub;->getCredentialManagementAppPackageName()Ljava/lang/String;

    move-result-object v0

    .line 634
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 635
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 636
    goto/16 :goto_0

    .line 626
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_15
    invoke-virtual/range {p0 .. p0}, Landroid/security/IKeyChainService$Stub;->hasCredentialManagementApp()Z

    move-result v0

    .line 627
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 628
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 629
    goto/16 :goto_0

    .line 616
    .end local v0    # "_result":Z
    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 618
    .local v0, "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/security/AppUriAuthenticationPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/security/AppUriAuthenticationPolicy;

    .line 619
    .local v1, "_arg1":Landroid/security/AppUriAuthenticationPolicy;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 620
    invoke-virtual {v6, v0, v1}, Landroid/security/IKeyChainService$Stub;->setCredentialManagementApp(Ljava/lang/String;Landroid/security/AppUriAuthenticationPolicy;)V

    .line 621
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 622
    goto/16 :goto_0

    .line 604
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/security/AppUriAuthenticationPolicy;
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 606
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 607
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 608
    invoke-virtual {v6, v0, v1}, Landroid/security/IKeyChainService$Stub;->getCaCertificateChainAliases(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v2

    .line 609
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 610
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 611
    goto/16 :goto_0

    .line 592
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 594
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 595
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 596
    invoke-virtual {v6, v0, v1}, Landroid/security/IKeyChainService$Stub;->getEncodedCaCertificate(Ljava/lang/String;Z)[B

    move-result-object v2

    .line 597
    .local v2, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 598
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 599
    goto/16 :goto_0

    .line 582
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":[B
    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 583
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 584
    invoke-virtual {v6, v0}, Landroid/security/IKeyChainService$Stub;->containsCaAlias(Ljava/lang/String;)Z

    move-result v1

    .line 585
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 586
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 587
    goto/16 :goto_0

    .line 574
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_1a
    invoke-virtual/range {p0 .. p0}, Landroid/security/IKeyChainService$Stub;->getSystemCaAliases()Landroid/content/pm/StringParceledListSlice;

    move-result-object v0

    .line 575
    .local v0, "_result":Landroid/content/pm/StringParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 576
    invoke-virtual {v9, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 577
    goto/16 :goto_0

    .line 567
    .end local v0    # "_result":Landroid/content/pm/StringParceledListSlice;
    :pswitch_1b
    invoke-virtual/range {p0 .. p0}, Landroid/security/IKeyChainService$Stub;->getUserCaAliases()Landroid/content/pm/StringParceledListSlice;

    move-result-object v0

    .line 568
    .restart local v0    # "_result":Landroid/content/pm/StringParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 569
    invoke-virtual {v9, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 570
    goto/16 :goto_0

    .line 560
    .end local v0    # "_result":Landroid/content/pm/StringParceledListSlice;
    :pswitch_1c
    invoke-virtual/range {p0 .. p0}, Landroid/security/IKeyChainService$Stub;->reset()Z

    move-result v0

    .line 561
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 562
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 563
    goto/16 :goto_0

    .line 551
    .end local v0    # "_result":Z
    :pswitch_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 552
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 553
    invoke-virtual {v6, v0}, Landroid/security/IKeyChainService$Stub;->deleteCaCertificate(Ljava/lang/String;)Z

    move-result v1

    .line 554
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 555
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 556
    goto/16 :goto_0

    .line 541
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 542
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 543
    invoke-virtual {v6, v0}, Landroid/security/IKeyChainService$Stub;->getGrants(Ljava/lang/String;)[I

    move-result-object v1

    .line 544
    .local v1, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 545
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 546
    goto/16 :goto_0

    .line 531
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":[I
    :pswitch_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 532
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 533
    invoke-virtual {v6, v0}, Landroid/security/IKeyChainService$Stub;->containsKeyPair(Ljava/lang/String;)Z

    move-result v1

    .line 534
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 535
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 536
    goto/16 :goto_0

    .line 521
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 522
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 523
    invoke-virtual {v6, v0}, Landroid/security/IKeyChainService$Stub;->removeKeyPair(Ljava/lang/String;)Z

    move-result v1

    .line 524
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 525
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 526
    goto/16 :goto_0

    .line 503
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v12

    .line 505
    .local v12, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v13

    .line 507
    .local v13, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v14

    .line 509
    .local v14, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 511
    .local v15, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 512
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 513
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/security/IKeyChainService$Stub;->installKeyPair([B[B[BLjava/lang/String;I)Z

    move-result v0

    .line 514
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 515
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 516
    goto/16 :goto_0

    .line 493
    .end local v0    # "_result":Z
    .end local v12    # "_arg0":[B
    .end local v13    # "_arg1":[B
    .end local v14    # "_arg2":[B
    .end local v15    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":I
    :pswitch_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 494
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 495
    invoke-virtual {v6, v0}, Landroid/security/IKeyChainService$Stub;->installCaCertificate([B)Ljava/lang/String;

    move-result-object v1

    .line 496
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 497
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 498
    goto/16 :goto_0

    .line 479
    .end local v0    # "_arg0":[B
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 481
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 483
    .local v1, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 484
    .local v2, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 485
    invoke-virtual {v6, v0, v1, v2}, Landroid/security/IKeyChainService$Stub;->setKeyPairCertificate(Ljava/lang/String;[B[B)Z

    move-result v3

    .line 486
    .restart local v3    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 487
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 488
    goto/16 :goto_0

    .line 467
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[B
    .end local v2    # "_arg2":[B
    .end local v3    # "_result":Z
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 469
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/security/keystore/ParcelableKeyGenParameterSpec;

    .line 470
    .local v1, "_arg1":Landroid/security/keystore/ParcelableKeyGenParameterSpec;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 471
    invoke-virtual {v6, v0, v1}, Landroid/security/IKeyChainService$Stub;->generateKeyPair(Ljava/lang/String;Landroid/security/keystore/ParcelableKeyGenParameterSpec;)I

    move-result v2

    .line 472
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 473
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 474
    goto :goto_0

    .line 456
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/security/keystore/ParcelableKeyGenParameterSpec;
    .end local v2    # "_result":I
    :pswitch_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 458
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 459
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 460
    invoke-virtual {v6, v0, v1}, Landroid/security/IKeyChainService$Stub;->setUserSelectable(Ljava/lang/String;Z)V

    .line 461
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 462
    goto :goto_0

    .line 446
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    :pswitch_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 447
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 448
    invoke-virtual {v6, v0}, Landroid/security/IKeyChainService$Stub;->isUserSelectable(Ljava/lang/String;)Z

    move-result v1

    .line 449
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 450
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 451
    goto :goto_0

    .line 436
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 437
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 438
    invoke-virtual {v6, v0}, Landroid/security/IKeyChainService$Stub;->getCaCertificates(Ljava/lang/String;)[B

    move-result-object v1

    .line 439
    .local v1, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 440
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 441
    goto :goto_0

    .line 426
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":[B
    :pswitch_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 427
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 428
    invoke-virtual {v6, v0}, Landroid/security/IKeyChainService$Stub;->getCertificate(Ljava/lang/String;)[B

    move-result-object v1

    .line 429
    .restart local v1    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 430
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 431
    goto :goto_0

    .line 416
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":[B
    :pswitch_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 417
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 418
    invoke-virtual {v6, v0}, Landroid/security/IKeyChainService$Stub;->requestPrivateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 419
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 420
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 421
    nop

    .line 848
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/lang/String;
    :goto_0
    return v11

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
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
