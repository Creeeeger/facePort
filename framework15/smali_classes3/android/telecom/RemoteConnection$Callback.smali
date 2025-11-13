.class public abstract Landroid/telecom/RemoteConnection$Callback;
.super Ljava/lang/Object;
.source "RemoteConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/RemoteConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAddressChanged(Landroid/telecom/RemoteConnection;Landroid/net/Uri;I)V
    .locals 0

    return-void
.end method

.method public whitelist onCallerDisplayNameChanged(Landroid/telecom/RemoteConnection;Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public whitelist onConferenceChanged(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConference;)V
    .locals 0

    return-void
.end method

.method public whitelist onConferenceableConnectionsChanged(Landroid/telecom/RemoteConnection;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/RemoteConnection;",
            "Ljava/util/List<",
            "Landroid/telecom/RemoteConnection;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public whitelist onConnectionCapabilitiesChanged(Landroid/telecom/RemoteConnection;I)V
    .locals 0

    return-void
.end method

.method public whitelist onConnectionEvent(Landroid/telecom/RemoteConnection;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public whitelist onConnectionPropertiesChanged(Landroid/telecom/RemoteConnection;I)V
    .locals 0

    return-void
.end method

.method public whitelist onDestroyed(Landroid/telecom/RemoteConnection;)V
    .locals 0

    return-void
.end method

.method public whitelist onDisconnected(Landroid/telecom/RemoteConnection;Landroid/telecom/DisconnectCause;)V
    .locals 0

    return-void
.end method

.method public whitelist onExtrasChanged(Landroid/telecom/RemoteConnection;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public whitelist onPostDialChar(Landroid/telecom/RemoteConnection;C)V
    .locals 0

    return-void
.end method

.method public whitelist onPostDialWait(Landroid/telecom/RemoteConnection;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public greylist-max-o onRemoteRttRequest(Landroid/telecom/RemoteConnection;)V
    .locals 0

    return-void
.end method

.method public whitelist onRingbackRequested(Landroid/telecom/RemoteConnection;Z)V
    .locals 0

    return-void
.end method

.method public greylist-max-o onRttInitiationFailure(Landroid/telecom/RemoteConnection;I)V
    .locals 0

    return-void
.end method

.method public greylist-max-o onRttInitiationSuccess(Landroid/telecom/RemoteConnection;)V
    .locals 0

    return-void
.end method

.method public greylist-max-o onRttSessionRemotelyTerminated(Landroid/telecom/RemoteConnection;)V
    .locals 0

    return-void
.end method

.method public whitelist onStateChanged(Landroid/telecom/RemoteConnection;I)V
    .locals 0

    return-void
.end method

.method public whitelist onStatusHintsChanged(Landroid/telecom/RemoteConnection;Landroid/telecom/StatusHints;)V
    .locals 0

    return-void
.end method

.method public whitelist onVideoProviderChanged(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$VideoProvider;)V
    .locals 0

    return-void
.end method

.method public whitelist onVideoStateChanged(Landroid/telecom/RemoteConnection;I)V
    .locals 0

    return-void
.end method

.method public whitelist onVoipAudioChanged(Landroid/telecom/RemoteConnection;Z)V
    .locals 0

    return-void
.end method
