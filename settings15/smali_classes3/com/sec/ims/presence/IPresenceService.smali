.class public interface abstract Lcom/sec/ims/presence/IPresenceService;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/presence/IPresenceService$Stub;,
        Lcom/sec/ims/presence/IPresenceService$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.sec.ims.presence.IPresenceService"


# virtual methods
.method public abstract getOwnPresenceInfo()Lcom/sec/ims/presence/PresenceInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getPresenceInfo(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/presence/PresenceInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getPresenceInfoByContactId(Ljava/lang/String;)Lcom/sec/ims/presence/PresenceInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
