.class abstract Landroid/telecom/Conference$Listener;
.super Ljava/lang/Object;
.source "Conference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Conference;
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
.method public blacklist onAddressChanged(Landroid/telecom/Conference;Landroid/net/Uri;I)V
    .locals 0

    return-void
.end method

.method public blacklist onCallDirectionChanged(Landroid/telecom/Conference;I)V
    .locals 0

    return-void
.end method

.method public blacklist onCallerDisplayNameChanged(Landroid/telecom/Conference;Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public blacklist onConferenceStateChanged(Landroid/telecom/Conference;Z)V
    .locals 0

    return-void
.end method

.method public greylist-max-o onConferenceableConnectionsChanged(Landroid/telecom/Conference;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Conference;",
            "Ljava/util/List<",
            "Landroid/telecom/Connection;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public greylist-max-o onConnectionAdded(Landroid/telecom/Conference;Landroid/telecom/Connection;)V
    .locals 0

    return-void
.end method

.method public greylist-max-o onConnectionCapabilitiesChanged(Landroid/telecom/Conference;I)V
    .locals 0

    return-void
.end method

.method public blacklist onConnectionEvent(Landroid/telecom/Conference;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public greylist-max-o onConnectionPropertiesChanged(Landroid/telecom/Conference;I)V
    .locals 0

    return-void
.end method

.method public greylist-max-o onConnectionRemoved(Landroid/telecom/Conference;Landroid/telecom/Connection;)V
    .locals 0

    return-void
.end method

.method public greylist-max-o onDestroyed(Landroid/telecom/Conference;)V
    .locals 0

    return-void
.end method

.method public greylist-max-o onDisconnected(Landroid/telecom/Conference;Landroid/telecom/DisconnectCause;)V
    .locals 0

    return-void
.end method

.method public greylist-max-o onExtrasChanged(Landroid/telecom/Conference;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public greylist-max-o onExtrasRemoved(Landroid/telecom/Conference;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Conference;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public blacklist onRingbackRequested(Landroid/telecom/Conference;Z)V
    .locals 0

    return-void
.end method

.method public greylist-max-o onStateChanged(Landroid/telecom/Conference;II)V
    .locals 0

    return-void
.end method

.method public greylist-max-o onStatusHintsChanged(Landroid/telecom/Conference;Landroid/telecom/StatusHints;)V
    .locals 0

    return-void
.end method

.method public greylist-max-o onVideoProviderChanged(Landroid/telecom/Conference;Landroid/telecom/Connection$VideoProvider;)V
    .locals 0

    return-void
.end method

.method public greylist-max-o onVideoStateChanged(Landroid/telecom/Conference;I)V
    .locals 0

    return-void
.end method
