.class public abstract Lcom/samsung/android/localeoverlaymanager/ILocaleOverlayManager$Stub;
.super Landroid/os/Binder;
.source "ILocaleOverlayManager.java"

# interfaces
.implements Lcom/samsung/android/localeoverlaymanager/ILocaleOverlayManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/localeoverlaymanager/ILocaleOverlayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/localeoverlaymanager/ILocaleOverlayManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_applyLocales:I = 0x1

.field static final blacklist TRANSACTION_applyLocalesForPackage:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 39
    const-string v0, "com.samsung.android.localeoverlaymanager.ILocaleOverlayManager"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/localeoverlaymanager/ILocaleOverlayManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/localeoverlaymanager/ILocaleOverlayManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 47
    if-nez p0, :cond_0

    .line 48
    const/4 v0, 0x0

    return-object v0

    .line 50
    :cond_0
    const-string v0, "com.samsung.android.localeoverlaymanager.ILocaleOverlayManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 51
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/localeoverlaymanager/ILocaleOverlayManager;

    if-eqz v1, :cond_1

    .line 52
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/localeoverlaymanager/ILocaleOverlayManager;

    return-object v1

    .line 54
    :cond_1
    new-instance v1, Lcom/samsung/android/localeoverlaymanager/ILocaleOverlayManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/localeoverlaymanager/ILocaleOverlayManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 63
    packed-switch p0, :pswitch_data_0

    .line 75
    const/4 v0, 0x0

    return-object v0

    .line 71
    :pswitch_0
    const-string v0, "applyLocalesForPackage"

    return-object v0

    .line 67
    :pswitch_1
    const-string v0, "applyLocales"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 58
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 202
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 82
    invoke-static {p1}, Lcom/samsung/android/localeoverlaymanager/ILocaleOverlayManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 86
    const-string v0, "com.samsung.android.localeoverlaymanager.ILocaleOverlayManager"

    .line 87
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 88
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 98
    packed-switch p1, :pswitch_data_1

    .line 130
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 94
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    return v1

    .line 117
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 121
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/localeoverlaymanager/ILocaleOverlayInstallObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/localeoverlaymanager/ILocaleOverlayInstallObserver;

    move-result-object v4

    .line 122
    .local v4, "_arg2":Lcom/samsung/android/localeoverlaymanager/ILocaleOverlayInstallObserver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 123
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/localeoverlaymanager/ILocaleOverlayManager$Stub;->applyLocalesForPackage(Ljava/lang/String;ILcom/samsung/android/localeoverlaymanager/ILocaleOverlayInstallObserver;)Z

    move-result v5

    .line 124
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 126
    goto :goto_0

    .line 103
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Lcom/samsung/android/localeoverlaymanager/ILocaleOverlayInstallObserver;
    .end local v5    # "_result":Z
    :pswitch_2
    sget-object v2, Landroid/os/LocaleList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/LocaleList;

    .line 105
    .local v2, "_arg0":Landroid/os/LocaleList;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 107
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/localeoverlaymanager/IOverlayChangeObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/localeoverlaymanager/IOverlayChangeObserver;

    move-result-object v4

    .line 108
    .local v4, "_arg2":Lcom/samsung/android/localeoverlaymanager/IOverlayChangeObserver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 109
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/localeoverlaymanager/ILocaleOverlayManager$Stub;->applyLocales(Landroid/os/LocaleList;ILcom/samsung/android/localeoverlaymanager/IOverlayChangeObserver;)Z

    move-result v5

    .line 110
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 112
    nop

    .line 133
    .end local v2    # "_arg0":Landroid/os/LocaleList;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Lcom/samsung/android/localeoverlaymanager/IOverlayChangeObserver;
    .end local v5    # "_result":Z
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
