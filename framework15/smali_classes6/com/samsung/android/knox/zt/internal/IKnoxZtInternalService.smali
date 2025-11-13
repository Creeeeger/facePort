.class public interface abstract Lcom/samsung/android/knox/zt/internal/IKnoxZtInternalService;
.super Ljava/lang/Object;
.source "IKnoxZtInternalService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/zt/internal/IKnoxZtInternalService$Stub;,
        Lcom/samsung/android/knox/zt/internal/IKnoxZtInternalService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.zt.internal.IKnoxZtInternalService"


# virtual methods
.method public abstract blacklist notifyFrameworkEvent(IILandroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
