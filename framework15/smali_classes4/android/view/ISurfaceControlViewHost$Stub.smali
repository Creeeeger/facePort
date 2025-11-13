.class public abstract Landroid/view/ISurfaceControlViewHost$Stub;
.super Landroid/os/Binder;
.source "ISurfaceControlViewHost.java"

# interfaces
.implements Landroid/view/ISurfaceControlViewHost;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ISurfaceControlViewHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ISurfaceControlViewHost$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_attachParentInterface:I = 0x5

.field static final blacklist TRANSACTION_getSurfaceSyncGroup:I = 0x4

.field static final blacklist TRANSACTION_onConfigurationChanged:I = 0x1

.field static final blacklist TRANSACTION_onDispatchDetachedFromWindow:I = 0x2

.field static final blacklist TRANSACTION_onInsetsChanged:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.view.ISurfaceControlViewHost"

    invoke-virtual {p0, p0, v0}, Landroid/view/ISurfaceControlViewHost$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/view/ISurfaceControlViewHost;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.view.ISurfaceControlViewHost"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/ISurfaceControlViewHost;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/view/ISurfaceControlViewHost;

    return-object v1

    :cond_1
    new-instance v1, Landroid/view/ISurfaceControlViewHost$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/ISurfaceControlViewHost$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string v0, "attachParentInterface"

    return-object v0

    :pswitch_1
    const-string v0, "getSurfaceSyncGroup"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "onInsetsChanged"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "onDispatchDetachedFromWindow"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "onConfigurationChanged"

    return-object v0

    nop

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

    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/view/ISurfaceControlViewHost$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.view.ISurfaceControlViewHost"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1
    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ISurfaceControlViewHostParent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/ISurfaceControlViewHostParent;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/view/ISurfaceControlViewHost$Stub;->attachParentInterface(Landroid/view/ISurfaceControlViewHostParent;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Landroid/view/ISurfaceControlViewHost$Stub;->getSurfaceSyncGroup()Landroid/window/ISurfaceSyncGroup;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    goto :goto_0

    :pswitch_2
    sget-object v2, Landroid/view/InsetsState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsState;

    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/view/ISurfaceControlViewHost$Stub;->onInsetsChanged(Landroid/view/InsetsState;Landroid/graphics/Rect;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Landroid/view/ISurfaceControlViewHost$Stub;->onDispatchDetachedFromWindow()V

    goto :goto_0

    :pswitch_4
    sget-object v2, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/Configuration;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/view/ISurfaceControlViewHost$Stub;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    nop

    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
