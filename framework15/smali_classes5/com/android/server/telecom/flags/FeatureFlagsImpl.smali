.class public final Lcom/android/server/telecom/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/server/telecom/flags/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist addCallUriForMissedCalls()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist associatedUserRefactorForWorkProfile()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist availableRoutesNeverUpdatedAfterSetSystemAudioState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist businessCallComposer()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist cacheCallAudioCallbacks()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist callAudioCommunicationDeviceRefactor()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist callDetailsIdChanges()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist cancelRemovalOnEmergencyRedial()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist clearCommunicationDeviceAfterAudioOpsComplete()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist communicationDeviceProtectedByLock()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist earlyBindingToIncallService()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist earlyUpdateInternalCallAudioState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist eccKeyguard()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableCallSequencing()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist ensureAudioModeUpdatesOnForegroundCallChange()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist fixAudioFlickerForOutgoingCalls()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist genAnomReportOnFocusTimeout()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist getLastKnownCellIdentity()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist getRegisteredPhoneAccounts()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist ignoreAutoRouteToWatchDevice()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist isNewOutgoingCallBroadcastUnblocking()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist onlyUpdateTelephonyOnValidSubIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist postponeRegisterToLeaudio()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist profileUserSupport()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist resetMuteWhenEnteringQuiescentBtRoute()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist resolveSwitchingBtDevicesComputation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist separatelyBindToBtIncallService()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist setAudioModeBeforeAbandonFocus()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist setMuteState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist setRemoteConnectionCallId()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist skipFilterPhoneAccountPerformDndFilter()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist telecomLogExternalWearableCalls()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist telecomMainlineBlockedNumbersManager()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist telecomResolveHiddenDependencies()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist telecomSkipLogBasedOnExtra()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist telephonyHasDefaultButTelecomDoesNot()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist transactionalCsVerifier()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist transactionalHoldDisconnectsUnholdable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist transactionalVideoState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist transitRouteBeforeAudioDisconnectBt()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist unregisterUnresolvableAccounts()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist updateRouteMaskWhenBtConnected()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist updatedRcsCallCountTracking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist useActualAddressToEnterConnectingState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist useDeviceProvidedSerializedRingerVibration()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist useImprovedListenerOrder()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist useRefactoredAudioRouteSwitching()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist voipAppActionsSupport()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
