.class abstract Landroid/telecom/Connection$Listener;
.super Ljava/lang/Object;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Listener"
.end annotation


# direct methods
.method constructor greylist-max-o <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist-max-o onAddressChanged(Landroid/telecom/Connection;Landroid/net/Uri;I)V
    .locals 0

    return-void
.end method

.method public greylist-max-o onAudioModeIsVoipChanged(Landroid/telecom/Connection;Z)V
    .locals 0

    return-void
.end method

.method public greylist-max-o onAudioRouteChanged(Landroid/telecom/Connection;ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public greylist-max-o onCallerDisplayNameChanged(Landroid/telecom/Connection;Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public greylist-max-o onConferenceChanged(Landroid/telecom/Connection;Landroid/telecom/Conference;)V
    .locals 0

    return-void
.end method

.method public greylist-max-o onConferenceMergeFailed(Landroid/telecom/Connection;)V
    .locals 0

    return-void
.end method

.method public greylist-max-o onConferenceablesChanged(Landroid/telecom/Connection;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Connection;",
            "Ljava/util/List<",
            "Landroid/telecom/Conferenceable;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public greylist-max-o onConnectionCapabilitiesChanged(Landroid/telecom/Connection;I)V
    .locals 0

    return-void
.end method

.method public greylist-max-o onConnectionEvent(Landroid/telecom/Connection;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public greylist-max-o onConnectionPropertiesChanged(Landroid/telecom/Connection;I)V
    .locals 0

    return-void
.end method

.method public blacklist onConnectionTimeReset(Landroid/telecom/Connection;)V
    .locals 0

    return-void
.end method

.method public greylist-max-o onDestroyed(Landroid/telecom/Connection;)V
    .locals 0

    return-void
.end method

.method public greylist-max-o onDisconnected(Landroid/telecom/Connection;Landroid/telecom/DisconnectCause;)V
    .locals 0

    return-void
.end method

.method public blacklist onEndpointChanged(Landroid/telecom/Connection;Landroid/telecom/CallEndpoint;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Connection;",
            "Landroid/telecom/CallEndpoint;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Landroid/telecom/CallEndpointException;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public greylist-max-o onExtrasChanged(Landroid/telecom/Connection;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public greylist-max-o onExtrasRemoved(Landroid/telecom/Connection;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Connection;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public greylist-max-o onPhoneAccountChanged(Landroid/telecom/Connection;Landroid/telecom/PhoneAccountHandle;)V
    .locals 0

    return-void
.end method

.method public greylist-max-o onPostDialChar(Landroid/telecom/Connection;C)V
    .locals 0

    return-void
.end method

.method public greylist-max-o onPostDialWait(Landroid/telecom/Connection;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public blacklist onQueryLocation(Landroid/telecom/Connection;JLjava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Connection;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/location/Location;",
            "Landroid/telecom/QueryLocationException;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public greylist-max-o onRemoteRttRequest(Landroid/telecom/Connection;)V
    .locals 0

    return-void
.end method

.method public greylist-max-o onRingbackRequested(Landroid/telecom/Connection;Z)V
    .locals 0

    return-void
.end method

.method public greylist-max-o onRttInitiationFailure(Landroid/telecom/Connection;I)V
    .locals 0

    return-void
.end method

.method public greylist-max-o onRttInitiationSuccess(Landroid/telecom/Connection;)V
    .locals 0

    return-void
.end method

.method public greylist-max-o onRttSessionRemotelyTerminated(Landroid/telecom/Connection;)V
    .locals 0

    return-void
.end method

.method public greylist-max-o onStateChanged(Landroid/telecom/Connection;I)V
    .locals 0

    return-void
.end method

.method public greylist-max-o onStatusHintsChanged(Landroid/telecom/Connection;Landroid/telecom/StatusHints;)V
    .locals 0

    return-void
.end method

.method public greylist-max-o onSupportedAudioRoutesChanged(Landroid/telecom/Connection;I)V
    .locals 0

    return-void
.end method

.method public greylist-max-o onVideoProviderChanged(Landroid/telecom/Connection;Landroid/telecom/Connection$VideoProvider;)V
    .locals 0

    return-void
.end method

.method public greylist-max-o onVideoStateChanged(Landroid/telecom/Connection;I)V
    .locals 0

    return-void
.end method
