.class public abstract Lcom/samsung/android/scloud/rpc/ISamsungCloudRPC$Stub;
.super Landroid/os/Binder;
.source "ISamsungCloudRPC.java"

# interfaces
.implements Lcom/samsung/android/scloud/rpc/ISamsungCloudRPC;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/scloud/rpc/ISamsungCloudRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/scloud/rpc/ISamsungCloudRPC$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/scloud/rpc/ISamsungCloudRPC;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.samsung.android.scloud.rpc.ISamsungCloudRPC"

    .line 81
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 82
    instance-of v1, v0, Lcom/samsung/android/scloud/rpc/ISamsungCloudRPC;

    if-eqz v1, :cond_1

    .line 83
    check-cast v0, Lcom/samsung/android/scloud/rpc/ISamsungCloudRPC;

    return-object v0

    .line 85
    :cond_1
    new-instance v0, Lcom/samsung/android/scloud/rpc/ISamsungCloudRPC$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/scloud/rpc/ISamsungCloudRPC$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/samsung/android/scloud/rpc/ISamsungCloudRPC;
    .locals 1

    .line 375
    sget-object v0, Lcom/samsung/android/scloud/rpc/ISamsungCloudRPC$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/scloud/rpc/ISamsungCloudRPC;

    return-object v0
.end method
