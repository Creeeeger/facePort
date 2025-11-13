.class final Landroid/telecom/ConnectionServiceAdapter;
.super Ljava/lang/Object;
.source "ConnectionServiceAdapter.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "Telecom-ConnectionServiceAdapter"


# instance fields
.field private final greylist-max-o mAdapters:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/internal/telecom/IConnectionServiceAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>()V
    .locals 4

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    .line 55
    return-void
.end method


# virtual methods
.method greylist-max-o addAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;)V
    .locals 5
    .param p1, "adapter"    # Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 58
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 59
    .local v1, "it":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-interface {v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 60
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "Ignoring duplicate adapter addition."

    invoke-static {p0, v2, v0}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    return-void

    .line 63
    .end local v1    # "it":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :cond_0
    goto :goto_0

    .line 64
    :cond_1
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addAdapter - adapter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Telecom-ConnectionServiceAdapter"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :try_start_0
    invoke-interface {p1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    goto :goto_1

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 74
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_1
    return-void
.end method

.method greylist-max-o addConferenceCall(Ljava/lang/String;Landroid/telecom/ParcelableConference;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "parcelableConference"    # Landroid/telecom/ParcelableConference;

    .line 334
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 336
    .local v1, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->addConferenceCall(Ljava/lang/String;Landroid/telecom/ParcelableConference;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    goto :goto_1

    .line 337
    :catch_0
    move-exception v2

    .line 339
    .end local v1    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :goto_1
    goto :goto_0

    .line 340
    :cond_0
    return-void
.end method

.method greylist-max-o addExistingConnection(Ljava/lang/String;Landroid/telecom/ParcelableConnection;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "connection"    # Landroid/telecom/ParcelableConnection;

    .line 470
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "addExistingConnection: %s"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 471
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 473
    .local v1, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->addExistingConnection(Ljava/lang/String;Landroid/telecom/ParcelableConnection;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    goto :goto_1

    .line 474
    :catch_0
    move-exception v2

    .line 476
    .end local v1    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :goto_1
    goto :goto_0

    .line 477
    :cond_0
    return-void
.end method

.method public whitelist binderDied()V
    .locals 4

    .line 93
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 94
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telecom/IConnectionServiceAdapter;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 96
    .local v1, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-interface {v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2

    if-nez v2, :cond_0

    .line 97
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 98
    invoke-interface {v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, p0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 100
    .end local v1    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :cond_0
    goto :goto_0

    .line 101
    :cond_1
    return-void
.end method

.method blacklist handleCreateConferenceComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConference;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;
    .param p3, "conference"    # Landroid/telecom/ParcelableConference;

    .line 120
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 122
    .local v1, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    nop

    .line 123
    :try_start_0
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    .line 122
    invoke-interface {v1, p1, p2, p3, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->handleCreateConferenceComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConference;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    goto :goto_1

    .line 124
    :catch_0
    move-exception v2

    .line 126
    .end local v1    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :goto_1
    goto :goto_0

    .line 127
    :cond_0
    return-void
.end method

.method greylist-max-o handleCreateConnectionComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConnection;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;
    .param p3, "connection"    # Landroid/telecom/ParcelableConnection;

    .line 107
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 109
    .local v1, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    nop

    .line 110
    :try_start_0
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    .line 109
    invoke-interface {v1, p1, p2, p3, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->handleCreateConnectionComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConnection;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    goto :goto_1

    .line 111
    :catch_0
    move-exception v2

    .line 113
    .end local v1    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :goto_1
    goto :goto_0

    .line 114
    :cond_0
    return-void
.end method

.method greylist-max-o onConferenceMergeFailed(Ljava/lang/String;)V
    .locals 5
    .param p1, "callId"    # Ljava/lang/String;

    .line 274
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 276
    .local v1, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    const-string/jumbo v2, "merge failed for call %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 277
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setConferenceMergeFailed(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    goto :goto_1

    .line 278
    :catch_0
    move-exception v2

    .line 280
    .end local v1    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :goto_1
    goto :goto_0

    .line 281
    :cond_0
    return-void
.end method

.method greylist-max-o onConnectionEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "event"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 595
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string/jumbo v1, "onConnectionEvent: %s"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 596
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 598
    .local v1, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, p2, p3, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onConnectionEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 600
    goto :goto_1

    .line 599
    :catch_0
    move-exception v2

    .line 601
    .end local v1    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :goto_1
    goto :goto_0

    .line 602
    :cond_0
    return-void
.end method

.method greylist-max-o onConnectionServiceFocusReleased()V
    .locals 4

    .line 686
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 688
    .local v1, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    const-string/jumbo v2, "onConnectionServiceFocusReleased"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 689
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onConnectionServiceFocusReleased(Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 691
    goto :goto_1

    .line 690
    :catch_0
    move-exception v2

    .line 692
    .end local v1    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :goto_1
    goto :goto_0

    .line 693
    :cond_0
    return-void
.end method

.method greylist-max-o onPhoneAccountChanged(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)V
    .locals 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "pHandle"    # Landroid/telecom/PhoneAccountHandle;

    .line 673
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 675
    .local v1, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    const-string/jumbo v2, "onPhoneAccountChanged %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 676
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onPhoneAccountChanged(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 678
    goto :goto_1

    .line 677
    :catch_0
    move-exception v2

    .line 679
    .end local v1    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :goto_1
    goto :goto_0

    .line 680
    :cond_0
    return-void
.end method

.method greylist-max-o onPostDialChar(Ljava/lang/String;C)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "nextChar"    # C

    .line 320
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 322
    .local v1, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onPostDialChar(Ljava/lang/String;CLandroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    goto :goto_1

    .line 323
    :catch_0
    move-exception v2

    .line 325
    .end local v1    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :goto_1
    goto :goto_0

    .line 326
    :cond_0
    return-void
.end method

.method greylist-max-o onPostDialWait(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "remaining"    # Ljava/lang/String;

    .line 311
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 313
    .local v1, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onPostDialWait(Ljava/lang/String;Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    goto :goto_1

    .line 314
    :catch_0
    move-exception v2

    .line 316
    .end local v1    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :goto_1
    goto :goto_0

    .line 317
    :cond_0
    return-void
.end method

.method greylist-max-o onRemoteRttRequest(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .line 657
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string/jumbo v1, "onRemoteRttRequest: %s"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 658
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 660
    .local v1, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onRemoteRttRequest(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 662
    goto :goto_1

    .line 661
    :catch_0
    move-exception v2

    .line 663
    .end local v1    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :goto_1
    goto :goto_0

    .line 664
    :cond_0
    return-void
.end method

.method greylist-max-o onRttInitiationFailure(Ljava/lang/String;I)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .line 625
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string/jumbo v1, "onRttInitiationFailure: %s"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 626
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 628
    .local v1, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onRttInitiationFailure(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 630
    goto :goto_1

    .line 629
    :catch_0
    move-exception v2

    .line 631
    .end local v1    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :goto_1
    goto :goto_0

    .line 632
    :cond_0
    return-void
.end method

.method greylist-max-o onRttInitiationSuccess(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .line 610
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string/jumbo v1, "onRttInitiationSuccess: %s"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 611
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 613
    .local v1, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onRttInitiationSuccess(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 615
    goto :goto_1

    .line 614
    :catch_0
    move-exception v2

    .line 616
    .end local v1    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :goto_1
    goto :goto_0

    .line 617
    :cond_0
    return-void
.end method

.method greylist-max-o onRttSessionRemotelyTerminated(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .line 641
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string/jumbo v1, "onRttSessionRemotelyTerminated: %s"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 642
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 644
    .local v1, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onRttSessionRemotelyTerminated(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 646
    goto :goto_1

    .line 645
    :catch_0
    move-exception v2

    .line 647
    .end local v1    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :goto_1
    goto :goto_0

    .line 648
    :cond_0
    return-void
.end method

.method greylist-max-o putExtra(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # I

    .line 522
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "putExtra: %s %s=%d"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 523
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 525
    .local v1, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 526
    .local v2, "bundle":Landroid/os/Bundle;
    invoke-virtual {v2, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 527
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->putExtras(Ljava/lang/String;Landroid/os/Bundle;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    .end local v2    # "bundle":Landroid/os/Bundle;
    goto :goto_1

    .line 528
    :catch_0
    move-exception v2

    .line 530
    .end local v1    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :goto_1
    goto :goto_0

    .line 531
    :cond_0
    return-void
.end method

.method greylist-max-o putExtra(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 541
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const-string/jumbo v1, "putExtra: %s %s=%s"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 542
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 544
    .local v1, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 545
    .local v2, "bundle":Landroid/os/Bundle;
    invoke-virtual {v2, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->putExtras(Ljava/lang/String;Landroid/os/Bundle;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 548
    .end local v2    # "bundle":Landroid/os/Bundle;
    goto :goto_1

    .line 547
    :catch_0
    move-exception v2

    .line 549
    .end local v1    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :goto_1
    goto :goto_0

    .line 550
    :cond_0
    return-void
.end method

.method greylist-max-o putExtra(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Z

    .line 503
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "putExtra: %s %s=%b"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 504
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 506
    .local v1, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 507
    .local v2, "bundle":Landroid/os/Bundle;
    invoke-virtual {v2, p2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 508
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->putExtras(Ljava/lang/String;Landroid/os/Bundle;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 510
    .end local v2    # "bundle":Landroid/os/Bundle;
    goto :goto_1

    .line 509
    :catch_0
    move-exception v2

    .line 511
    .end local v1    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :goto_1
    goto :goto_0

    .line 512
    :cond_0
    return-void
.end method

.method greylist-max-o putExtras(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 486
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string/jumbo v1, "putExtras: %s"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 487
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 489
    .local v1, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->putExtras(Ljava/lang/String;Landroid/os/Bundle;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    goto :goto_1

    .line 490
    :catch_0
    move-exception v2

    .line 492
    .end local v1    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :goto_1
    goto :goto_0

    .line 493
    :cond_0
    return-void
.end method

.method blacklist queryRemoteConnectionServices(Lcom/android/internal/telecom/RemoteServiceCallback;Ljava/lang/String;)V
    .locals 4
    .param p1, "callback"    # Lcom/android/internal/telecom/RemoteServiceCallback;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 347
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "Exception trying to query for remote CSs"

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 349
    :try_start_0
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 350
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v3

    .line 349
    invoke-interface {v0, p1, p2, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->queryRemoteConnectionServices(Lcom/android/internal/telecom/RemoteServiceCallback;Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 351
    :catch_0
    move-exception v0

    .line 352
    .local v0, "e":Landroid/os/RemoteException;
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2, v1}, Landroid/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 353
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 359
    :cond_0
    :try_start_1
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {p1, v0, v3}, Lcom/android/internal/telecom/RemoteServiceCallback;->onResult(Ljava/util/List;Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 362
    goto :goto_1

    .line 360
    :catch_1
    move-exception v0

    .line 361
    .restart local v0    # "e":Landroid/os/RemoteException;
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2, v1}, Landroid/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 364
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method greylist-max-o removeAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;)V
    .locals 4
    .param p1, "adapter"    # Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 77
    if-eqz p1, :cond_1

    .line 78
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 79
    .local v1, "it":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-interface {v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeAdapter - adapter: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Telecom-ConnectionServiceAdapter"

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-interface {p1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 84
    goto :goto_1

    .line 86
    .end local v1    # "it":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :cond_0
    goto :goto_0

    .line 88
    :cond_1
    :goto_1
    return-void
.end method

.method greylist-max-o removeCall(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .line 302
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 304
    .local v1, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->removeCall(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    goto :goto_1

    .line 305
    :catch_0
    move-exception v2

    .line 307
    .end local v1    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :goto_1
    goto :goto_0

    .line 308
    :cond_0
    return-void
.end method

.method greylist-max-o removeExtras(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 558
    .local p2, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string/jumbo v1, "removeExtras: %s %s"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 559
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 561
    .local v1, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->removeExtras(Ljava/lang/String;Ljava/util/List;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 563
    goto :goto_1

    .line 562
    :catch_0
    move-exception v2

    .line 564
    .end local v1    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :goto_1
    goto :goto_0

    .line 565
    :cond_0
    return-void
.end method

.method blacklist resetConnectionTime(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .line 287
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 289
    .local v1, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->resetConnectionTime(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    goto :goto_1

    .line 290
    :catch_0
    move-exception v2

    .line 292
    .end local v1    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :goto_1
    goto :goto_0

    .line 293
    :cond_0
    return-void
.end method

.method greylist-max-o setActive(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .line 136
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 138
    .local v1, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setActive(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    goto :goto_1

    .line 139
    :catch_0
    move-exception v2

    .line 141
    .end local v1    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :goto_1
    goto :goto_0

    .line 142
    :cond_0
    return-void
.end method

.method greylist-max-o setAddress(Ljava/lang/String;Landroid/net/Uri;I)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "address"    # Landroid/net/Uri;
    .param p3, "presentation"    # I

    .line 410
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 412
    .local v1, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, p2, p3, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setAddress(Ljava/lang/String;Landroid/net/Uri;ILandroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    goto :goto_1

    .line 413
    :catch_0
    move-exception v2

    .line 415
    .end local v1    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :goto_1
    goto :goto_0

    .line 416
    :cond_0
    return-void
.end method

.method greylist-max-o setAudioRoute(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "audioRoute"    # I
    .param p3, "bluetoothAddress"    # Ljava/lang/String;

    .line 574
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 575
    invoke-static {p2}, Landroid/telecom/CallAudioState;->audioRouteToString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p3, v0, v1

    .line 574
    const-string/jumbo v1, "setAudioRoute: %s %s %s"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 577
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 579
    .local v1, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    nop

    .line 580
    :try_start_0
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    .line 579
    invoke-interface {v1, p1, p2, p3, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setAudioRoute(Ljava/lang/String;ILjava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 582
    goto :goto_1

    .line 581
    :catch_0
    move-exception v2

    .line 583
    .end local v1    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :goto_1
    goto :goto_0

    .line 584
    :cond_0
    return-void
.end method

.method blacklist setCallDirection(Ljava/lang/String;I)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "direction"    # I

    .line 721
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 723
    .local v1, "a":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setCallDirection(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 725
    goto :goto_1

    .line 724
    :catch_0
    move-exception v2

    .line 726
    .end local v1    # "a":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :goto_1
    goto :goto_0

    .line 727
    :cond_0
    return-void
.end method

.method greylist-max-o setCallerDisplayName(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "callerDisplayName"    # Ljava/lang/String;
    .param p3, "presentation"    # I

    .line 419
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 421
    .local v1, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    nop

    .line 422
    :try_start_0
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    .line 421
    invoke-interface {v1, p1, p2, p3, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setCallerDisplayName(Ljava/lang/String;Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    goto :goto_1

    .line 423
    :catch_0
    move-exception v2

    .line 425
    .end local v1    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :goto_1
    goto :goto_0

    .line 426
    :cond_0
    return-void
.end method

.method blacklist setConferenceState(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "isConference"    # Z

    .line 704
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "setConferenceState: %s %b"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 705
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 707
    .local v1, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setConferenceState(Ljava/lang/String;ZLandroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 709
    goto :goto_1

    .line 708
    :catch_0
    move-exception v2

    .line 710
    .end local v1    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :goto_1
    goto :goto_0

    .line 711
    :cond_0
    return-void
.end method

.method greylist-max-o setConferenceableConnections(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 451
    .local p2, "conferenceableCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setConferenceableConnections - callId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", conferenceableCallIds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Telecom-ConnectionServiceAdapter"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string/jumbo v1, "setConferenceableConnections: %s, %s"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 454
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 456
    .local v1, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    nop

    .line 457
    :try_start_0
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    .line 456
    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setConferenceableConnections(Ljava/lang/String;Ljava/util/List;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    goto :goto_1

    .line 458
    :catch_0
    move-exception v2

    .line 460
    .end local v1    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :goto_1
    goto :goto_0

    .line 461
    :cond_0
    return-void
.end method

.method greylist-max-o setConnectionCapabilities(Ljava/lang/String;I)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "capabilities"    # I

    .line 233
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 235
    .local v1, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setConnectionCapabilities(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    goto :goto_1

    .line 236
    :catch_0
    move-exception v2

    .line 238
    .end local v1    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :goto_1
    goto :goto_0

    .line 239
    :cond_0
    return-void
.end method

.method greylist-max-o setConnectionProperties(Ljava/lang/String;I)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "properties"    # I

    .line 242
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 244
    .local v1, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setConnectionProperties(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    goto :goto_1

    .line 245
    :catch_0
    move-exception v2

    .line 247
    .end local v1    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :goto_1
    goto :goto_0

    .line 248
    :cond_0
    return-void
.end method

.method greylist-max-o setDialing(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .line 164
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 166
    .local v1, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setDialing(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    goto :goto_1

    .line 167
    :catch_0
    move-exception v2

    .line 169
    .end local v1    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :goto_1
    goto :goto_0

    .line 170
    :cond_0
    return-void
.end method

.method greylist-max-o setDisconnected(Ljava/lang/String;Landroid/telecom/DisconnectCause;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .line 195
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 197
    .local v1, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setDisconnected(Ljava/lang/String;Landroid/telecom/DisconnectCause;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    goto :goto_1

    .line 198
    :catch_0
    move-exception v2

    .line 200
    .end local v1    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :goto_1
    goto :goto_0

    .line 201
    :cond_0
    return-void
.end method

.method greylist-max-o setIsConferenced(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "conferenceCallId"    # Ljava/lang/String;

    .line 259
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 261
    .local v1, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    const-string/jumbo v2, "sending connection %s with conference %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 262
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setIsConferenced(Ljava/lang/String;Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    goto :goto_1

    .line 263
    :catch_0
    move-exception v2

    .line 265
    .end local v1    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :goto_1
    goto :goto_0

    .line 266
    :cond_0
    return-void
.end method

.method greylist-max-o setIsVoipAudioMode(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "isVoip"    # Z

    .line 392
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 394
    .local v1, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setIsVoipAudioMode(Ljava/lang/String;ZLandroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    goto :goto_1

    .line 395
    :catch_0
    move-exception v2

    .line 397
    .end local v1    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :goto_1
    goto :goto_0

    .line 398
    :cond_0
    return-void
.end method

.method greylist-max-o setOnHold(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .line 209
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 211
    .local v1, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setOnHold(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    goto :goto_1

    .line 212
    :catch_0
    move-exception v2

    .line 214
    .end local v1    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :goto_1
    goto :goto_0

    .line 215
    :cond_0
    return-void
.end method

.method greylist-max-o setPulling(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .line 179
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 181
    .local v1, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setPulling(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    goto :goto_1

    .line 182
    :catch_0
    move-exception v2

    .line 184
    .end local v1    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :goto_1
    goto :goto_0

    .line 185
    :cond_0
    return-void
.end method

.method greylist-max-o setRingbackRequested(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "ringback"    # Z

    .line 224
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 226
    .local v1, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setRingbackRequested(Ljava/lang/String;ZLandroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    goto :goto_1

    .line 227
    :catch_0
    move-exception v2

    .line 229
    .end local v1    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :goto_1
    goto :goto_0

    .line 230
    :cond_0
    return-void
.end method

.method greylist-max-o setRinging(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .line 150
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 152
    .local v1, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setRinging(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    goto :goto_1

    .line 153
    :catch_0
    move-exception v2

    .line 155
    .end local v1    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :goto_1
    goto :goto_0

    .line 156
    :cond_0
    return-void
.end method

.method greylist-max-o setStatusHints(Ljava/lang/String;Landroid/telecom/StatusHints;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "statusHints"    # Landroid/telecom/StatusHints;

    .line 401
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 403
    .local v1, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setStatusHints(Ljava/lang/String;Landroid/telecom/StatusHints;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    goto :goto_1

    .line 404
    :catch_0
    move-exception v2

    .line 406
    .end local v1    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :goto_1
    goto :goto_0

    .line 407
    :cond_0
    return-void
.end method

.method greylist-max-o setVideoProvider(Ljava/lang/String;Landroid/telecom/Connection$VideoProvider;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "videoProvider"    # Landroid/telecom/Connection$VideoProvider;

    .line 374
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 376
    .local v1, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    nop

    .line 378
    if-nez p2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {p2}, Landroid/telecom/Connection$VideoProvider;->getInterface()Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v2

    .line 379
    :goto_1
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v3

    .line 376
    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setVideoProvider(Ljava/lang/String;Lcom/android/internal/telecom/IVideoProvider;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    goto :goto_2

    .line 380
    :catch_0
    move-exception v2

    .line 382
    .end local v1    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :goto_2
    goto :goto_0

    .line 383
    :cond_1
    return-void
.end method

.method greylist-max-o setVideoState(Ljava/lang/String;I)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "videoState"    # I

    .line 440
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "setVideoState: %d"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 441
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 443
    .local v1, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setVideoState(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    goto :goto_1

    .line 444
    :catch_0
    move-exception v2

    .line 446
    .end local v1    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :goto_1
    goto :goto_0

    .line 447
    :cond_0
    return-void
.end method
