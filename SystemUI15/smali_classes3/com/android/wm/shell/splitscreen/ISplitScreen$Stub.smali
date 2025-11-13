.class public abstract Lcom/android/wm/shell/splitscreen/ISplitScreen$Stub;
.super Landroid/os/Binder;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/IInterface;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.wm.shell.splitscreen.ISplitScreen"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 27

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-string v6, "com.android.wm.shell.splitscreen.ISplitScreen"

    const/4 v7, 0x1

    if-lt v0, v7, :cond_0

    const v8, 0xffffff

    if-gt v0, v8, :cond_0

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v8, 0x5f4e5446

    if-ne v0, v8, :cond_1

    invoke-virtual {v2, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v7

    :cond_1
    const-string v6, "com.android.wm.shell.splitscreen.ISplitScreenListener"

    const/4 v8, 0x0

    if-eq v0, v4, :cond_b

    if-eq v0, v3, :cond_8

    const-string v3, "com.android.wm.shell.splitscreen.ISplitSelectListener"

    const-string/jumbo v6, "startTasks"

    const-string/jumbo v9, "startSplitTasks"

    const/4 v10, -0x1

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;

    new-array v1, v7, [Z

    aput-boolean v5, v1, v5

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    new-instance v3, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda23;

    const/4 v13, 0x0

    move-object v8, v3

    move-object v10, v1

    invoke-direct/range {v8 .. v13}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda23;-><init>(ILjava/lang/Object;III)V

    const-string v4, "canShowAddAppPairDialogForRecent"

    invoke-static {v0, v4, v3, v7}, Lcom/android/wm/shell/common/ExternalInterfaceBinder;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    aget-boolean v0, v1, v5

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_4

    :pswitch_1
    move-object/from16 v0, p0

    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    new-instance v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda15;

    invoke-direct {v1, v7}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda15;-><init>(I)V

    const-string v2, "dismissAddToAppPairDialogForRecent"

    invoke-static {v0, v2, v1, v5}, Lcom/android/wm/shell/common/ExternalInterfaceBinder;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    goto/16 :goto_4

    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v1, p0

    check-cast v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;

    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    new-instance v4, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;

    invoke-direct {v4, v0, v2, v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;-><init>(III)V

    const-string/jumbo v0, "showAddAppPairDialogForRecent"

    invoke-static {v1, v0, v4, v5}, Lcom/android/wm/shell/common/ExternalInterfaceBinder;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    goto/16 :goto_4

    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v21

    sget-object v0, Landroid/window/RemoteTransition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Landroid/window/RemoteTransition;

    sget-object v0, Lcom/android/internal/logging/InstanceId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/internal/logging/InstanceId;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    new-instance v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda25;

    move-object v8, v1

    invoke-direct/range {v8 .. v21}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda25;-><init>(ILandroid/os/Bundle;ILandroid/os/Bundle;ILandroid/os/Bundle;IFIFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;I)V

    const-string/jumbo v2, "startMultiSplitTasks"

    invoke-static {v0, v2, v1, v5}, Lcom/android/wm/shell/common/ExternalInterfaceBinder;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    goto/16 :goto_4

    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    sget-object v11, Landroid/window/RemoteTransition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v18, v11

    check-cast v18, Landroid/window/RemoteTransition;

    sget-object v11, Lcom/android/internal/logging/InstanceId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v19, v11

    check-cast v19, Lcom/android/internal/logging/InstanceId;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v11, p0

    check-cast v11, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;

    if-ne v4, v10, :cond_2

    new-instance v20, Lcom/android/wm/shell/splitscreen/SplitScreenController$CallerInfo;

    invoke-direct/range {v20 .. v20}, Lcom/android/wm/shell/splitscreen/SplitScreenController$CallerInfo;-><init>()V

    iget-object v1, v11, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    new-instance v15, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda16;

    move-object v10, v15

    move v12, v0

    move-object v13, v3

    move v14, v4

    move-object v0, v15

    move-object v15, v2

    move/from16 v16, v6

    move/from16 v17, v8

    invoke-direct/range {v10 .. v20}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda16;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;Lcom/android/wm/shell/splitscreen/SplitScreenController$CallerInfo;)V

    invoke-static {v1, v9, v0, v5}, Lcom/android/wm/shell/common/ExternalInterfaceBinder;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    goto/16 :goto_4

    :cond_2
    iget-object v1, v11, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    new-instance v15, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda17;

    move-object v10, v15

    move v11, v0

    move-object v12, v3

    move v13, v4

    move-object v14, v2

    move-object v0, v15

    move v15, v6

    move/from16 v16, v8

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    invoke-direct/range {v10 .. v18}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda17;-><init>(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V

    invoke-static {v1, v9, v0, v5}, Lcom/android/wm/shell/common/ExternalInterfaceBinder;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    goto/16 :goto_4

    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v1, p0

    check-cast v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;

    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    new-instance v2, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda14;

    invoke-direct {v2, v0, v7}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda14;-><init>(II)V

    const-string/jumbo v0, "startSplitByTwoTouchSwipeIfPossible"

    invoke-static {v1, v0, v2, v5}, Lcom/android/wm/shell/common/ExternalInterfaceBinder;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    goto/16 :goto_4

    :pswitch_6
    move-object/from16 v0, p0

    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    new-instance v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda15;

    invoke-direct {v1, v5}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda15;-><init>(I)V

    const-string/jumbo v2, "switchSplitPosition"

    invoke-static {v0, v2, v1, v5}, Lcom/android/wm/shell/common/ExternalInterfaceBinder;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    goto/16 :goto_4

    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {v0, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    if-eqz v2, :cond_4

    instance-of v3, v2, Lcom/android/wm/shell/splitscreen/ISplitSelectListener$Stub$Proxy;

    if-eqz v3, :cond_4

    check-cast v2, Lcom/android/wm/shell/splitscreen/ISplitSelectListener$Stub$Proxy;

    goto :goto_0

    :cond_4
    new-instance v2, Lcom/android/wm/shell/splitscreen/ISplitSelectListener$Stub$Proxy;

    invoke-direct {v2, v0}, Lcom/android/wm/shell/splitscreen/ISplitSelectListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    new-instance v2, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda4;

    const/4 v3, 0x4

    invoke-direct {v2, v0, v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;I)V

    const-string/jumbo v0, "unregisterSplitSelectListener"

    invoke-static {v1, v0, v2, v5}, Lcom/android/wm/shell/common/ExternalInterfaceBinder;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    goto/16 :goto_4

    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    invoke-interface {v0, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    if-eqz v2, :cond_6

    instance-of v3, v2, Lcom/android/wm/shell/splitscreen/ISplitSelectListener$Stub$Proxy;

    if-eqz v3, :cond_6

    move-object v8, v2

    check-cast v8, Lcom/android/wm/shell/splitscreen/ISplitSelectListener$Stub$Proxy;

    goto :goto_1

    :cond_6
    new-instance v8, Lcom/android/wm/shell/splitscreen/ISplitSelectListener$Stub$Proxy;

    invoke-direct {v8, v0}, Lcom/android/wm/shell/splitscreen/ISplitSelectListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    new-instance v2, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, v8}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;Lcom/android/wm/shell/splitscreen/ISplitSelectListener$Stub$Proxy;)V

    const-string/jumbo v0, "registerSplitSelectListener"

    invoke-static {v1, v0, v2, v5}, Lcom/android/wm/shell/common/ExternalInterfaceBinder;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    goto/16 :goto_4

    :pswitch_9
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/app/PendingIntent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    sget-object v2, Landroid/content/pm/ShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Landroid/content/pm/ShortcutInfo;

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/app/PendingIntent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    sget-object v0, Landroid/window/RemoteTransition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Landroid/window/RemoteTransition;

    sget-object v0, Lcom/android/internal/logging/InstanceId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/internal/logging/InstanceId;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    new-instance v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda22;

    move-object v8, v1

    invoke-direct/range {v8 .. v20}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda22;-><init>(Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IILandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V

    const-string/jumbo v2, "startIntents"

    invoke-static {v0, v2, v1, v5}, Lcom/android/wm/shell/common/ExternalInterfaceBinder;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    goto/16 :goto_4

    :pswitch_a
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/app/PendingIntent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    sget-object v2, Landroid/content/pm/ShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Landroid/content/pm/ShortcutInfo;

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/app/PendingIntent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    sget-object v0, Landroid/view/RemoteAnimationAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Landroid/view/RemoteAnimationAdapter;

    sget-object v0, Lcom/android/internal/logging/InstanceId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/internal/logging/InstanceId;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    new-instance v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda22;

    move-object v8, v1

    invoke-direct/range {v8 .. v20}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda22;-><init>(Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IILandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V

    const-string/jumbo v2, "startIntentsWithLegacyTransition"

    invoke-static {v0, v2, v1, v5}, Lcom/android/wm/shell/common/ExternalInterfaceBinder;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    goto/16 :goto_4

    :pswitch_b
    sget-object v0, Landroid/content/pm/ShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/content/pm/ShortcutInfo;

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    sget-object v0, Landroid/window/RemoteTransition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/window/RemoteTransition;

    sget-object v0, Lcom/android/internal/logging/InstanceId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/internal/logging/InstanceId;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    new-instance v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda8;

    move-object v8, v1

    invoke-direct/range {v8 .. v16}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda8;-><init>(Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;ILandroid/os/Bundle;IILandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V

    const-string/jumbo v2, "startShortcutAndTask"

    invoke-static {v0, v2, v1, v5}, Lcom/android/wm/shell/common/ExternalInterfaceBinder;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    goto/16 :goto_4

    :pswitch_c
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/app/PendingIntent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    sget-object v0, Landroid/window/RemoteTransition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/window/RemoteTransition;

    sget-object v0, Lcom/android/internal/logging/InstanceId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/internal/logging/InstanceId;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    new-instance v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda28;

    move-object v8, v1

    invoke-direct/range {v8 .. v17}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda28;-><init>(Landroid/app/PendingIntent;ILandroid/os/Bundle;ILandroid/os/Bundle;IILandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V

    const-string/jumbo v2, "startIntentAndTask"

    invoke-static {v0, v2, v1, v5}, Lcom/android/wm/shell/common/ExternalInterfaceBinder;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    goto/16 :goto_4

    :pswitch_d
    sget-object v0, Landroid/content/pm/ShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/content/pm/ShortcutInfo;

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    sget-object v0, Landroid/view/RemoteAnimationAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/view/RemoteAnimationAdapter;

    sget-object v0, Lcom/android/internal/logging/InstanceId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/internal/logging/InstanceId;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    new-instance v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda8;

    move-object v8, v1

    invoke-direct/range {v8 .. v16}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda8;-><init>(Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;ILandroid/os/Bundle;IILandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V

    const-string/jumbo v2, "startShortcutAndTaskWithLegacyTransition"

    invoke-static {v0, v2, v1, v5}, Lcom/android/wm/shell/common/ExternalInterfaceBinder;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    goto/16 :goto_4

    :pswitch_e
    sget-object v0, Landroid/view/RemoteAnimationTarget;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/RemoteAnimationTarget;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v1, p0

    check-cast v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;

    new-array v3, v7, [[Landroid/view/RemoteAnimationTarget;

    aput-object v8, v3, v5

    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    new-instance v4, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda9;

    invoke-direct {v4, v3, v0, v7}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda9;-><init>([[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;I)V

    const-string v0, "onStartingSplitLegacy"

    invoke-static {v1, v0, v4, v7}, Lcom/android/wm/shell/common/ExternalInterfaceBinder;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    aget-object v0, v3, v5

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v2, v0, v7}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_4

    :pswitch_f
    sget-object v0, Landroid/view/RemoteAnimationTarget;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/RemoteAnimationTarget;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v1, p0

    check-cast v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;

    new-array v3, v7, [[Landroid/view/RemoteAnimationTarget;

    aput-object v8, v3, v5

    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    new-instance v4, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda9;

    invoke-direct {v4, v3, v0, v5}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda9;-><init>([[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;I)V

    const-string v0, "onGoingToRecentsLegacy"

    invoke-static {v1, v0, v4, v7}, Lcom/android/wm/shell/common/ExternalInterfaceBinder;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    aget-object v0, v3, v5

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v2, v0, v7}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_4

    :pswitch_10
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/app/PendingIntent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    sget-object v0, Landroid/view/RemoteAnimationAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/view/RemoteAnimationAdapter;

    sget-object v0, Lcom/android/internal/logging/InstanceId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/internal/logging/InstanceId;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    new-instance v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda28;

    move-object v8, v1

    invoke-direct/range {v8 .. v17}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda28;-><init>(Landroid/app/PendingIntent;ILandroid/os/Bundle;ILandroid/os/Bundle;IILandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V

    const-string/jumbo v2, "startIntentAndTaskWithLegacyTransition"

    invoke-static {v0, v2, v1, v5}, Lcom/android/wm/shell/common/ExternalInterfaceBinder;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    goto/16 :goto_4

    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    sget-object v0, Landroid/view/RemoteAnimationAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/view/RemoteAnimationAdapter;

    sget-object v0, Lcom/android/internal/logging/InstanceId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/internal/logging/InstanceId;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    new-instance v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda11;

    move-object v8, v1

    invoke-direct/range {v8 .. v16}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda11;-><init>(ILandroid/os/Bundle;ILandroid/os/Bundle;IILandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V

    invoke-static {v0, v6, v1, v5}, Lcom/android/wm/shell/common/ExternalInterfaceBinder;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    goto/16 :goto_4

    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    sget-object v11, Landroid/window/RemoteTransition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v24, v11

    check-cast v24, Landroid/window/RemoteTransition;

    sget-object v11, Lcom/android/internal/logging/InstanceId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v25, v11

    check-cast v25, Lcom/android/internal/logging/InstanceId;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v1, p0

    check-cast v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;

    if-ne v4, v10, :cond_7

    new-instance v26, Lcom/android/wm/shell/splitscreen/SplitScreenController$CallerInfo;

    invoke-direct/range {v26 .. v26}, Lcom/android/wm/shell/splitscreen/SplitScreenController$CallerInfo;-><init>()V

    iget-object v6, v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    new-instance v10, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda10;

    move-object/from16 v17, v10

    move-object/from16 v18, v1

    move/from16 v19, v0

    move-object/from16 v20, v3

    move/from16 v21, v4

    move-object/from16 v22, v2

    move/from16 v23, v8

    invoke-direct/range {v17 .. v26}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda10;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;ILandroid/os/Bundle;ILandroid/os/Bundle;ILandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;Lcom/android/wm/shell/splitscreen/SplitScreenController$CallerInfo;)V

    invoke-static {v6, v9, v10, v5}, Lcom/android/wm/shell/common/ExternalInterfaceBinder;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    goto/16 :goto_4

    :cond_7
    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    new-instance v9, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda11;

    move-object/from16 v17, v9

    move/from16 v18, v0

    move-object/from16 v19, v3

    move/from16 v20, v4

    move-object/from16 v21, v2

    move/from16 v22, v8

    invoke-direct/range {v17 .. v25}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda11;-><init>(ILandroid/os/Bundle;ILandroid/os/Bundle;IILandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V

    invoke-static {v1, v6, v9, v5}, Lcom/android/wm/shell/common/ExternalInterfaceBinder;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    goto/16 :goto_4

    :pswitch_13
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/app/PendingIntent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/content/Intent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/os/Bundle;

    sget-object v0, Lcom/android/internal/logging/InstanceId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/android/internal/logging/InstanceId;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    new-instance v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda2;

    move-object v8, v1

    invoke-direct/range {v8 .. v14}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda2;-><init>(Landroid/app/PendingIntent;ILandroid/content/Intent;ILandroid/os/Bundle;Lcom/android/internal/logging/InstanceId;)V

    const-string/jumbo v2, "startIntent"

    invoke-static {v0, v2, v1, v5}, Lcom/android/wm/shell/common/ExternalInterfaceBinder;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    goto/16 :goto_4

    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/os/Bundle;

    sget-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/os/UserHandle;

    sget-object v0, Lcom/android/internal/logging/InstanceId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/android/internal/logging/InstanceId;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    new-instance v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda31;

    move-object v8, v1

    invoke-direct/range {v8 .. v14}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda31;-><init>(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/UserHandle;Lcom/android/internal/logging/InstanceId;)V

    const-string/jumbo v2, "startShortcut"

    invoke-static {v0, v2, v1, v5}, Lcom/android/wm/shell/common/ExternalInterfaceBinder;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    goto/16 :goto_4

    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v1, p0

    check-cast v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;

    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    new-instance v4, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda27;

    invoke-direct {v4, v0, v2, v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda27;-><init>(IILandroid/os/Bundle;)V

    const-string/jumbo v0, "startTask"

    invoke-static {v1, v0, v4, v5}, Lcom/android/wm/shell/common/ExternalInterfaceBinder;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    goto/16 :goto_4

    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v1, p0

    check-cast v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;

    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    new-instance v2, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda11;

    invoke-direct {v2, v0, v7}, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda11;-><init>(ZI)V

    const-string v0, "exitSplitScreenOnHide"

    invoke-static {v1, v0, v2, v5}, Lcom/android/wm/shell/common/ExternalInterfaceBinder;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    goto/16 :goto_4

    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v1, p0

    check-cast v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;

    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    new-instance v2, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda14;

    invoke-direct {v2, v0, v5}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda14;-><init>(II)V

    const-string v0, "exitSplitScreen"

    invoke-static {v1, v0, v2, v5}, Lcom/android/wm/shell/common/ExternalInterfaceBinder;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    goto/16 :goto_4

    :pswitch_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v1, p0

    check-cast v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;

    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    new-instance v2, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda14;

    invoke-direct {v2, v0, v4}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda14;-><init>(II)V

    const-string/jumbo v0, "removeFromSideStage"

    invoke-static {v1, v0, v2, v5}, Lcom/android/wm/shell/common/ExternalInterfaceBinder;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    goto :goto_4

    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_2

    :cond_9
    invoke-interface {v0, v6}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    if-eqz v2, :cond_a

    instance-of v4, v2, Lcom/android/wm/shell/splitscreen/ISplitScreenListener$Stub$Proxy;

    if-eqz v4, :cond_a

    check-cast v2, Lcom/android/wm/shell/splitscreen/ISplitScreenListener$Stub$Proxy;

    goto :goto_2

    :cond_a
    new-instance v2, Lcom/android/wm/shell/splitscreen/ISplitScreenListener$Stub$Proxy;

    invoke-direct {v2, v0}, Lcom/android/wm/shell/splitscreen/ISplitScreenListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    new-instance v2, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0, v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;I)V

    const-string/jumbo v0, "unregisterSplitScreenListener"

    invoke-static {v1, v0, v2, v5}, Lcom/android/wm/shell/common/ExternalInterfaceBinder;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    goto :goto_4

    :cond_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_3

    :cond_c
    invoke-interface {v0, v6}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    if-eqz v2, :cond_d

    instance-of v3, v2, Lcom/android/wm/shell/splitscreen/ISplitScreenListener$Stub$Proxy;

    if-eqz v3, :cond_d

    move-object v8, v2

    check-cast v8, Lcom/android/wm/shell/splitscreen/ISplitScreenListener$Stub$Proxy;

    goto :goto_3

    :cond_d
    new-instance v8, Lcom/android/wm/shell/splitscreen/ISplitScreenListener$Stub$Proxy;

    invoke-direct {v8, v0}, Lcom/android/wm/shell/splitscreen/ISplitScreenListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    new-instance v2, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, v8}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;Lcom/android/wm/shell/splitscreen/ISplitScreenListener$Stub$Proxy;)V

    const-string/jumbo v0, "registerSplitScreenListener"

    invoke-static {v1, v0, v2, v5}, Lcom/android/wm/shell/common/ExternalInterfaceBinder;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    :goto_4
    return v7

    :pswitch_data_0
    .packed-switch 0x5
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
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x66
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
