.class public abstract Lcom/samsung/android/multicontrol/IMultiControlManager$Stub;
.super Landroid/os/Binder;
.source "IMultiControlManager.java"

# interfaces
.implements Lcom/samsung/android/multicontrol/IMultiControlManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/multicontrol/IMultiControlManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/multicontrol/IMultiControlManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_forceHideCursor:I = 0x6

.field static final blacklist TRANSACTION_getProtocolVersion:I = 0x2

.field static final blacklist TRANSACTION_isAllowed:I = 0x1

.field static final blacklist TRANSACTION_resetInputFilter:I = 0x5

.field static final blacklist TRANSACTION_setCursorPosition:I = 0xb

.field static final blacklist TRANSACTION_setInputFilter:I = 0x4

.field static final blacklist TRANSACTION_setInteractive:I = 0x7

.field static final blacklist TRANSACTION_setMultiControlOutOfFocus:I = 0x8

.field static final blacklist TRANSACTION_setProtocolVersion:I = 0x3

.field static final blacklist TRANSACTION_startDeathChecker:I = 0x9

.field static final blacklist TRANSACTION_stopDeathChecker:I = 0xa


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 57
    const-string v0, "com.samsung.android.multicontrol.IMultiControlManager"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/multicontrol/IMultiControlManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multicontrol/IMultiControlManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 65
    if-nez p0, :cond_0

    .line 66
    const/4 v0, 0x0

    return-object v0

    .line 68
    :cond_0
    const-string v0, "com.samsung.android.multicontrol.IMultiControlManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 69
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/multicontrol/IMultiControlManager;

    if-eqz v1, :cond_1

    .line 70
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/multicontrol/IMultiControlManager;

    return-object v1

    .line 72
    :cond_1
    new-instance v1, Lcom/samsung/android/multicontrol/IMultiControlManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/multicontrol/IMultiControlManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 81
    packed-switch p0, :pswitch_data_0

    .line 129
    const/4 v0, 0x0

    return-object v0

    .line 125
    :pswitch_0
    const-string/jumbo v0, "setCursorPosition"

    return-object v0

    .line 121
    :pswitch_1
    const-string/jumbo v0, "stopDeathChecker"

    return-object v0

    .line 117
    :pswitch_2
    const-string/jumbo v0, "startDeathChecker"

    return-object v0

    .line 113
    :pswitch_3
    const-string/jumbo v0, "setMultiControlOutOfFocus"

    return-object v0

    .line 109
    :pswitch_4
    const-string/jumbo v0, "setInteractive"

    return-object v0

    .line 105
    :pswitch_5
    const-string v0, "forceHideCursor"

    return-object v0

    .line 101
    :pswitch_6
    const-string/jumbo v0, "resetInputFilter"

    return-object v0

    .line 97
    :pswitch_7
    const-string/jumbo v0, "setInputFilter"

    return-object v0

    .line 93
    :pswitch_8
    const-string/jumbo v0, "setProtocolVersion"

    return-object v0

    .line 89
    :pswitch_9
    const-string v0, "getProtocolVersion"

    return-object v0

    .line 85
    :pswitch_a
    const-string v0, "isAllowed"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 76
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 456
    const/16 v0, 0xa

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 136
    invoke-static {p1}, Lcom/samsung/android/multicontrol/IMultiControlManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
    const-string v0, "com.samsung.android.multicontrol.IMultiControlManager"

    .line 141
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 142
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 152
    packed-switch p1, :pswitch_data_1

    .line 251
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 148
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    return v1

    .line 239
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 241
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 243
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 244
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 245
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/multicontrol/IMultiControlManager$Stub;->setCursorPosition(III)V

    .line 246
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    goto/16 :goto_0

    .line 232
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/multicontrol/IMultiControlManager$Stub;->stopDeathChecker()V

    .line 233
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    goto/16 :goto_0

    .line 224
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/multicontrol/IMultiControlDeathChecker$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multicontrol/IMultiControlDeathChecker;

    move-result-object v2

    .line 225
    .local v2, "_arg0":Lcom/samsung/android/multicontrol/IMultiControlDeathChecker;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 226
    invoke-virtual {p0, v2}, Lcom/samsung/android/multicontrol/IMultiControlManager$Stub;->startDeathChecker(Lcom/samsung/android/multicontrol/IMultiControlDeathChecker;)V

    .line 227
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    goto/16 :goto_0

    .line 215
    .end local v2    # "_arg0":Lcom/samsung/android/multicontrol/IMultiControlDeathChecker;
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 216
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 217
    invoke-virtual {p0, v2}, Lcom/samsung/android/multicontrol/IMultiControlManager$Stub;->setMultiControlOutOfFocus(Z)V

    .line 218
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    goto :goto_0

    .line 206
    .end local v2    # "_arg0":Z
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 207
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 208
    invoke-virtual {p0, v2}, Lcom/samsung/android/multicontrol/IMultiControlManager$Stub;->setInteractive(Z)V

    .line 209
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    goto :goto_0

    .line 197
    .end local v2    # "_arg0":Z
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 198
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 199
    invoke-virtual {p0, v2}, Lcom/samsung/android/multicontrol/IMultiControlManager$Stub;->forceHideCursor(Z)V

    .line 200
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    goto :goto_0

    .line 190
    .end local v2    # "_arg0":Z
    :pswitch_7
    invoke-virtual {p0}, Lcom/samsung/android/multicontrol/IMultiControlManager$Stub;->resetInputFilter()V

    .line 191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    goto :goto_0

    .line 180
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IInputFilter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IInputFilter;

    move-result-object v2

    .line 182
    .local v2, "_arg0":Landroid/view/IInputFilter;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/multicontrol/IInputFilterInstallListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multicontrol/IInputFilterInstallListener;

    move-result-object v3

    .line 183
    .local v3, "_arg1":Lcom/samsung/android/multicontrol/IInputFilterInstallListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 184
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/multicontrol/IMultiControlManager$Stub;->setInputFilter(Landroid/view/IInputFilter;Lcom/samsung/android/multicontrol/IInputFilterInstallListener;)V

    .line 185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    goto :goto_0

    .line 171
    .end local v2    # "_arg0":Landroid/view/IInputFilter;
    .end local v3    # "_arg1":Lcom/samsung/android/multicontrol/IInputFilterInstallListener;
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 172
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 173
    invoke-virtual {p0, v2}, Lcom/samsung/android/multicontrol/IMultiControlManager$Stub;->setProtocolVersion(I)V

    .line 174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    goto :goto_0

    .line 163
    .end local v2    # "_arg0":I
    :pswitch_a
    invoke-virtual {p0}, Lcom/samsung/android/multicontrol/IMultiControlManager$Stub;->getProtocolVersion()I

    move-result v2

    .line 164
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    goto :goto_0

    .line 156
    .end local v2    # "_result":I
    :pswitch_b
    invoke-virtual {p0}, Lcom/samsung/android/multicontrol/IMultiControlManager$Stub;->isAllowed()Z

    move-result v2

    .line 157
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 159
    nop

    .line 254
    .end local v2    # "_result":Z
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
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
    .end packed-switch
.end method
