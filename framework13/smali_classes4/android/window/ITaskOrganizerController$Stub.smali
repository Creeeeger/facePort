.class public abstract Landroid/window/ITaskOrganizerController$Stub;
.super Landroid/os/Binder;
.source "ITaskOrganizerController.java"

# interfaces
.implements Landroid/window/ITaskOrganizerController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/ITaskOrganizerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/ITaskOrganizerController$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_createRootTask:I = 0x3

.field static final blacklist TRANSACTION_createStageRootTask:I = 0x4

.field static final blacklist TRANSACTION_deleteRootTask:I = 0x5

.field static final blacklist TRANSACTION_getChildTasks:I = 0x6

.field static final blacklist TRANSACTION_getImeTarget:I = 0x8

.field static final blacklist TRANSACTION_getRootTasks:I = 0x7

.field static final blacklist TRANSACTION_registerTaskOrganizer:I = 0x1

.field static final blacklist TRANSACTION_restartTaskTopActivityProcessIfVisible:I = 0xa

.field static final blacklist TRANSACTION_setInterceptBackPressedOnTaskRoot:I = 0x9

.field static final blacklist TRANSACTION_setIsIgnoreOrientationRequestDisabled:I = 0xc

.field static final blacklist TRANSACTION_unregisterTaskOrganizer:I = 0x2

