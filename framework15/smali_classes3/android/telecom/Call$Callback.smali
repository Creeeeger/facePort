.class public abstract Landroid/telecom/Call$Callback;
.super Ljava/lang/Object;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Call$Callback$HandoverFailureErrors;
    }
.end annotation


# static fields
.field public static final whitelist HANDOVER_FAILURE_DEST_APP_REJECTED:I = 0x1

.field public static final whitelist HANDOVER_FAILURE_NOT_SUPPORTED:I = 0x2

.field public static final whitelist HANDOVER_FAILURE_ONGOING_EMERGENCY_CALL:I = 0x4

.field public static final whitelist HANDOVER_FAILURE_UNKNOWN:I = 0x5

.field public static final whitelist HANDOVER_FAILURE_USER_REJECTED:I = 0x3


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onCallDestroyed(Landroid/telecom/Call;)V
    .locals 0

    return-void
.end method

.method public whitelist onCannedTextResponsesLoaded(Landroid/telecom/Call;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Call;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public whitelist onChildrenChanged(Landroid/telecom/Call;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Call;",
            "Ljava/util/List<",
            "Landroid/telecom/Call;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public whitelist onConferenceableCallsChanged(Landroid/telecom/Call;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Call;",
            "Ljava/util/List<",
            "Landroid/telecom/Call;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public whitelist onConnectionEvent(Landroid/telecom/Call;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public whitelist onDetailsChanged(Landroid/telecom/Call;Landroid/telecom/Call$Details;)V
    .locals 0

    return-void
.end method

.method public whitelist onHandoverComplete(Landroid/telecom/Call;)V
    .locals 0

    return-void
.end method

.method public whitelist onHandoverFailed(Landroid/telecom/Call;I)V
    .locals 0

    return-void
.end method

.method public whitelist onParentChanged(Landroid/telecom/Call;Landroid/telecom/Call;)V
    .locals 0

    return-void
.end method

.method public whitelist onPostDialWait(Landroid/telecom/Call;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public whitelist onRttInitiationFailure(Landroid/telecom/Call;I)V
    .locals 0

    return-void
.end method

.method public whitelist onRttModeChanged(Landroid/telecom/Call;I)V
    .locals 0

    return-void
.end method

.method public whitelist onRttRequest(Landroid/telecom/Call;I)V
    .locals 0

    return-void
.end method

.method public whitelist onRttStatusChanged(Landroid/telecom/Call;ZLandroid/telecom/Call$RttCall;)V
    .locals 0

    return-void
.end method

.method public whitelist onStateChanged(Landroid/telecom/Call;I)V
    .locals 0

    return-void
.end method

.method public whitelist onVideoCallChanged(Landroid/telecom/Call;Landroid/telecom/InCallService$VideoCall;)V
    .locals 0

    return-void
.end method
