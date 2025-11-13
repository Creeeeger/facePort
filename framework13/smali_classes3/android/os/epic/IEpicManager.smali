.class public interface abstract Landroid/os/epic/IEpicManager;
.super Ljava/lang/Object;
.source "IEpicManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/epic/IEpicManager$Stub;,
        Landroid/os/epic/IEpicManager$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.os.epic.IEpicManager"


# virtual methods
.method public abstract blacklist Create(I)Landroid/os/epic/IEpicObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist Creates([I)Landroid/os/epic/IEpicObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
