.class public interface abstract Lcom/samsung/android/ssdid/ISemSsdidManagerService;
.super Ljava/lang/Object;
.source "ISemSsdidManagerService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ssdid/ISemSsdidManagerService$Stub;,
        Lcom/samsung/android/ssdid/ISemSsdidManagerService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.ssdid.ISemSsdidManagerService"


# virtual methods
.method public abstract blacklist getSsdid()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
