.class public interface abstract Landroid/os/ISpegHelperService;
.super Ljava/lang/Object;
.source "ISpegHelperService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ISpegHelperService$Stub;,
        Landroid/os/ISpegHelperService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.os.ISpegHelperService"


# virtual methods
.method public abstract blacklist createOrDeleteMarkerFiles(Ljava/lang/String;ZI)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist storePrimaryProf(Ljava/lang/String;Ljava/lang/String;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
