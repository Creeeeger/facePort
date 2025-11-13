.class Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting$1;
.super Lcom/samsung/android/scloud/rpc/ISamsungCloudRPCCallback$Stub;
.source "SamsungCloudRPCSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;->start(Ljava/lang/String;Lcom/samsung/android/scloud/rpc/SamsungCloudRPCCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;

.field final synthetic val$samsungCloudRPCCallback:Lcom/samsung/android/scloud/rpc/SamsungCloudRPCCallback;


# direct methods
.method constructor <init>(Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;Lcom/samsung/android/scloud/rpc/SamsungCloudRPCCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$samsungCloudRPCCallback"
        }
    .end annotation

    .line 60
    iput-object p1, p0, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting$1;->this$0:Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;

    iput-object p2, p0, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting$1;->val$samsungCloudRPCCallback:Lcom/samsung/android/scloud/rpc/SamsungCloudRPCCallback;

    invoke-direct {p0}, Lcom/samsung/android/scloud/rpc/ISamsungCloudRPCCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "authority",
            "status"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    iget-object p0, p0, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting$1;->val$samsungCloudRPCCallback:Lcom/samsung/android/scloud/rpc/SamsungCloudRPCCallback;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/scloud/rpc/SamsungCloudRPCCallback;->onComplete(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onProgress(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "authority",
            "progress"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    iget-object p0, p0, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting$1;->val$samsungCloudRPCCallback:Lcom/samsung/android/scloud/rpc/SamsungCloudRPCCallback;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/scloud/rpc/SamsungCloudRPCCallback;->onProgress(Ljava/lang/String;I)V

    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "authority"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 63
    iget-object p0, p0, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting$1;->val$samsungCloudRPCCallback:Lcom/samsung/android/scloud/rpc/SamsungCloudRPCCallback;

    invoke-interface {p0, p1}, Lcom/samsung/android/scloud/rpc/SamsungCloudRPCCallback;->onStart(Ljava/lang/String;)V

    return-void
.end method
