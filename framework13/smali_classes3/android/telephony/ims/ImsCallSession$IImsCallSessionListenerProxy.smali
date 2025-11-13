.class Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;
.super Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;
.source "ImsCallSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/ImsCallSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IImsCallSessionListenerProxy"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/ims/ImsCallSession;


# direct methods
.method private constructor blacklist <init>(Landroid/telephony/ims/ImsCallSession;)V
    .locals 0

    .line 1289
    iput-object p1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-direct {p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;-><init>(Landroid/telephony/ims/ImsCallSession;)V

    return-void
.end method


# virtual methods
.method public blacklist callQualityChanged(Landroid/telephony/CallQuality;)V
    .locals 2
    .param p1, "callQuality"    # Landroid/telephony/CallQuality;

    .line 1795
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda8;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/CallQuality;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1800
    return-void
.end method

.method public blacklist callSessionCancelTransferFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1763
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1764
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionCancelTransferFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 1766
    :cond_0
    return-void
.end method

.method public blacklist callSessionCancelTransferred()V
    .locals 2

    .line 1756
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1757
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionCancelTransferred(Landroid/telephony/ims/ImsCallSession;)V

    .line 1759
    :cond_0
    return-void
.end method

.method public greylist-max-o callSessionConferenceExtendFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1514
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda36;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda36;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsReasonInfo;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1520
    return-void
.end method

.method public greylist-max-o callSessionConferenceExtendReceived(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "newSession"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1525
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda27;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda27;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1531
    return-void
.end method

.method public greylist-max-o callSessionConferenceExtended(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "newSession"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1504
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1510
    return-void
.end method

.method public greylist-max-o callSessionConferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V
    .locals 2
    .param p1, "state"    # Landroid/telephony/ims/ImsConferenceState;

    .line 1581
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda18;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsConferenceState;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1586
    return-void
.end method

.method public blacklist callSessionDtmfReceived(C)V
    .locals 2
    .param p1, "dtmf"    # C

    .line 1783
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda12;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;C)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1788
    return-void
.end method

.method public greylist-max-o callSessionHandover(IILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "srcNetworkType"    # I
    .param p2, "targetNetworkType"    # I
    .param p3, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1628
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda5;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;IILandroid/telephony/ims/ImsReasonInfo;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1634
    return-void
.end method

.method public greylist-max-o callSessionHandoverFailed(IILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "srcNetworkType"    # I
    .param p2, "targetNetworkType"    # I
    .param p3, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1642
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda15;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;IILandroid/telephony/ims/ImsReasonInfo;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1648
    return-void
.end method

.method public greylist-max-o callSessionHeld(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1358
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda30;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda30;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsCallProfile;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1363
    return-void
.end method

.method public greylist-max-o callSessionHoldFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1367
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda4;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsReasonInfo;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1372
    return-void
.end method

.method public greylist-max-o callSessionHoldReceived(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1376
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda33;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda33;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsCallProfile;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1381
    return-void
.end method

.method public blacklist callSessionImsCallEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1770
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1771
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionImsCallEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1773
    :cond_0
    return-void
.end method

.method public greylist-max-o callSessionInitiated(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1319
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda16;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsCallProfile;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1324
    return-void
.end method

.method public greylist-max-o callSessionInitiatedFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1337
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda14;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsReasonInfo;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1342
    return-void
.end method

.method public blacklist callSessionInitiating(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1295
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda40;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda40;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsCallProfile;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1300
    return-void
.end method

.method public blacklist callSessionInitiatingFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1328
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda25;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda25;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsReasonInfo;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1333
    return-void
.end method

.method public greylist-max-o callSessionInviteParticipantsRequestDelivered()V
    .locals 2

    .line 1539
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda28;

    invoke-direct {v0, p0}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda28;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1545
    return-void
.end method

.method public greylist-max-o callSessionInviteParticipantsRequestFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1549
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda3;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsReasonInfo;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1555
    return-void
.end method

.method public greylist-max-o callSessionMayHandover(II)V
    .locals 2
    .param p1, "srcNetworkType"    # I
    .param p2, "targetNetworkType"    # I

    .line 1614
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda32;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda32;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;II)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1620
    return-void
.end method

.method public greylist-max-o callSessionMergeComplete(Lcom/android/ims/internal/IImsCallSession;)V
    .locals 2
    .param p1, "newSession"    # Lcom/android/ims/internal/IImsCallSession;

    .line 1441
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda11;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1452
    return-void
.end method

.method public greylist-max-o callSessionMergeFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1461
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda19;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsReasonInfo;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1466
    return-void
.end method

.method public greylist-max-o callSessionMergeStarted(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 3
    .param p1, "newSession"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1420
    const-string v0, "ImsCallSession"

    const-string v1, "callSessionMergeStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1424
    :try_start_0
    new-instance v0, Landroid/telephony/ims/ImsCallSession;

    invoke-direct {v0, p1}, Landroid/telephony/ims/ImsCallSession;-><init>(Lcom/android/ims/internal/IImsCallSession;)V

    .line 1425
    .local v0, "newConferenceSession":Landroid/telephony/ims/ImsCallSession;
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/android/ims/internal/IImsCallSession;->setListener(Landroid/telephony/ims/aidl/IImsCallSessionListener;)V

    .line 1426
    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1, v2, v0, p2}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionMergeStarted(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1429
    .end local v0    # "newConferenceSession":Landroid/telephony/ims/ImsCallSession;
    goto :goto_0

    .line 1428
    :catch_0
    move-exception v0

    .line 1432
    :cond_0
    :goto_0
    return-void
.end method

.method public greylist-max-o callSessionMultipartyStateChanged(Z)V
    .locals 2
    .param p1, "isMultiParty"    # Z

    .line 1669
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda39;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda39;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Z)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1675
    return-void
.end method

.method public greylist-max-o callSessionProgressing(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 2
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 1304
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda7;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsStreamMediaProfile;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1315
    return-void
.end method

.method public greylist-max-o callSessionRemoveParticipantsRequestDelivered()V
    .locals 2

    .line 1559
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda26;

    invoke-direct {v0, p0}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda26;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1564
    return-void
.end method

.method public greylist-max-o callSessionRemoveParticipantsRequestFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1568
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda10;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsReasonInfo;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1574
    return-void
.end method

.method public greylist-max-o callSessionResumeFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1394
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda22;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda22;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsReasonInfo;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1399
    return-void
.end method

.method public greylist-max-o callSessionResumeReceived(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1403
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda21;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsCallProfile;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1408
    return-void
.end method

.method public greylist-max-o callSessionResumed(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1385
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda17;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsCallProfile;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1390
    return-void
.end method

.method public blacklist callSessionRtpHeaderExtensionsReceived(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RtpHeaderExtension;",
            ">;)V"
        }
    .end annotation

    .line 1809
    .local p1, "extensions":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RtpHeaderExtension;>;"
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda13;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Ljava/util/List;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1815
    return-void
.end method

.method public blacklist callSessionRttAudioIndicatorChanged(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 2
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 1729
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda38;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda38;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsStreamMediaProfile;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1734
    return-void
.end method

.method public greylist-max-o callSessionRttMessageReceived(Ljava/lang/String;)V
    .locals 2
    .param p1, "rttMessage"    # Ljava/lang/String;

    .line 1717
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda9;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1722
    return-void
.end method

.method public greylist-max-o callSessionRttModifyRequestReceived(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "callProfile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1692
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda34;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda34;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsCallProfile;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1698
    return-void
.end method

.method public greylist-max-o callSessionRttModifyResponseReceived(I)V
    .locals 2
    .param p1, "status"    # I

    .line 1705
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda37;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda37;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;I)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1710
    return-void
.end method

.method public greylist-max-o callSessionSuppServiceReceived(Landroid/telephony/ims/ImsSuppServiceNotification;)V
    .locals 2
    .param p1, "suppServiceInfo"    # Landroid/telephony/ims/ImsSuppServiceNotification;

    .line 1679
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda2;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsSuppServiceNotification;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1685
    return-void
.end method

.method public greylist-max-o callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1346
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda24;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda24;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsReasonInfo;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1351
    return-void
.end method

.method public blacklist callSessionTransferFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1747
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda6;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsReasonInfo;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1752
    return-void
.end method

.method public blacklist callSessionTransferred()V
    .locals 2

    .line 1738
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1743
    return-void
.end method

.method public greylist-max-o callSessionTtyModeReceived(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 1655
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda29;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda29;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;I)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1660
    return-void
.end method

.method public greylist-max-o callSessionUpdateFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1482
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda20;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsReasonInfo;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1487
    return-void
.end method

.method public greylist-max-o callSessionUpdateReceived(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1491
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda23;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda23;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsCallProfile;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1496
    return-void
.end method

.method public greylist-max-o callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1473
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda35;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda35;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsCallProfile;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1478
    return-void
.end method

.method public greylist-max-o callSessionUssdMessageReceived(ILjava/lang/String;)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "ussdMessage"    # Ljava/lang/String;

    .line 1593
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda31;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda31;-><init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;ILjava/lang/String;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1599
    return-void
.end method

.method synthetic blacklist lambda$callQualityChanged$39$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy(Landroid/telephony/CallQuality;)V
    .locals 1
    .param p1, "callQuality"    # Landroid/telephony/CallQuality;

    .line 1796
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1797
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callQualityChanged(Landroid/telephony/CallQuality;)V

    .line 1799
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$callSessionConferenceExtendFailed$18$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1515
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1516
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionConferenceExtendFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 1519
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$callSessionConferenceExtendReceived$19$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 3
    .param p1, "newSession"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1526
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1527
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    new-instance v2, Landroid/telephony/ims/ImsCallSession;

    invoke-direct {v2, p1}, Landroid/telephony/ims/ImsCallSession;-><init>(Lcom/android/ims/internal/IImsCallSession;)V

    invoke-virtual {v0, v1, v2, p2}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionConferenceExtendReceived(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 1530
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$callSessionConferenceExtended$17$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 3
    .param p1, "newSession"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1505
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1506
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    new-instance v2, Landroid/telephony/ims/ImsCallSession;

    invoke-direct {v2, p1}, Landroid/telephony/ims/ImsCallSession;-><init>(Lcom/android/ims/internal/IImsCallSession;)V

    invoke-virtual {v0, v1, v2, p2}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionConferenceExtended(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 1509
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$callSessionConferenceStateUpdated$24$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy(Landroid/telephony/ims/ImsConferenceState;)V
    .locals 2
    .param p1, "state"    # Landroid/telephony/ims/ImsConferenceState;

    .line 1582
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1583
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionConferenceStateUpdated(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsConferenceState;)V

    .line 1585
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$callSessionDtmfReceived$38$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy(C)V
    .locals 1
    .param p1, "dtmf"    # C

    .line 1784
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1785
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionDtmfReceived(C)V

    .line 1787
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$callSessionHandover$27$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy(IILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "srcNetworkType"    # I
    .param p2, "targetNetworkType"    # I
    .param p3, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1629
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1630
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionHandover(Landroid/telephony/ims/ImsCallSession;IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1633
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$callSessionHandoverFailed$28$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy(IILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "srcNetworkType"    # I
    .param p2, "targetNetworkType"    # I
    .param p3, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1643
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1644
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionHandoverFailed(Landroid/telephony/ims/ImsCallSession;IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1647
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$callSessionHeld$6$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1359
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1360
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionHeld(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 1362
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$callSessionHoldFailed$7$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1368
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1369
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionHoldFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 1371
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$callSessionHoldReceived$8$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1377
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1378
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionHoldReceived(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 1380
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$callSessionInitiated$2$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1320
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1321
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionStarted(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 1323
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$callSessionInitiatedFailed$4$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1338
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1339
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionStartFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 1341
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$callSessionInitiating$0$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1296
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1297
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionInitiating(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 1299
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$callSessionInitiatingFailed$3$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1329
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1330
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionStartFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 1332
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$callSessionInviteParticipantsRequestDelivered$20$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy()V
    .locals 2

    .line 1540
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1541
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionInviteParticipantsRequestDelivered(Landroid/telephony/ims/ImsCallSession;)V

    .line 1544
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$callSessionInviteParticipantsRequestFailed$21$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1550
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1551
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionInviteParticipantsRequestFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 1554
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$callSessionMayHandover$26$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy(II)V
    .locals 2
    .param p1, "srcNetworkType"    # I
    .param p2, "targetNetworkType"    # I

    .line 1615
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1616
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1, p2}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionMayHandover(Landroid/telephony/ims/ImsCallSession;II)V

    .line 1619
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$callSessionMergeComplete$12$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy(Lcom/android/ims/internal/IImsCallSession;)V
    .locals 2
    .param p1, "newSession"    # Lcom/android/ims/internal/IImsCallSession;

    .line 1442
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1443
    if-eqz p1, :cond_0

    .line 1445
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    new-instance v1, Landroid/telephony/ims/ImsCallSession;

    invoke-direct {v1, p1}, Landroid/telephony/ims/ImsCallSession;-><init>(Lcom/android/ims/internal/IImsCallSession;)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionMergeComplete(Landroid/telephony/ims/ImsCallSession;)V

    goto :goto_0

    .line 1448
    :cond_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionMergeComplete(Landroid/telephony/ims/ImsCallSession;)V

    .line 1451
    :cond_1
    :goto_0
    return-void
.end method

.method synthetic blacklist lambda$callSessionMergeFailed$13$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1462
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1463
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionMergeFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 1465
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$callSessionMultipartyStateChanged$30$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy(Z)V
    .locals 2
    .param p1, "isMultiParty"    # Z

    .line 1670
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1671
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionMultipartyStateChanged(Landroid/telephony/ims/ImsCallSession;Z)V

    .line 1674
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$callSessionProgressing$1$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 2
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 1306
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmClosed(Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1307
    const-string v0, "ImsCallSession"

    const-string v1, "The session is closed so don\'t notify callSessionProgressing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    return-void

    .line 1311
    :cond_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1312
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionProgressing(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 1314
    :cond_1
    return-void
.end method

.method synthetic blacklist lambda$callSessionRemoveParticipantsRequestDelivered$22$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy()V
    .locals 2

    .line 1560
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1561
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionRemoveParticipantsRequestDelivered(Landroid/telephony/ims/ImsCallSession;)V

    .line 1563
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$callSessionRemoveParticipantsRequestFailed$23$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1569
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1570
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionRemoveParticipantsRequestFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 1573
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$callSessionResumeFailed$10$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1395
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1396
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionResumeFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 1398
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$callSessionResumeReceived$11$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1404
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1405
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionResumeReceived(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 1407
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$callSessionResumed$9$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1386
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1387
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionResumed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 1389
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$callSessionRtpHeaderExtensionsReceived$40$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy(Ljava/util/List;)V
    .locals 2
    .param p1, "extensions"    # Ljava/util/List;

    .line 1810
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1811
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, p1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionRtpHeaderExtensionsReceived(Ljava/util/Set;)V

    .line 1814
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$callSessionRttAudioIndicatorChanged$35$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 1
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 1730
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1731
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionRttAudioIndicatorChanged(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 1733
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$callSessionRttMessageReceived$34$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy(Ljava/lang/String;)V
    .locals 1
    .param p1, "rttMessage"    # Ljava/lang/String;

    .line 1718
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1719
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionRttMessageReceived(Ljava/lang/String;)V

    .line 1721
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$callSessionRttModifyRequestReceived$32$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "callProfile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1693
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1694
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionRttModifyRequestReceived(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 1697
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$callSessionRttModifyResponseReceived$33$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy(I)V
    .locals 1
    .param p1, "status"    # I

    .line 1706
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1707
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionRttModifyResponseReceived(I)V

    .line 1709
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$callSessionSuppServiceReceived$31$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy(Landroid/telephony/ims/ImsSuppServiceNotification;)V
    .locals 2
    .param p1, "suppServiceInfo"    # Landroid/telephony/ims/ImsSuppServiceNotification;

    .line 1680
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1681
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionSuppServiceReceived(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsSuppServiceNotification;)V

    .line 1684
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$callSessionTerminated$5$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1347
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1348
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionTerminated(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 1350
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$callSessionTransferFailed$37$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1748
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1749
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionTransferFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 1751
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$callSessionTransferred$36$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy()V
    .locals 2

    .line 1739
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1740
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionTransferred(Landroid/telephony/ims/ImsCallSession;)V

    .line 1742
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$callSessionTtyModeReceived$29$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 1656
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1657
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionTtyModeReceived(Landroid/telephony/ims/ImsCallSession;I)V

    .line 1659
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$callSessionUpdateFailed$15$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1483
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1484
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionUpdateFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 1486
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$callSessionUpdateReceived$16$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1492
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1493
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionUpdateReceived(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 1495
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$callSessionUpdated$14$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1474
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1475
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionUpdated(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 1477
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$callSessionUssdMessageReceived$25$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy(ILjava/lang/String;)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "ussdMessage"    # Ljava/lang/String;

    .line 1594
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1595
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1, p2}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionUssdMessageReceived(Landroid/telephony/ims/ImsCallSession;ILjava/lang/String;)V

    .line 1598
    :cond_0
    return-void
.end method
