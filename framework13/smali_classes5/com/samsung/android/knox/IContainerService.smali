.class public interface abstract Lcom/samsung/android/knox/IContainerService;
.super Ljava/lang/Object;
.source "IContainerService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/IContainerService$Stub;,
        Lcom/samsung/android/knox/IContainerService$Default;
    }
.end annotation


# static fields
.field public static final greylist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.IContainerService"


# virtual methods
.method public abstract greylist onMessage(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
