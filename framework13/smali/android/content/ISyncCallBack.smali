.class public interface abstract Landroid/content/ISyncCallBack;
.super Ljava/lang/Object;
.source "ISyncCallBack.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ISyncCallBack$Stub;,
        Landroid/content/ISyncCallBack$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.content.ISyncCallBack"


# virtual methods
.method public abstract blacklist deletePersonaData(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist doSync(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
