.class public abstract Landroid/view/accessibility/IMagnificationConnection$Stub;
.super Landroid/os/Binder;
.source "IMagnificationConnection.java"

# interfaces
.implements Landroid/view/accessibility/IMagnificationConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/IMagnificationConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/IMagnificationConnection$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_disableWindowMagnification:I = 0x3

.field static final blacklist TRANSACTION_enableWindowMagnification:I = 0x1

.field static final blacklist TRANSACTION_moveWindowMagnifier:I = 0x4

.field static final blacklist TRANSACTION_moveWindowMagnifierToPosition:I = 0x6

.field static final blacklist TRANSACTION_onFullscreenMagnificationActivationChanged:I = 0xc

.field static final blacklist TRANSACTION_onUserMagnificationScaleChanged:I = 0xb

.field static final blacklist TRANSACTION_removeMagnificationButton:I = 0x8

.field static final blacklist TRANSACTION_removeMagnificationSettingsPanel:I = 0x9

.field static final blacklist TRANSACTION_secSetCursorVisible:I = 0x5

.field static final blacklist TRANSACTION_setConnectionCallback:I = 0xa

.field static final blacklist TRANSACTION_setScaleForWindowMagnification:I = 0x2

.field static final blacklist TRANSACTION_showMagnificationButton:I = 0x7


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.view.accessibility.IMagnificationConnection"

    invoke-virtual {p0, p0, v0}, Landroid/view/accessibility/IMagnificationConnection$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IMagnificationConnection;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.view.accessibility.IMagnificationConnection"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/accessibility/IMagnificationConnection;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/IMagnificationConnection;

    return-object v1

    :cond_1
    new-instance v1, Landroid/view/accessibility/IMagnificationConnection$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/accessibility/IMagnificationConnection$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "onFullscreenMagnificationActivationChanged"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "onUserMagnificationScaleChanged"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "setConnectionCallback"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "removeMagnificationSettingsPanel"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "removeMagnificationButton"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "showMagnificationButton"

    return-object v0

    :pswitch_6
    const-string/jumbo v0, "moveWindowMagnifierToPosition"

    return-object v0

    :pswitch_7
    const-string/jumbo v0, "secSetCursorVisible"

    return-object v0

    :pswitch_8
    const-string/jumbo v0, "moveWindowMagnifier"

    return-object v0

    :pswitch_9
    const-string v0, "disableWindowMagnification"

    return-object v0

    :pswitch_a
    const-string/jumbo v0, "setScaleForWindowMagnification"

    return-object v0

    :pswitch_b
    const-string v0, "enableWindowMagnification"

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

    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    const/16 v0, 0xb

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/view/accessibility/IMagnificationConnection$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v8, p0

    move/from16 v9, p1

    const-string v10, "android.view.accessibility.IMagnificationConnection"

    const/4 v11, 0x1

    if-lt v9, v11, :cond_0

    const v0, 0xffffff

    if-gt v9, v0, :cond_0

    move-object/from16 v12, p2

    invoke-virtual {v12, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object/from16 v12, p2

    :goto_0
    const v0, 0x5f4e5446

    if-ne v9, v0, :cond_1

    move-object/from16 v13, p3

    invoke-virtual {v13, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    :cond_1
    move-object/from16 v13, p3

    packed-switch v9, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0, v1}, Landroid/view/accessibility/IMagnificationConnection$Stub;->onFullscreenMagnificationActivationChanged(IZ)V

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0, v1, v2}, Landroid/view/accessibility/IMagnificationConnection$Stub;->onUserMagnificationScaleChanged(IIF)V

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/IMagnificationConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IMagnificationConnectionCallback;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0}, Landroid/view/accessibility/IMagnificationConnection$Stub;->setConnectionCallback(Landroid/view/accessibility/IMagnificationConnectionCallback;)V

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0}, Landroid/view/accessibility/IMagnificationConnection$Stub;->removeMagnificationSettingsPanel(I)V

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0}, Landroid/view/accessibility/IMagnificationConnection$Stub;->removeMagnificationButton(I)V

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0, v1}, Landroid/view/accessibility/IMagnificationConnection$Stub;->showMagnificationButton(II)V

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/accessibility/IRemoteMagnificationAnimationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IRemoteMagnificationAnimationCallback;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/view/accessibility/IMagnificationConnection$Stub;->moveWindowMagnifierToPosition(IFFLandroid/view/accessibility/IRemoteMagnificationAnimationCallback;)V

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0, v1}, Landroid/view/accessibility/IMagnificationConnection$Stub;->secSetCursorVisible(IZ)V

    goto :goto_1

    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0, v1, v2}, Landroid/view/accessibility/IMagnificationConnection$Stub;->moveWindowMagnifier(IFF)V

    goto :goto_1

    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/accessibility/IRemoteMagnificationAnimationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IRemoteMagnificationAnimationCallback;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0, v1}, Landroid/view/accessibility/IMagnificationConnection$Stub;->disableWindowMagnification(ILandroid/view/accessibility/IRemoteMagnificationAnimationCallback;)V

    goto :goto_1

    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0, v1}, Landroid/view/accessibility/IMagnificationConnection$Stub;->setScaleForWindowMagnification(IF)V

    goto :goto_1

    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/IRemoteMagnificationAnimationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IRemoteMagnificationAnimationCallback;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    move-object/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/view/accessibility/IMagnificationConnection$Stub;->enableWindowMagnification(IFFFFFLandroid/view/accessibility/IRemoteMagnificationAnimationCallback;)V

    nop

    :goto_1
    return v11

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
