.class Lcom/samsung/android/sdk/smartthings/headless/companionservice/IService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IService.java"

# interfaces
.implements Lcom/samsung/android/sdk/smartthings/headless/companionservice/IService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/smartthings/headless/companionservice/IService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/samsung/android/sdk/smartthings/headless/companionservice/IService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/IService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/IService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public execute(ILjava/lang/String;Lcom/samsung/android/sdk/smartthings/headless/companionservice/IServiceCallback;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 123
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.sdk.smartthings.headless.companionservice.IService"

    .line 126
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 129
    invoke-interface {p3}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 130
    iget-object p0, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/IService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 131
    invoke-static {}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/IService$Stub;->getDefaultImpl()Lcom/samsung/android/sdk/smartthings/headless/companionservice/IService;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 132
    invoke-static {}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/IService$Stub;->getDefaultImpl()Lcom/samsung/android/sdk/smartthings/headless/companionservice/IService;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/IService;->execute(ILjava/lang/String;Lcom/samsung/android/sdk/smartthings/headless/companionservice/IServiceCallback;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 139
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 134
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 135
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 139
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 138
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 139
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 140
    throw p0
.end method
