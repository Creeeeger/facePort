.class public abstract Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy$Stub;
.super Landroid/os/Binder;
.source "IPasswordPolicy.java"

# interfaces
.implements Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.samsung.android.knox.devicesecurity.IPasswordPolicy"

    .line 387
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 388
    instance-of v1, v0, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    if-eqz v1, :cond_1

    .line 389
    check-cast v0, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    return-object v0

    .line 391
    :cond_1
    new-instance v0, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
