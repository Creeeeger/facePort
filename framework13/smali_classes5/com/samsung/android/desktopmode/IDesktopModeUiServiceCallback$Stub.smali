.class public abstract Lcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback$Stub;
.super Landroid/os/Binder;
.source "IDesktopModeUiServiceCallback.java"

# interfaces
.implements Lcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onAnimationComplete:I = 0x5

.field static final blacklist TRANSACTION_onClickButtonNegative:I = 0x2

.field static final blacklist TRANSACTION_onClickButtonPositive:I = 0x1

.field static final blacklist TRANSACTION_onDismiss:I = 0x4

.field static final blacklist TRANSACTION_onShow:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 37
    const-string v0, "com.samsung.android.desktopmode.IDesktopModeUiServiceCallback"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 45
    if-nez p0, :cond_0

    .line 46
    const/4 v0, 0x0

    return-object v0

    .line 48
    :cond_0
    const-string v0, "com.samsung.android.desktopmode.IDesktopModeUiServiceCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 49
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback;

    if-eqz v1, :cond_1

    .line 50
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback;

    return-object v1

    .line 52
    :cond_1
    new-instance v1, Lcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 61
    packed-switch p0, :pswitch_data_0

    .line 85
    const/4 v0, 0x0

    return-object v0

    .line 81
    :pswitch_0
    const-string v0, "onAnimationComplete"

    return-object v0

    .line 77
    :pswitch_1
    const-string v0, "onDismiss"

    return-object v0

    .line 73
    :pswitch_2
    const-string v0, "onShow"

    return-object v0

    .line 69
    :pswitch_3
    const-string v0, "onClickButtonNegative"

    return-object v0

    .line 65
    :pswitch_4
    const-string v0, "onClickButtonPositive"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 56
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 221
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 92
    invoke-static {p1}, Lcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 96
    const-string v0, "com.samsung.android.desktopmode.IDesktopModeUiServiceCallback"

    .line 97
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 98
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 108
    packed-switch p1, :pswitch_data_1

    .line 137
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 104
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    return v1

    .line 132
    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback$Stub;->onAnimationComplete()V

    .line 133
    goto :goto_0

    .line 127
    :pswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback$Stub;->onDismiss()V

    .line 128
    goto :goto_0

    .line 122
    :pswitch_3
    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback$Stub;->onShow()V

    .line 123
    goto :goto_0

    .line 117
    :pswitch_4
    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback$Stub;->onClickButtonNegative()V

    .line 118
    goto :goto_0

    .line 112
    :pswitch_5
    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback$Stub;->onClickButtonPositive()V

    .line 113
    nop

    .line 140
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