.field static final blacklist TRANSACTION_updateCameraCompatControlState:I = 0xb


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 90
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 91
    const-string v0, "android.window.ITaskOrganizerController"

    invoke-virtual {p0, p0, v0}, Landroid/window/ITaskOrganizerController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/window/ITaskOrganizerController;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 99
    if-nez p0, :cond_0

    .line 100
    const/4 v0, 0x0

    return-object v0

    .line 102
    :cond_0
    const-string v0, "android.window.ITaskOrganizerController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 103
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/window/ITaskOrganizerController;

    if-eqz v1, :cond_1

    .line 104
    move-object v1, v0

    check-cast v1, Landroid/window/ITaskOrganizerController;

    return-object v1

    .line 106
    :cond_1
    new-instance v1, Landroid/window/ITaskOrganizerController$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/window/ITaskOrganizerController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 115
    packed-switch p0, :pswitch_data_0

    .line 167
    const/4 v0, 0x0

    return-object v0

    .line 163
    :pswitch_0
    const-string/jumbo v0, "setIsIgnoreOrientationRequestDisabled"

    return-object v0

    .line 159
    :pswitch_1
    const-string/jumbo v0, "updateCameraCompatControlState"

    return-object v0

    .line 155
    :pswitch_2
    const-string/jumbo v0, "restartTaskTopActivityProcessIfVisible"

    return-object v0

    .line 151
    :pswitch_3
    const-string/jumbo v0, "setInterceptBackPressedOnTaskRoot"

    return-object v0

    .line 147
    :pswitch_4
    const-string v0, "getImeTarget"

    return-object v0

    .line 143
    :pswitch_5
    const-string v0, "getRootTasks"

    return-object v0

    .line 139
    :pswitch_6
    const-string v0, "getChildTasks"

    return-object v0

    .line 135
    :pswitch_7
    const-string v0, "deleteRootTask"

    return-object v0

    .line 131
    :pswitch_8
    const-string v0, "createStageRootTask"

    return-object v0

    .line 127
    :pswitch_9
    const-string v0, "createRootTask"

    return-object v0

    .line 123
    :pswitch_a
    const-string/jumbo v0, "unregisterTaskOrganizer"

    return-object v0

    .line 119
    :pswitch_b
    const-string/jumbo v0, "registerTaskOrganizer"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 110
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 593
    const/16 v0, 0xb

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 174
    invoke-static {p1}, Landroid/window/ITaskOrganizerController$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 178
    const-string v0, "android.window.ITaskOrganizerController"

    .line 179
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 180
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 190
    packed-switch p1, :pswitch_data_1

    .line 325
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 186
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 187
    return v1

    .line 317
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 318
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 319
    invoke-virtual {p0, v2}, Landroid/window/ITaskOrganizerController$Stub;->setIsIgnoreOrientationRequestDisabled(Z)V

    .line 320
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    goto/16 :goto_0

    .line 306
    .end local v2    # "_arg0":Z
    :pswitch_2
    sget-object v2, Landroid/window/WindowContainerToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/WindowContainerToken;

    .line 308
    .local v2, "_arg0":Landroid/window/WindowContainerToken;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 309
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 310
    invoke-virtual {p0, v2, v3}, Landroid/window/ITaskOrganizerController$Stub;->updateCameraCompatControlState(Landroid/window/WindowContainerToken;I)V

    .line 311
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    goto/16 :goto_0

    .line 297
    .end local v2    # "_arg0":Landroid/window/WindowContainerToken;
    .end local v3    # "_arg1":I
    :pswitch_3
    sget-object v2, Landroid/window/WindowContainerToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/WindowContainerToken;

    .line 298
    .restart local v2    # "_arg0":Landroid/window/WindowContainerToken;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 299
    invoke-virtual {p0, v2}, Landroid/window/ITaskOrganizerController$Stub;->restartTaskTopActivityProcessIfVisible(Landroid/window/WindowContainerToken;)V

    .line 300
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    goto/16 :goto_0

    .line 286
    .end local v2    # "_arg0":Landroid/window/WindowContainerToken;
    :pswitch_4
    sget-object v2, Landroid/window/WindowContainerToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/WindowContainerToken;

    .line 288
    .restart local v2    # "_arg0":Landroid/window/WindowContainerToken;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 289
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 290
    invoke-virtual {p0, v2, v3}, Landroid/window/ITaskOrganizerController$Stub;->setInterceptBackPressedOnTaskRoot(Landroid/window/WindowContainerToken;Z)V

    .line 291
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    goto/16 :goto_0

    .line 276
    .end local v2    # "_arg0":Landroid/window/WindowContainerToken;
    .end local v3    # "_arg1":Z
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 277
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 278
    invoke-virtual {p0, v2}, Landroid/window/ITaskOrganizerController$Stub;->getImeTarget(I)Landroid/window/WindowContainerToken;

    move-result-object v3

    .line 279
    .local v3, "_result":Landroid/window/WindowContainerToken;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 281
    goto/16 :goto_0

    .line 264
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/window/WindowContainerToken;
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 266
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 267
    .local v3, "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 268
    invoke-virtual {p0, v2, v3}, Landroid/window/ITaskOrganizerController$Stub;->getRootTasks(I[I)Ljava/util/List;

    move-result-object v4

    .line 269
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 271
    goto/16 :goto_0

    .line 252
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[I
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :pswitch_7
    sget-object v2, Landroid/window/WindowContainerToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/WindowContainerToken;

    .line 254
    .local v2, "_arg0":Landroid/window/WindowContainerToken;
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 255
    .restart local v3    # "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 256
    invoke-virtual {p0, v2, v3}, Landroid/window/ITaskOrganizerController$Stub;->getChildTasks(Landroid/window/WindowContainerToken;[I)Ljava/util/List;

    move-result-object v4

    .line 257
    .restart local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 259
    goto :goto_0

    .line 242
    .end local v2    # "_arg0":Landroid/window/WindowContainerToken;
    .end local v3    # "_arg1":[I
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :pswitch_8
    sget-object v2, Landroid/window/WindowContainerToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/WindowContainerToken;

    .line 243
    .restart local v2    # "_arg0":Landroid/window/WindowContainerToken;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 244
    invoke-virtual {p0, v2}, Landroid/window/ITaskOrganizerController$Stub;->deleteRootTask(Landroid/window/WindowContainerToken;)Z

    move-result v3

    .line 245
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 247
    goto :goto_0

    .line 227
    .end local v2    # "_arg0":Landroid/window/WindowContainerToken;
    .end local v3    # "_result":Z
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 229
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 231
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 233
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 234
    .local v5, "_arg3":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 235
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/window/ITaskOrganizerController$Stub;->createStageRootTask(IIILandroid/os/IBinder;)V

    .line 236
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    goto :goto_0

    .line 214
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/os/IBinder;
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 216
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 218
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 219
    .local v4, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 220
    invoke-virtual {p0, v2, v3, v4}, Landroid/window/ITaskOrganizerController$Stub;->createRootTask(IILandroid/os/IBinder;)V

    .line 221
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    goto :goto_0

    .line 205
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/os/IBinder;
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/window/ITaskOrganizer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/ITaskOrganizer;

    move-result-object v2

    .line 206
    .local v2, "_arg0":Landroid/window/ITaskOrganizer;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 207
    invoke-virtual {p0, v2}, Landroid/window/ITaskOrganizerController$Stub;->unregisterTaskOrganizer(Landroid/window/ITaskOrganizer;)V

    .line 208
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    goto :goto_0

    .line 195
    .end local v2    # "_arg0":Landroid/window/ITaskOrganizer;
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/window/ITaskOrganizer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/ITaskOrganizer;

    move-result-object v2

    .line 196
    .restart local v2    # "_arg0":Landroid/window/ITaskOrganizer;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 197
    invoke-virtual {p0, v2}, Landroid/window/ITaskOrganizerController$Stub;->registerTaskOrganizer(Landroid/window/ITaskOrganizer;)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    .line 198
    .local v3, "_result":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/window/TaskAppearedInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 200
    nop

    .line 328
    .end local v2    # "_arg0":Landroid/window/ITaskOrganizer;
    .end local v3    # "_result":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/window/TaskAppearedInfo;>;"
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
