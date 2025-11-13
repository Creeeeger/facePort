.class public interface abstract Lcom/sec/android/smartfpsadjuster/IIntelligentDynamicFpsService;
.super Ljava/lang/Object;
.source "IIntelligentDynamicFpsService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/smartfpsadjuster/IIntelligentDynamicFpsService$Stub;,
        Lcom/sec/android/smartfpsadjuster/IIntelligentDynamicFpsService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.sec.android.smartfpsadjuster.IIntelligentDynamicFpsService"


# virtual methods
.method public abstract blacklist cameraPolicyChange(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist cameraPolicyStart()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist cameraPolicyStop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
