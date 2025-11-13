.class public interface abstract Lcom/samsung/android/mateservice/IAgentService;
.super Ljava/lang/Object;
.source "IAgentService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mateservice/IAgentService$Stub;,
        Lcom/samsung/android/mateservice/IAgentService$Default;
    }
.end annotation


# static fields
.field public static final greylist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.mateservice.IAgentService"


# virtual methods
.method public abstract greylist executeAction(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist executeSysAction(ILandroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
