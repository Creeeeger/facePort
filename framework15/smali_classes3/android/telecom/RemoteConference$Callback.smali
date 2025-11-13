.class public abstract Landroid/telecom/RemoteConference$Callback;
.super Ljava/lang/Object;
.source "RemoteConference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/RemoteConference;
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
.method public whitelist onConferenceableConnectionsChanged(Landroid/telecom/RemoteConference;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/RemoteConference;",
            "Ljava/util/List<",
            "Landroid/telecom/RemoteConnection;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public whitelist onConnectionAdded(Landroid/telecom/RemoteConference;Landroid/telecom/RemoteConnection;)V
    .locals 0

    return-void
.end method

.method public whitelist onConnectionCapabilitiesChanged(Landroid/telecom/RemoteConference;I)V
    .locals 0

    return-void
.end method

.method public whitelist onConnectionPropertiesChanged(Landroid/telecom/RemoteConference;I)V
    .locals 0

    return-void
.end method

.method public whitelist onConnectionRemoved(Landroid/telecom/RemoteConference;Landroid/telecom/RemoteConnection;)V
    .locals 0

    return-void
.end method

.method public whitelist onDestroyed(Landroid/telecom/RemoteConference;)V
    .locals 0

    return-void
.end method

.method public whitelist onDisconnected(Landroid/telecom/RemoteConference;Landroid/telecom/DisconnectCause;)V
    .locals 0

    return-void
.end method

.method public whitelist onExtrasChanged(Landroid/telecom/RemoteConference;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public whitelist onStateChanged(Landroid/telecom/RemoteConference;II)V
    .locals 0

    return-void
.end method
