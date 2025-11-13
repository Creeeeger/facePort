.class public interface abstract Landroid/blockchain/ITAController;
.super Ljava/lang/Object;
.source "ITAController.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/blockchain/ITAController$Stub;,
        Landroid/blockchain/ITAController$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.blockchain.ITAController"


# virtual methods
.method public abstract blacklist loadTA(Landroid/os/ParcelFileDescriptor;JJ)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist processTACommand(Landroid/blockchain/TACommandRequest;)Landroid/blockchain/TACommandResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist unloadTA()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
