.class public abstract Lcom/android/systemui/screenshot/IScreenshotProxy$Stub;
.super Landroid/os/Binder;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/screenshot/IScreenshotProxy;


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.systemui.screenshot.IScreenshotProxy"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    const-string v0, "com.android.systemui.screenshot.IScreenshotProxy"

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
    if-eq p1, v1, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_3

    const/4 p1, 0x0

    goto :goto_0

    :cond_3
    const-string p4, "com.android.systemui.screenshot.IOnDoneCallback"

    invoke-interface {p1, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    if-eqz p4, :cond_4

    instance-of v0, p4, Lcom/android/systemui/screenshot/IOnDoneCallback;

    if-eqz v0, :cond_4

    move-object p1, p4

    check-cast p1, Lcom/android/systemui/screenshot/IOnDoneCallback;

    goto :goto_0

    :cond_4
    new-instance p4, Lcom/android/systemui/screenshot/IOnDoneCallback$Stub$Proxy;

    invoke-direct {p4, p1}, Lcom/android/systemui/screenshot/IOnDoneCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    move-object p1, p4

    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    check-cast p0, Lcom/android/systemui/screenshot/ScreenshotProxyService$mBinder$1;

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotProxyService$mBinder$1;->dismissKeyguard(Lcom/android/systemui/screenshot/IOnDoneCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    :cond_5
    check-cast p0, Lcom/android/systemui/screenshot/ScreenshotProxyService$mBinder$1;

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotProxyService$mBinder$1;->isNotificationShadeExpanded()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    :goto_1
    return v1
.end method
