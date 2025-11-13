.class public interface abstract Lcom/sec/ims/presence/IPresenceService;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/IInterface;


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
