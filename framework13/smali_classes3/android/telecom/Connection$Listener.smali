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

    .line 1266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist-max-o onAddressChanged(Landroid/telecom/Connection;Landroid/net/Uri;I)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "newAddress"    # Landroid/net/Uri;
    .param p3, "presentation"    # I

    .line 1268
    return-void
.end method

.method public greylist-max-o onAudioModeIsVoipChanged(Landroid/telecom/Connection;Z)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "isVoip"    # Z

    .line 1282
    return-void
.end method

.method public greylist-max-o onAudioRouteChanged(Landroid/telecom/Connection;ILjava/lang/String;)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "audioRoute"    # I
    .param p3, "bluetoothAddress"    # Ljava/lang/String;

    .line 1291
    return-void
.end method

.method public greylist-max-o onCallerDisplayNameChanged(Landroid/telecom/Connection;Ljava/lang/String;I)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "callerDisplayName"    # Ljava/lang/String;
    .param p3, "presentation"    # I

    .line 1270
    return-void
.end method

.method public greylist-max-o onConferenceChanged(Landroid/telecom/Connection;Landroid/telecom/Conference;)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "conference"    # Landroid/telecom/Conference;

    .line 1286
    return-void
.end method

.method public greylist-max-o onConferenceMergeFailed(Landroid/telecom/Connection;)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;

    .line 1287
    return-void
.end method

.method public greylist-max-o onConferenceablesChanged(Landroid/telecom/Connection;Ljava/util/List;)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Connection;",
            "Ljava/util/List<",
            "Landroid/telecom/Conferenceable;",
            ">;)V"
        }
    .end annotation

    .line 1285
    .local p2, "conferenceables":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Conferenceable;>;"
    return-void
.end method

.method public greylist-max-o onConnectionCapabilitiesChanged(Landroid/telecom/Connection;I)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "capabilities"    # I

    .line 1277
    return-void
.end method

.method public greylist-max-o onConnectionEvent(Landroid/telecom/Connection;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "event"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 1290
    return-void
.end method

.method public greylist-max-o onConnectionPropertiesChanged(Landroid/telecom/Connection;I)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "properties"    # I

    .line 1278
    return-void
.end method

.method public blacklist onConnectionTimeReset(Landroid/telecom/Connection;)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;

    .line 1298
    return-void
.end method

.method public greylist-max-o onDestroyed(Landroid/telecom/Connection;)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;

    .line 1276
    return-void
.end method

.method public greylist-max-o onDisconnected(Landroid/telecom/Connection;Landroid/telecom/DisconnectCause;)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .line 1272
    return-void
.end method

.method public greylist-max-o onExtrasChanged(Landroid/telecom/Connection;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1288
    return-void
.end method

.method public greylist-max-o onExtrasRemoved(Landroid/telecom/Connection;Ljava/util/List;)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Connection;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1289
    .local p2, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public greylist-max-o onPhoneAccountChanged(Landroid/telecom/Connection;Landroid/telecom/PhoneAccountHandle;)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "pHandle"    # Landroid/telecom/PhoneAccountHandle;

    .line 1297
    return-void
.end method

.method public greylist-max-o onPostDialChar(Landroid/telecom/Connection;C)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "nextChar"    # C

    .line 1274
    return-void
.end method

.method public greylist-max-o onPostDialWait(Landroid/telecom/Connection;Ljava/lang/String;)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "remaining"    # Ljava/lang/String;

    .line 1273
    return-void
.end method

.method public greylist-max-o onRemoteRttRequest(Landroid/telecom/Connection;)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;

    .line 1295
    return-void
.end method

.method public greylist-max-o onRingbackRequested(Landroid/telecom/Connection;Z)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "ringback"    # Z

    .line 1275
    return-void
.end method

.method public greylist-max-o onRttInitiationFailure(Landroid/telecom/Connection;I)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "reason"    # I

    .line 1293
    return-void
.end method

.method public greylist-max-o onRttInitiationSuccess(Landroid/telecom/Connection;)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;

    .line 1292
    return-void
.end method

.method public greylist-max-o onRttSessionRemotelyTerminated(Landroid/telecom/Connection;)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;

    .line 1294
    return-void
.end method

.method public greylist-max-o onStateChanged(Landroid/telecom/Connection;I)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "state"    # I

    .line 1267
    return-void
.end method

.method public greylist-max-o onStatusHintsChanged(Landroid/telecom/Connection;Landroid/telecom/StatusHints;)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "statusHints"    # Landroid/telecom/StatusHints;

    .line 1283
    return-void
.end method

.method public greylist-max-o onSupportedAudioRoutesChanged(Landroid/telecom/Connection;I)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "supportedAudioRoutes"    # I

    .line 1279
    return-void
.end method

.method public greylist-max-o onVideoProviderChanged(Landroid/telecom/Connection;Landroid/telecom/Connection$VideoProvider;)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "videoProvider"    # Landroid/telecom/Connection$VideoProvider;

    .line 1281
    return-void
.end method

.method public greylist-max-o onVideoStateChanged(Landroid/telecom/Connection;I)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "videoState"    # I

    .line 1271
    return-void
.end method
