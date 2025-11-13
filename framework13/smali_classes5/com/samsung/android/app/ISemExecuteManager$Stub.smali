.class public abstract Lcom/samsung/android/app/ISemExecuteManager$Stub;
.super Landroid/os/Binder;
.source "ISemExecuteManager.java"

# interfaces
.implements Lcom/samsung/android/app/ISemExecuteManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/ISemExecuteManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/ISemExecuteManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getApplicationInfo:I = 0x7

.field static final blacklist TRANSACTION_getExecutableInfo:I = 0x2

.field static final blacklist TRANSACTION_getExecutableInfos:I = 0x1

.field static final blacklist TRANSACTION_getShortcutIconFd:I = 0x3

.field static final blacklist TRANSACTION_getShortcuts:I = 0x5

.field static final blacklist TRANSACTION_hasShortcutHostPermission:I = 0x4

.field static final blacklist TRANSACTION_registerChangedCallback:I = 0x8

.field static final blacklist TRANSACTION_startShortcut:I = 0x6

.field static final blacklist TRANSACTION_unRegisterChangedCallback:I = 0x9


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 56
    const-string v0, "com.samsung.android.app.ISemExecuteManager"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/app/ISemExecuteManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/app/ISemExecuteManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 64
    if-nez p0, :cond_0

    .line 65
    const/4 v0, 0x0

    return-object v0

    .line 67
    :cond_0
    const-string v0, "com.samsung.android.app.ISemExecuteManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 68
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/app/ISemExecuteManager;

    if-eqz v1, :cond_1

    .line 69
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/app/ISemExecuteManager;

    return-object v1

    .line 71
    :cond_1
    new-instance v1, Lcom/samsung/android/app/ISemExecuteManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/ISemExecuteManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 80
    packed-switch p0, :pswitch_data_0

    .line 120
    const/4 v0, 0x0

    return-object v0

    .line 116
    :pswitch_0
    const-string/jumbo v0, "unRegisterChangedCallback"

    return-object v0

    .line 112
    :pswitch_1
    const-string/jumbo v0, "registerChangedCallback"

    return-object v0

    .line 108
    :pswitch_2
    const-string v0, "getApplicationInfo"

    return-object v0

    .line 104
    :pswitch_3
    const-string/jumbo v0, "startShortcut"

    return-object v0

    .line 100
    :pswitch_4
    const-string v0, "getShortcuts"

    return-object v0

    .line 96
    :pswitch_5
    const-string v0, "hasShortcutHostPermission"

    return-object v0

    .line 92
    :pswitch_6
    const-string v0, "getShortcutIconFd"

    return-object v0

    .line 88
    :pswitch_7
    const-string v0, "getExecutableInfo"

    return-object v0

    .line 84
    :pswitch_8
    const-string v0, "getExecutableInfos"

    return-object v0

    nop

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


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 75
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 493
    const/16 v0, 0x8

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 127
    invoke-static {p1}, Lcom/samsung/android/app/ISemExecuteManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 26
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 131
    move-object/from16 v10, p0

    move/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    const-string v14, "com.samsung.android.app.ISemExecuteManager"

    .line 132
    .local v14, "descriptor":Ljava/lang/String;
    const/4 v15, 0x1

    if-lt v11, v15, :cond_0

    const v0, 0xffffff

    if-gt v11, v0, :cond_0

    .line 133
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    :cond_0
    packed-switch v11, :pswitch_data_0

    .line 143
    packed-switch v11, :pswitch_data_1

    .line 281
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 139
    :pswitch_0
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    return v15

    .line 269
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 273
    .local v1, "_arg1":Landroid/app/PendingIntent;
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 274
    .local v2, "_arg2":Landroid/os/UserHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 275
    invoke-virtual {v10, v0, v1, v2}, Lcom/samsung/android/app/ISemExecuteManager$Stub;->unRegisterChangedCallback(Ljava/lang/String;Landroid/app/PendingIntent;Landroid/os/UserHandle;)V

    .line 276
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    goto/16 :goto_0

    .line 256
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/app/PendingIntent;
    .end local v2    # "_arg2":Landroid/os/UserHandle;
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 258
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 260
    .restart local v1    # "_arg1":Landroid/app/PendingIntent;
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 261
    .restart local v2    # "_arg2":Landroid/os/UserHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 262
    invoke-virtual {v10, v0, v1, v2}, Lcom/samsung/android/app/ISemExecuteManager$Stub;->registerChangedCallback(Ljava/lang/String;Landroid/app/PendingIntent;Landroid/os/UserHandle;)V

    .line 263
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    goto/16 :goto_0

    .line 240
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/app/PendingIntent;
    .end local v2    # "_arg2":Landroid/os/UserHandle;
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 242
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 244
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 246
    .local v2, "_arg2":I
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 247
    .local v3, "_arg3":Landroid/os/UserHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 248
    invoke-virtual {v10, v0, v1, v2, v3}, Lcom/samsung/android/app/ISemExecuteManager$Stub;->getApplicationInfo(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 249
    .local v4, "_result":Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    invoke-virtual {v13, v4, v15}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 251
    goto/16 :goto_0

    .line 218
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Landroid/os/UserHandle;
    .end local v4    # "_result":Landroid/content/pm/ApplicationInfo;
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 220
    .local v8, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 222
    .local v9, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 224
    .local v16, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 226
    .local v17, "_arg3":Ljava/lang/String;
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/graphics/Rect;

    .line 228
    .local v18, "_arg4":Landroid/graphics/Rect;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/Bundle;

    .line 230
    .local v19, "_arg5":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 231
    .local v20, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 232
    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v9

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/app/ISemExecuteManager$Stub;->startShortcut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;I)Z

    move-result v0

    .line 233
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 235
    goto/16 :goto_0

    .line 193
    .end local v0    # "_result":Z
    .end local v8    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg2":Ljava/lang/String;
    .end local v17    # "_arg3":Ljava/lang/String;
    .end local v18    # "_arg4":Landroid/graphics/Rect;
    .end local v19    # "_arg5":Landroid/os/Bundle;
    .end local v20    # "_arg6":I
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 195
    .local v16, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 197
    .local v17, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 199
    .local v18, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 201
    .local v20, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    .line 202
    .local v9, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v12, v9}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v21

    .line 204
    .local v21, "_arg4":Ljava/util/List;
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Landroid/content/ComponentName;

    .line 206
    .local v22, "_arg5":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 208
    .local v23, "_arg6":I
    sget-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/UserHandle;

    .line 209
    .local v24, "_arg7":Landroid/os/UserHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 210
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-wide/from16 v3, v18

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    move/from16 v8, v23

    move-object/from16 v25, v9

    .end local v9    # "cl":Ljava/lang/ClassLoader;
    .local v25, "cl":Ljava/lang/ClassLoader;
    move-object/from16 v9, v24

    invoke-virtual/range {v0 .. v9}, Lcom/samsung/android/app/ISemExecuteManager$Stub;->getShortcuts(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/util/List;Landroid/content/ComponentName;ILandroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 211
    .local v0, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    invoke-virtual {v13, v0, v15}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 213
    goto :goto_0

    .line 183
    .end local v0    # "_result":Landroid/content/pm/ParceledListSlice;
    .end local v16    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":Ljava/lang/String;
    .end local v18    # "_arg2":J
    .end local v20    # "_arg3":Ljava/lang/String;
    .end local v21    # "_arg4":Ljava/util/List;
    .end local v22    # "_arg5":Landroid/content/ComponentName;
    .end local v23    # "_arg6":I
    .end local v24    # "_arg7":Landroid/os/UserHandle;
    .end local v25    # "cl":Ljava/lang/ClassLoader;
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 185
    invoke-virtual {v10, v0}, Lcom/samsung/android/app/ISemExecuteManager$Stub;->hasShortcutHostPermission(Ljava/lang/String;)Z

    move-result v1

    .line 186
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 188
    goto :goto_0

    .line 165
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 167
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 169
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 171
    .local v8, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 173
    .local v9, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 174
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 175
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/ISemExecuteManager$Stub;->getShortcutIconFd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 176
    .local v0, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    invoke-virtual {v13, v0, v15}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 178
    goto :goto_0

    .line 155
    .end local v0    # "_result":Landroid/os/ParcelFileDescriptor;
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":Ljava/lang/String;
    .end local v9    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":I
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 157
    invoke-virtual {v10, v0}, Lcom/samsung/android/app/ISemExecuteManager$Stub;->getExecutableInfo(Ljava/lang/String;)Lcom/samsung/android/app/SemExecutableInfo;

    move-result-object v1

    .line 158
    .local v1, "_result":Lcom/samsung/android/app/SemExecutableInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    invoke-virtual {v13, v1, v15}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 160
    goto :goto_0

    .line 147
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Lcom/samsung/android/app/SemExecutableInfo;
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/ISemExecuteManager$Stub;->getExecutableInfos()Ljava/util/List;

    move-result-object v0

    .line 148
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/SemExecutableInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 150
    nop

    .line 284
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/SemExecutableInfo;>;"
    :goto_0
    return v15

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
