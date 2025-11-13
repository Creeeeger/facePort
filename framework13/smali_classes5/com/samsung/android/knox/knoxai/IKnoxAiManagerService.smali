.class public interface abstract Lcom/samsung/android/knox/knoxai/IKnoxAiManagerService;
.super Ljava/lang/Object;
.source "IKnoxAiManagerService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/knoxai/IKnoxAiManagerService$Stub;,
        Lcom/samsung/android/knox/knoxai/IKnoxAiManagerService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.knoxai.IKnoxAiManagerService"


# virtual methods
.method public abstract blacklist initializeTaSession(Lcom/samsung/android/knox/knoxai/TaLoaderOptions;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist processTaCommand(I[Lcom/samsung/android/knox/knoxai/TaProcessBuffer;[Lcom/samsung/android/knox/knoxai/TaProcessBuffer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist terminateTaSession()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
