.class public Landroid/telephony/ims/ImsCallSession$Listener;
.super Ljava/lang/Object;
.source "ImsCallSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/ImsCallSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Listener"
.end annotation


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist callQualityChanged(Landroid/telephony/CallQuality;)V
    .locals 0
    .param p1, "callQuality"    # Landroid/telephony/CallQuality;

    .line 511
    return-void
.end method

.method public blacklist callSessionCancelTransferFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 536
    return-void
.end method

.method public blacklist callSessionCancelTransferred(Landroid/telephony/ims/ImsCallSession;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;

    .line 527
    return-void
.end method

.method public greylist-max-o callSessionConferenceExtendFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 300
    return-void
.end method

.method public greylist-max-o callSessionConferenceExtendReceived(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "newSession"    # Landroid/telephony/ims/ImsCallSession;
    .param p3, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 310
    return-void
.end method

.method public greylist-max-o callSessionConferenceExtended(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "newSession"    # Landroid/telephony/ims/ImsCallSession;
    .param p3, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 290
    return-void
.end method

.method public greylist-max-o callSessionConferenceStateUpdated(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsConferenceState;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "state"    # Landroid/telephony/ims/ImsConferenceState;

    .line 362
    return-void
.end method

.method public blacklist callSessionDtmfReceived(C)V
    .locals 0
    .param p1, "digit"    # C

    .line 507
    return-void
.end method

.method public greylist-max-o callSessionHandover(Landroid/telephony/ims/ImsCallSession;IILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "srcNetworkType"    # I
    .param p3, "targetNetworkType"    # I
    .param p4, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 405
    return-void
.end method

.method public greylist-max-o callSessionHandoverFailed(Landroid/telephony/ims/ImsCallSession;IILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "srcNetworkType"    # I
    .param p3, "targetNetworkType"    # I
    .param p4, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 419
    return-void
.end method

.method public greylist-max-o callSessionHeld(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 173
    return-void
.end method

.method public greylist-max-o callSessionHoldFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 183
    return-void
.end method

.method public greylist-max-o callSessionHoldReceived(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 192
    return-void
.end method

.method public blacklist callSessionImsCallEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 546
    return-void
.end method

.method public blacklist callSessionInitiating(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 114
    return-void
.end method

.method public blacklist callSessionInitiatingFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 124
    return-void
.end method

.method public greylist-max-o callSessionInviteParticipantsRequestDelivered(Landroid/telephony/ims/ImsCallSession;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;

    .line 320
    return-void
.end method

.method public greylist-max-o callSessionInviteParticipantsRequestFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 331
    return-void
.end method

.method public greylist-max-o callSessionMayHandover(Landroid/telephony/ims/ImsCallSession;II)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "srcNetworkType"    # I
    .param p3, "targetNetworkType"    # I

    .line 391
    return-void
.end method

.method public greylist-max-o callSessionMergeComplete(Landroid/telephony/ims/ImsCallSession;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;

    .line 240
    return-void
.end method

.method public greylist-max-o callSessionMergeFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 250
    return-void
.end method

.method public greylist-max-o callSessionMergeStarted(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "newSession"    # Landroid/telephony/ims/ImsCallSession;
    .param p3, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 232
    return-void
.end method

.method public greylist-max-o callSessionMultipartyStateChanged(Landroid/telephony/ims/ImsCallSession;Z)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "isMultiParty"    # Z

    .line 442
    return-void
.end method

.method public greylist-max-o callSessionProgressing(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 134
    return-void
.end method

.method public greylist-max-o callSessionRemoveParticipantsRequestDelivered(Landroid/telephony/ims/ImsCallSession;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;

    .line 341
    return-void
.end method

.method public greylist-max-o callSessionRemoveParticipantsRequestFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 352
    return-void
.end method

.method public greylist-max-o callSessionResumeFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 211
    return-void
.end method

.method public greylist-max-o callSessionResumeReceived(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 220
    return-void
.end method

.method public greylist-max-o callSessionResumed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 201
    return-void
.end method

.method public blacklist callSessionRtpHeaderExtensionsReceived(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/RtpHeaderExtension;",
            ">;)V"
        }
    .end annotation

    .line 519
    .local p1, "extensions":Ljava/util/Set;, "Ljava/util/Set<Landroid/telephony/ims/RtpHeaderExtension;>;"
    return-void
.end method

.method public blacklist callSessionRttAudioIndicatorChanged(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 0
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 480
    return-void
.end method

.method public greylist-max-o callSessionRttMessageReceived(Ljava/lang/String;)V
    .locals 0
    .param p1, "rttMessage"    # Ljava/lang/String;

    .line 473
    return-void
.end method

.method public greylist-max-o callSessionRttModifyRequestReceived(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "callProfile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 459
    return-void
.end method

.method public greylist-max-o callSessionRttModifyResponseReceived(I)V
    .locals 0
    .param p1, "status"    # I

    .line 466
    return-void
.end method

.method public greylist-max-o callSessionStartFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 154
    return-void
.end method

.method public greylist-max-o callSessionStarted(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 144
    return-void
.end method

.method public greylist-max-o callSessionSuppServiceReceived(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsSuppServiceNotification;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "suppServiceInfo"    # Landroid/telephony/ims/ImsSuppServiceNotification;

    .line 451
    return-void
.end method

.method public greylist-max-o callSessionTerminated(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 164
    return-void
.end method

.method public blacklist callSessionTransferFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 495
    return-void
.end method

.method public blacklist callSessionTransferred(Landroid/telephony/ims/ImsCallSession;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;

    .line 487
    return-void
.end method

.method public greylist-max-o callSessionTtyModeReceived(Landroid/telephony/ims/ImsCallSession;I)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "mode"    # I

    .line 430
    return-void
.end method

.method public greylist-max-o callSessionUpdateFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 269
    return-void
.end method

.method public greylist-max-o callSessionUpdateReceived(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 279
    return-void
.end method

.method public greylist-max-o callSessionUpdated(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 259
    return-void
.end method

.method public greylist-max-o callSessionUssdMessageReceived(Landroid/telephony/ims/ImsCallSession;ILjava/lang/String;)V
    .locals 0
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "mode"    # I
    .param p3, "ussdMessage"    # Ljava/lang/String;

    .line 373
    return-void
.end method
