.class public abstract Lsamsung/uwb/IUwbAdapter$Stub;
.super Landroid/os/Binder;
.source "IUwbAdapter.java"

# interfaces
.implements Lsamsung/uwb/IUwbAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsamsung/uwb/IUwbAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsamsung/uwb/IUwbAdapter$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lsamsung/uwb/IUwbAdapter;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "samsung.uwb.IUwbAdapter"

    .line 282
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 283
    instance-of v1, v0, Lsamsung/uwb/IUwbAdapter;

    if-eqz v1, :cond_1

    .line 284
    check-cast v0, Lsamsung/uwb/IUwbAdapter;

    return-object v0

    .line 286
    :cond_1
    new-instance v0, Lsamsung/uwb/IUwbAdapter$Stub$Proxy;

    invoke-direct {v0, p0}, Lsamsung/uwb/IUwbAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
