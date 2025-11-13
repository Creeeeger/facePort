.class public abstract Lcom/samsung/android/core/IFoldStarManager$Stub;
.super Landroid/os/Binder;
.source "IFoldStarManager.java"

# interfaces
.implements Lcom/samsung/android/core/IFoldStarManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/core/IFoldStarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/core/IFoldStarManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getDisplayCompatPackages:I = 0x66

.field static final blacklist TRANSACTION_getFixedAspectRatioPackages:I = 0xca

.field static final blacklist TRANSACTION_initAppContinuityValueWhenReset:I = 0x12f

.field static final blacklist TRANSACTION_registerFoldStarCallback:I = 0x8

.field static final blacklist TRANSACTION_setAllAppContinuityMode:I = 0x12d

.field static final blacklist TRANSACTION_setAppContinuityMode:I = 0x130

.field static final blacklist TRANSACTION_setDisplayCompatPackages:I = 0x65

.field static final blacklist TRANSACTION_setFixedAspectRatioPackages:I = 0xc9

.field static final blacklist TRANSACTION_setFrontScreenOnWhenAppContinuityMode:I = 0x12e

.field static final blacklist TRANSACTION_unregisterFoldStarCallback:I = 0x9


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 62
    const-string v0, "com.samsung.android.core.IFoldStarManager"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/core/IFoldStarManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/core/IFoldStarManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 70
    if-nez p0, :cond_0

    .line 71
    const/4 v0, 0x0

    return-object v0

    .line 73
    :cond_0
    const-string v0, "com.samsung.android.core.IFoldStarManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 74
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/core/IFoldStarManager;

    if-eqz v1, :cond_1

    .line 75
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/core/IFoldStarManager;

    return-object v1

    .line 77
    :cond_1
    new-instance v1, Lcom/samsung/android/core/IFoldStarManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/core/IFoldStarManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 86
    sparse-switch p0, :sswitch_data_0

    .line 130
    const/4 v0, 0x0

    return-object v0

    .line 126
    :sswitch_0
    const-string/jumbo v0, "setAppContinuityMode"

    return-object v0

    .line 122
    :sswitch_1
    const-string v0, "initAppContinuityValueWhenReset"

    return-object v0

    .line 118
    :sswitch_2
    const-string/jumbo v0, "setFrontScreenOnWhenAppContinuityMode"

    return-object v0

    .line 114
    :sswitch_3
    const-string/jumbo v0, "setAllAppContinuityMode"

    return-object v0

    .line 110
    :sswitch_4
    const-string v0, "getFixedAspectRatioPackages"

    return-object v0

    .line 106
    :sswitch_5
    const-string/jumbo v0, "setFixedAspectRatioPackages"

    return-object v0

    .line 102
    :sswitch_6
    const-string v0, "getDisplayCompatPackages"

    return-object v0

    .line 98
    :sswitch_7
    const-string/jumbo v0, "setDisplayCompatPackages"

    return-object v0

    .line 94
    :sswitch_8
    const-string/jumbo v0, "unregisterFoldStarCallback"

    return-object v0

    .line 90
    :sswitch_9
    const-string/jumbo v0, "registerFoldStarCallback"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_9
        0x9 -> :sswitch_8
        0x65 -> :sswitch_7
        0x66 -> :sswitch_6
        0xc9 -> :sswitch_5
        0xca -> :sswitch_4
        0x12d -> :sswitch_3
        0x12e -> :sswitch_2
        0x12f -> :sswitch_1
        0x130 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 81
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 485
    const/16 v0, 0x12f

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 137
    invoke-static {p1}, Lcom/samsung/android/core/IFoldStarManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 141
    const-string v0, "com.samsung.android.core.IFoldStarManager"

    .line 142
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 143
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 153
    sparse-switch p1, :sswitch_data_0

    .line 277
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 149
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    return v1

    .line 265
    :sswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 267
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 269
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 270
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 271
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/core/IFoldStarManager$Stub;->setAppContinuityMode(Ljava/lang/String;IZ)V

    .line 272
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    goto/16 :goto_0

    .line 254
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Z
    :sswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 256
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 257
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 258
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/core/IFoldStarManager$Stub;->initAppContinuityValueWhenReset(ZZ)V

    .line 259
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    goto/16 :goto_0

    .line 245
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Z
    :sswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 246
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 247
    invoke-virtual {p0, v2}, Lcom/samsung/android/core/IFoldStarManager$Stub;->setFrontScreenOnWhenAppContinuityMode(Z)V

    .line 248
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    goto/16 :goto_0

    .line 234
    .end local v2    # "_arg0":Z
    :sswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 236
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 237
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 238
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/core/IFoldStarManager$Stub;->setAllAppContinuityMode(IZ)V

    .line 239
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    goto/16 :goto_0

    .line 219
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :sswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 221
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 223
    .local v3, "_arg1":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 224
    .local v4, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v5

    .line 225
    .local v5, "_arg2":Ljava/util/Map;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 226
    invoke-virtual {p0, v2, v3, v5}, Lcom/samsung/android/core/IFoldStarManager$Stub;->getFixedAspectRatioPackages(IILjava/util/Map;)Ljava/util/Map;

    move-result-object v6

    .line 227
    .local v6, "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 229
    goto/16 :goto_0

    .line 205
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "cl":Ljava/lang/ClassLoader;
    .end local v5    # "_arg2":Ljava/util/Map;
    .end local v6    # "_result":Ljava/util/Map;
    :sswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 207
    .restart local v2    # "_arg0":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 208
    .local v3, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v4

    .line 210
    .local v4, "_arg1":Ljava/util/Map;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 211
    .local v5, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 212
    invoke-virtual {p0, v2, v4, v5}, Lcom/samsung/android/core/IFoldStarManager$Stub;->setFixedAspectRatioPackages(ILjava/util/Map;Z)V

    .line 213
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    goto :goto_0

    .line 190
    .end local v2    # "_arg0":I
    .end local v3    # "cl":Ljava/lang/ClassLoader;
    .end local v4    # "_arg1":Ljava/util/Map;
    .end local v5    # "_arg2":Z
    :sswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 192
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 194
    .local v3, "_arg1":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 195
    .local v4, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v5

    .line 196
    .local v5, "_arg2":Ljava/util/Map;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 197
    invoke-virtual {p0, v2, v3, v5}, Lcom/samsung/android/core/IFoldStarManager$Stub;->getDisplayCompatPackages(IILjava/util/Map;)Ljava/util/Map;

    move-result-object v6

    .line 198
    .restart local v6    # "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 200
    goto :goto_0

    .line 176
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "cl":Ljava/lang/ClassLoader;
    .end local v5    # "_arg2":Ljava/util/Map;
    .end local v6    # "_result":Ljava/util/Map;
    :sswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 178
    .restart local v2    # "_arg0":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 179
    .local v3, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v4

    .line 181
    .local v4, "_arg1":Ljava/util/Map;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 182
    .local v5, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 183
    invoke-virtual {p0, v2, v4, v5}, Lcom/samsung/android/core/IFoldStarManager$Stub;->setDisplayCompatPackages(ILjava/util/Map;Z)V

    .line 184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    goto :goto_0

    .line 167
    .end local v2    # "_arg0":I
    .end local v3    # "cl":Ljava/lang/ClassLoader;
    .end local v4    # "_arg1":Ljava/util/Map;
    .end local v5    # "_arg2":Z
    :sswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/core/IFoldStarCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/core/IFoldStarCallback;

    move-result-object v2

    .line 168
    .local v2, "_arg0":Lcom/samsung/android/core/IFoldStarCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 169
    invoke-virtual {p0, v2}, Lcom/samsung/android/core/IFoldStarManager$Stub;->unregisterFoldStarCallback(Lcom/samsung/android/core/IFoldStarCallback;)V

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    goto :goto_0

    .line 158
    .end local v2    # "_arg0":Lcom/samsung/android/core/IFoldStarCallback;
    :sswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/core/IFoldStarCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/core/IFoldStarCallback;

    move-result-object v2

    .line 159
    .restart local v2    # "_arg0":Lcom/samsung/android/core/IFoldStarCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 160
    invoke-virtual {p0, v2}, Lcom/samsung/android/core/IFoldStarManager$Stub;->registerFoldStarCallback(Lcom/samsung/android/core/IFoldStarCallback;)V

    .line 161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    nop

    .line 280
    .end local v2    # "_arg0":Lcom/samsung/android/core/IFoldStarCallback;
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_9
        0x9 -> :sswitch_8
        0x65 -> :sswitch_7
        0x66 -> :sswitch_6
        0xc9 -> :sswitch_5
        0xca -> :sswitch_4
        0x12d -> :sswitch_3
        0x12e -> :sswitch_2
        0x12f -> :sswitch_1
        0x130 -> :sswitch_0
    .end sparse-switch
.end method
