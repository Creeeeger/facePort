.class Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;
.super Lcom/android/internal/telephony/IPhoneStateListener$Stub;
.source "PhoneStateListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IPhoneStateListenerStub"
.end annotation


# instance fields
.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private greylist-max-o mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/telephony/PhoneStateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$-2I0FwvY-1OTdkWjkKiEZ-6_r1U(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/ServiceState;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->lambda$onServiceStateChanged$1(Landroid/telephony/PhoneStateListener;Landroid/telephony/ServiceState;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$-Dx7IXgthN4GSupnSViArHwxu1c(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->lambda$onRadioPowerStateChanged$53(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$2xIrY8wCgCY8rMik4w0sSAbku6M(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/PreciseCallState;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->lambda$onPreciseCallStateChanged$23(Landroid/telephony/PhoneStateListener;Landroid/telephony/PreciseCallState;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$4ZMDYm1MQ6mhEoUaXuW4AazbAec(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/CallAttributes;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->lambda$onCallStatesChanged$55(Landroid/telephony/PhoneStateListener;Landroid/telephony/CallAttributes;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$79IzSETkopHT-hH__CLgaXzNbj8(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->lambda$onDataConnectionStateChanged$15(Landroid/telephony/PhoneStateListener;II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$8bJUrf1cF8_BRNmPuK4wmPMushI(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->lambda$onDataActivity$17(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$9bWY7-hTXIqExgaJ5DbkiyEPy1w(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->lambda$onCallDisconnectCauseChanged$25(Landroid/telephony/PhoneStateListener;II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$A2rN19a03XmC2XSFWH36e3rIqZc(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->lambda$onSignalStrengthChanged$3(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$BlC9Gvh9CzQ4QtcIevumeeQD-78(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/DataConnectionRealTimeInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->lambda$onDataConnectionRealTimeInfoChanged$29(Landroid/telephony/PhoneStateListener;Landroid/telephony/DataConnectionRealTimeInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Dz5AkscaWTsgTPVlGUHpDwF5qIQ(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/PhoneCapability;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->lambda$onPhoneCapabilityChanged$51(Landroid/telephony/PhoneStateListener;Landroid/telephony/PhoneCapability;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$EzDPap-lgtYtF9YYZziv5HHtu-4(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->lambda$onImsCallDisconnectCauseChanged$59(Landroid/telephony/PhoneStateListener;Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$HZB1CexPd0I5VDHsMB9wyu47XfU(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->lambda$onLegacyCallStateChanged$11(Landroid/telephony/PhoneStateListener;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$M9Z8E0-W6VvMLxluyuBP-B_vWas(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->lambda$onMessageWaitingIndicatorChanged$5(Landroid/telephony/PhoneStateListener;Z)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$MSfx2el4Bndvelsgf3fvnYxbCno(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/CellIdentity;Ljava/lang/String;III)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->lambda$onRegistrationFailed$61(Landroid/telephony/PhoneStateListener;Landroid/telephony/CellIdentity;Ljava/lang/String;III)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$RSBTkVQZVNkVKEJru1cbHitR7Tw(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->lambda$onActiveDataSubIdChanged$57(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$RmFNYTuzgIFKIwld7rDmBdMPwDo(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->lambda$onDataConnectionStateChanged$13(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$UN-40ZmG4XQK1yA_161PG6Bfx9A(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/emergency/EmergencyNumber;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->lambda$onOutgoingEmergencySms$49(Landroid/telephony/PhoneStateListener;Landroid/telephony/emergency/EmergencyNumber;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$VhnTd90XKmF_DMekum7QVdaWsJQ(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->lambda$onCallForwardingIndicatorChanged$7(Landroid/telephony/PhoneStateListener;Z)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$YDlWElvJwvoGlZfk8FBg87sWhGA(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->lambda$onSrvccStateChanged$31(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$YbzwgrpOSUHSUfUxRlqpuH8VVk8(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->lambda$onCellInfoChanged$21(Landroid/telephony/PhoneStateListener;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ZX375TSOzhK62vJICfouX9DvIK4(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->lambda$onVoiceActivationStateChanged$33(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$acIkx0-fppyS7exHYzIp5IeliVg(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->lambda$onCarrierNetworkChange$43(Landroid/telephony/PhoneStateListener;Z)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$dYp24nVxYuHRDV-_pVQyi4m--TI(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->lambda$onUserMobileDataStateChanged$37(Landroid/telephony/PhoneStateListener;Z)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$dqj06W3tYHXn_7d8kYj9hhjOvIo(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/TelephonyDisplayInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->lambda$onDisplayInfoChanged$39(Landroid/telephony/PhoneStateListener;Landroid/telephony/TelephonyDisplayInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$evHVvwZSyLCS1bu59ts3E7EGkTw(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/SignalStrength;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->lambda$onSignalStrengthsChanged$19(Landroid/telephony/PhoneStateListener;Landroid/telephony/SignalStrength;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$kSt4d-CAs9WGLKZJbrcGRhY9i1E(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/emergency/EmergencyNumber;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->lambda$onOutgoingEmergencyCall$47(Landroid/telephony/PhoneStateListener;Landroid/telephony/emergency/EmergencyNumber;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$nrZn-85-L2j2nMPPrQLBI4fXJPQ(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->lambda$onDataActivationStateChanged$35(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$oPTGuBtiuHERsGyeXgMIBJXMHgQ(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/PreciseDataConnectionState;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->lambda$onPreciseDataConnectionStateChanged$27(Landroid/telephony/PhoneStateListener;Landroid/telephony/PreciseDataConnectionState;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$oSe_UsW_k8u6cR_SQ6f-c0ltVY0(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/CellLocation;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->lambda$onCellLocationChanged$9(Landroid/telephony/PhoneStateListener;Landroid/telephony/CellLocation;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$pAUD_68Pyie4wh6foOP21SU8OZk(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;[B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->lambda$onOemHookRawEvent$41(Landroid/telephony/PhoneStateListener;[B)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$pv-_hquLDankNhU2NybFPH8fbr4(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->lambda$onEmergencyNumberListChanged$45(Landroid/telephony/PhoneStateListener;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$vZOb_xPD6wW3PFnpXN6rqyxf2Vg(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/BarringInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->lambda$onBarringInfoChanged$63(Landroid/telephony/PhoneStateListener;Landroid/telephony/BarringInfo;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/telephony/PhoneStateListener;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic blacklist lambda$onActiveDataSubIdChanged$56(Landroid/telephony/PhoneStateListener;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onActiveDataSubscriptionIdChanged(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onActiveDataSubIdChanged$57(Landroid/telephony/PhoneStateListener;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda15;

    invoke-direct {v1, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda15;-><init>(Landroid/telephony/PhoneStateListener;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onBarringInfoChanged$62(Landroid/telephony/PhoneStateListener;Landroid/telephony/BarringInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onBarringInfoChanged(Landroid/telephony/BarringInfo;)V

    return-void
.end method

.method private synthetic blacklist lambda$onBarringInfoChanged$63(Landroid/telephony/PhoneStateListener;Landroid/telephony/BarringInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda44;

    invoke-direct {v1, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda44;-><init>(Landroid/telephony/PhoneStateListener;Landroid/telephony/BarringInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onCallDisconnectCauseChanged$24(Landroid/telephony/PhoneStateListener;II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallDisconnectCauseChanged(II)V

    return-void
.end method

.method private synthetic blacklist lambda$onCallDisconnectCauseChanged$25(Landroid/telephony/PhoneStateListener;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda8;

    invoke-direct {v1, p1, p2, p3}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda8;-><init>(Landroid/telephony/PhoneStateListener;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onCallForwardingIndicatorChanged$6(Landroid/telephony/PhoneStateListener;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onCallForwardingIndicatorChanged(Z)V

    return-void
.end method

.method private synthetic blacklist lambda$onCallForwardingIndicatorChanged$7(Landroid/telephony/PhoneStateListener;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda41;

    invoke-direct {v1, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda41;-><init>(Landroid/telephony/PhoneStateListener;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onCallStatesChanged$54(Landroid/telephony/PhoneStateListener;Landroid/telephony/CallAttributes;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onCallAttributesChanged(Landroid/telephony/CallAttributes;)V

    return-void
.end method

.method private synthetic blacklist lambda$onCallStatesChanged$55(Landroid/telephony/PhoneStateListener;Landroid/telephony/CallAttributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda30;

    invoke-direct {v1, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda30;-><init>(Landroid/telephony/PhoneStateListener;Landroid/telephony/CallAttributes;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onCarrierNetworkChange$42(Landroid/telephony/PhoneStateListener;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onCarrierNetworkChange(Z)V

    return-void
.end method

.method private synthetic blacklist lambda$onCarrierNetworkChange$43(Landroid/telephony/PhoneStateListener;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda55;

    invoke-direct {v1, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda55;-><init>(Landroid/telephony/PhoneStateListener;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onCellInfoChanged$20(Landroid/telephony/PhoneStateListener;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onCellInfoChanged(Ljava/util/List;)V

    return-void
.end method

.method private synthetic blacklist lambda$onCellInfoChanged$21(Landroid/telephony/PhoneStateListener;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda39;

    invoke-direct {v1, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda39;-><init>(Landroid/telephony/PhoneStateListener;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onCellLocationChanged$8(Landroid/telephony/PhoneStateListener;Landroid/telephony/CellLocation;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onCellLocationChanged(Landroid/telephony/CellLocation;)V

    return-void
.end method

.method private synthetic blacklist lambda$onCellLocationChanged$9(Landroid/telephony/PhoneStateListener;Landroid/telephony/CellLocation;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda53;

    invoke-direct {v1, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda53;-><init>(Landroid/telephony/PhoneStateListener;Landroid/telephony/CellLocation;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onDataActivationStateChanged$34(Landroid/telephony/PhoneStateListener;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onDataActivationStateChanged(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onDataActivationStateChanged$35(Landroid/telephony/PhoneStateListener;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda47;

    invoke-direct {v1, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda47;-><init>(Landroid/telephony/PhoneStateListener;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onDataActivity$16(Landroid/telephony/PhoneStateListener;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onDataActivity(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onDataActivity$17(Landroid/telephony/PhoneStateListener;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda57;

    invoke-direct {v1, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda57;-><init>(Landroid/telephony/PhoneStateListener;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onDataConnectionRealTimeInfoChanged$28(Landroid/telephony/PhoneStateListener;Landroid/telephony/DataConnectionRealTimeInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onDataConnectionRealTimeInfoChanged(Landroid/telephony/DataConnectionRealTimeInfo;)V

    return-void
.end method

.method private synthetic blacklist lambda$onDataConnectionRealTimeInfoChanged$29(Landroid/telephony/PhoneStateListener;Landroid/telephony/DataConnectionRealTimeInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda16;

    invoke-direct {v1, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda16;-><init>(Landroid/telephony/PhoneStateListener;Landroid/telephony/DataConnectionRealTimeInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onDataConnectionStateChanged$12(Landroid/telephony/PhoneStateListener;I)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/telephony/PhoneStateListener;->onDataConnectionStateChanged(II)V

    invoke-virtual {p0, v0}, Landroid/telephony/PhoneStateListener;->onDataConnectionStateChanged(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onDataConnectionStateChanged$13(Landroid/telephony/PhoneStateListener;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda11;

    invoke-direct {v1, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda11;-><init>(Landroid/telephony/PhoneStateListener;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onDataConnectionStateChanged$14(Landroid/telephony/PhoneStateListener;II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onDataConnectionStateChanged(II)V

    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onDataConnectionStateChanged(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onDataConnectionStateChanged$15(Landroid/telephony/PhoneStateListener;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda61;

    invoke-direct {v1, p1, p2, p3}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda61;-><init>(Landroid/telephony/PhoneStateListener;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onDisplayInfoChanged$38(Landroid/telephony/PhoneStateListener;Landroid/telephony/TelephonyDisplayInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V

    return-void
.end method

.method private synthetic blacklist lambda$onDisplayInfoChanged$39(Landroid/telephony/PhoneStateListener;Landroid/telephony/TelephonyDisplayInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda23;

    invoke-direct {v1, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda23;-><init>(Landroid/telephony/PhoneStateListener;Landroid/telephony/TelephonyDisplayInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onEmergencyNumberListChanged$44(Landroid/telephony/PhoneStateListener;Ljava/util/Map;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onEmergencyNumberListChanged(Ljava/util/Map;)V

    return-void
.end method

.method private synthetic blacklist lambda$onEmergencyNumberListChanged$45(Landroid/telephony/PhoneStateListener;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda12;

    invoke-direct {v1, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda12;-><init>(Landroid/telephony/PhoneStateListener;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onImsCallDisconnectCauseChanged$58(Landroid/telephony/PhoneStateListener;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onImsCallDisconnectCauseChanged(Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method private synthetic blacklist lambda$onImsCallDisconnectCauseChanged$59(Landroid/telephony/PhoneStateListener;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda33;

    invoke-direct {v1, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda33;-><init>(Landroid/telephony/PhoneStateListener;Landroid/telephony/ims/ImsReasonInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onLegacyCallStateChanged$10(Landroid/telephony/PhoneStateListener;ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    return-void
.end method

.method private synthetic blacklist lambda$onLegacyCallStateChanged$11(Landroid/telephony/PhoneStateListener;ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda43;

    invoke-direct {v1, p1, p2, p3}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda43;-><init>(Landroid/telephony/PhoneStateListener;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onMessageWaitingIndicatorChanged$4(Landroid/telephony/PhoneStateListener;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V

    return-void
.end method

.method private synthetic blacklist lambda$onMessageWaitingIndicatorChanged$5(Landroid/telephony/PhoneStateListener;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda37;

    invoke-direct {v1, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda37;-><init>(Landroid/telephony/PhoneStateListener;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onOemHookRawEvent$40(Landroid/telephony/PhoneStateListener;[B)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onOemHookRawEvent([B)V

    return-void
.end method

.method private synthetic blacklist lambda$onOemHookRawEvent$41(Landroid/telephony/PhoneStateListener;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda36;

    invoke-direct {v1, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda36;-><init>(Landroid/telephony/PhoneStateListener;[B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onOutgoingEmergencyCall$46(Landroid/telephony/PhoneStateListener;Landroid/telephony/emergency/EmergencyNumber;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onOutgoingEmergencyCall(Landroid/telephony/emergency/EmergencyNumber;I)V

    return-void
.end method

.method private synthetic blacklist lambda$onOutgoingEmergencyCall$47(Landroid/telephony/PhoneStateListener;Landroid/telephony/emergency/EmergencyNumber;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda40;

    invoke-direct {v1, p1, p2, p3}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda40;-><init>(Landroid/telephony/PhoneStateListener;Landroid/telephony/emergency/EmergencyNumber;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onOutgoingEmergencySms$48(Landroid/telephony/PhoneStateListener;Landroid/telephony/emergency/EmergencyNumber;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onOutgoingEmergencySms(Landroid/telephony/emergency/EmergencyNumber;I)V

    return-void
.end method

.method private synthetic blacklist lambda$onOutgoingEmergencySms$49(Landroid/telephony/PhoneStateListener;Landroid/telephony/emergency/EmergencyNumber;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda24;

    invoke-direct {v1, p1, p2, p3}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda24;-><init>(Landroid/telephony/PhoneStateListener;Landroid/telephony/emergency/EmergencyNumber;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onPhoneCapabilityChanged$50(Landroid/telephony/PhoneStateListener;Landroid/telephony/PhoneCapability;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onPhoneCapabilityChanged(Landroid/telephony/PhoneCapability;)V

    return-void
.end method

.method private synthetic blacklist lambda$onPhoneCapabilityChanged$51(Landroid/telephony/PhoneStateListener;Landroid/telephony/PhoneCapability;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda38;

    invoke-direct {v1, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda38;-><init>(Landroid/telephony/PhoneStateListener;Landroid/telephony/PhoneCapability;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onPreciseCallStateChanged$22(Landroid/telephony/PhoneStateListener;Landroid/telephony/PreciseCallState;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V

    return-void
.end method

.method private synthetic blacklist lambda$onPreciseCallStateChanged$23(Landroid/telephony/PhoneStateListener;Landroid/telephony/PreciseCallState;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda25;

    invoke-direct {v1, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda25;-><init>(Landroid/telephony/PhoneStateListener;Landroid/telephony/PreciseCallState;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onPreciseDataConnectionStateChanged$26(Landroid/telephony/PhoneStateListener;Landroid/telephony/PreciseDataConnectionState;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V

    return-void
.end method

.method private synthetic blacklist lambda$onPreciseDataConnectionStateChanged$27(Landroid/telephony/PhoneStateListener;Landroid/telephony/PreciseDataConnectionState;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda27;

    invoke-direct {v1, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda27;-><init>(Landroid/telephony/PhoneStateListener;Landroid/telephony/PreciseDataConnectionState;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onRadioPowerStateChanged$52(Landroid/telephony/PhoneStateListener;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onRadioPowerStateChanged(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onRadioPowerStateChanged$53(Landroid/telephony/PhoneStateListener;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda49;

    invoke-direct {v1, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda49;-><init>(Landroid/telephony/PhoneStateListener;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onRegistrationFailed$60(Landroid/telephony/PhoneStateListener;Landroid/telephony/CellIdentity;Ljava/lang/String;III)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Landroid/telephony/PhoneStateListener;->onRegistrationFailed(Landroid/telephony/CellIdentity;Ljava/lang/String;III)V

    return-void
.end method

.method private synthetic blacklist lambda$onRegistrationFailed$61(Landroid/telephony/PhoneStateListener;Landroid/telephony/CellIdentity;Ljava/lang/String;III)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v8, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda6;

    move-object v1, v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda6;-><init>(Landroid/telephony/PhoneStateListener;Landroid/telephony/CellIdentity;Ljava/lang/String;III)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onServiceStateChanged$0(Landroid/telephony/PhoneStateListener;Landroid/telephony/ServiceState;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method private synthetic blacklist lambda$onServiceStateChanged$1(Landroid/telephony/PhoneStateListener;Landroid/telephony/ServiceState;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda5;-><init>(Landroid/telephony/PhoneStateListener;Landroid/telephony/ServiceState;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onSignalStrengthChanged$2(Landroid/telephony/PhoneStateListener;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthChanged(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onSignalStrengthChanged$3(Landroid/telephony/PhoneStateListener;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda14;

    invoke-direct {v1, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda14;-><init>(Landroid/telephony/PhoneStateListener;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onSignalStrengthsChanged$18(Landroid/telephony/PhoneStateListener;Landroid/telephony/SignalStrength;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    return-void
.end method

.method private synthetic blacklist lambda$onSignalStrengthsChanged$19(Landroid/telephony/PhoneStateListener;Landroid/telephony/SignalStrength;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda51;

    invoke-direct {v1, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda51;-><init>(Landroid/telephony/PhoneStateListener;Landroid/telephony/SignalStrength;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onSrvccStateChanged$30(Landroid/telephony/PhoneStateListener;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onSrvccStateChanged(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onSrvccStateChanged$31(Landroid/telephony/PhoneStateListener;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda20;

    invoke-direct {v1, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda20;-><init>(Landroid/telephony/PhoneStateListener;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onUserMobileDataStateChanged$36(Landroid/telephony/PhoneStateListener;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onUserMobileDataStateChanged(Z)V

    return-void
.end method

.method private synthetic blacklist lambda$onUserMobileDataStateChanged$37(Landroid/telephony/PhoneStateListener;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda3;-><init>(Landroid/telephony/PhoneStateListener;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onVoiceActivationStateChanged$32(Landroid/telephony/PhoneStateListener;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onVoiceActivationStateChanged(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onVoiceActivationStateChanged$33(Landroid/telephony/PhoneStateListener;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda56;

    invoke-direct {v1, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda56;-><init>(Landroid/telephony/PhoneStateListener;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public blacklist onActiveDataSubIdChanged(I)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda32;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda32;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist onAllowedNetworkTypesChanged(IJ)V
    .locals 0

    return-void
.end method

.method public blacklist onBarringInfoChanged(Landroid/telephony/BarringInfo;)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda2;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/BarringInfo;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final blacklist onCallBackModeStarted(I)V
    .locals 0

    return-void
.end method

.method public final blacklist onCallBackModeStopped(II)V
    .locals 0

    return-void
.end method

.method public blacklist onCallDisconnectCauseChanged(II)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda26;

    invoke-direct {v1, p0, v0, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda26;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;II)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public greylist-max-o onCallForwardingIndicatorChanged(Z)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda50;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda50;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Z)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist onCallStateChanged(I)V
    .locals 0

    return-void
.end method

.method public blacklist onCallStatesChanged(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CallState;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    new-instance v1, Landroid/telephony/CallAttributes;

    new-instance v9, Landroid/telephony/PreciseCallState;

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Landroid/telephony/PreciseCallState;-><init>(IIIII)V

    new-instance v3, Landroid/telephony/CallQuality;

    invoke-direct {v3}, Landroid/telephony/CallQuality;-><init>()V

    invoke-direct {v1, v9, v2, v3}, Landroid/telephony/CallAttributes;-><init>(Landroid/telephony/PreciseCallState;ILandroid/telephony/CallQuality;)V

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/CallState;

    invoke-virtual {v6}, Landroid/telephony/CallState;->getCallClassification()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {v6}, Landroid/telephony/CallState;->getCallState()I

    move-result v3

    goto :goto_1

    :pswitch_1
    invoke-virtual {v6}, Landroid/telephony/CallState;->getCallState()I

    move-result v1

    goto :goto_1

    :pswitch_2
    invoke-virtual {v6}, Landroid/telephony/CallState;->getCallState()I

    move-result v4

    nop

    :goto_1
    goto :goto_0

    :cond_3
    new-instance v5, Landroid/telephony/CallAttributes;

    new-instance v12, Landroid/telephony/PreciseCallState;

    const/4 v10, -0x1

    const/4 v11, -0x1

    move-object v6, v12

    move v7, v4

    move v8, v1

    move v9, v3

    invoke-direct/range {v6 .. v11}, Landroid/telephony/PreciseCallState;-><init>(IIIII)V

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/CallState;

    invoke-virtual {v6}, Landroid/telephony/CallState;->getNetworkType()I

    move-result v6

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CallState;

    invoke-virtual {v2}, Landroid/telephony/CallState;->getCallQuality()Landroid/telephony/CallQuality;

    move-result-object v2

    invoke-direct {v5, v12, v6, v2}, Landroid/telephony/CallAttributes;-><init>(Landroid/telephony/PreciseCallState;ILandroid/telephony/CallQuality;)V

    move-object v2, v5

    move-object v1, v2

    :goto_2
    new-instance v2, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda29;

    invoke-direct {v2, p0, v0, v1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda29;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/CallAttributes;)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public greylist-max-o onCarrierNetworkChange(Z)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda9;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Z)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final blacklist onCarrierRoamingNtnAvailableServicesChanged([I)V
    .locals 0

    return-void
.end method

.method public final blacklist onCarrierRoamingNtnEligibleStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public final blacklist onCarrierRoamingNtnModeChanged(Z)V
    .locals 0

    return-void
.end method

.method public final blacklist onCarrierRoamingNtnSignalStrengthChanged(Landroid/telephony/satellite/NtnSignalStrength;)V
    .locals 0

    return-void
.end method

.method public greylist-max-o onCellInfoChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda46;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda46;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Ljava/util/List;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist onCellLocationChanged(Landroid/telephony/CellIdentity;)V
    .locals 3

    if-nez p1, :cond_0

    invoke-static {}, Landroid/telephony/CellLocation;->getEmpty()Landroid/telephony/CellLocation;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/telephony/CellIdentity;->asCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/PhoneStateListener;

    if-nez v1, :cond_1

    return-void

    :cond_1
    new-instance v2, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda34;

    invoke-direct {v2, p0, v1, v0}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda34;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/CellLocation;)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public greylist-max-o onDataActivationStateChanged(I)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public greylist-max-o onDataActivity(I)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda28;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda28;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public greylist-max-o onDataConnectionRealTimeInfoChanged(Landroid/telephony/DataConnectionRealTimeInfo;)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda7;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/DataConnectionRealTimeInfo;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public greylist-max-o onDataConnectionStateChanged(II)V
    .locals 3

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->getTargetSdkVersion()I

    move-result v1

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_1

    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda58;

    invoke-direct {v1, p0, v0, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda58;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda59;

    invoke-direct {v1, p0, v0, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda59;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;II)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    :goto_0
    return-void
.end method

.method public blacklist onDataEnabledChanged(ZI)V
    .locals 0

    return-void
.end method

.method public blacklist onDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/TelephonyDisplayInfo;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist onEmergencyNumberListChanged(Ljava/util/Map;)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda48;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda48;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Ljava/util/Map;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist onImsCallDisconnectCauseChanged(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda4;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/ims/ImsReasonInfo;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist onLegacyCallStateChanged(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0, v0, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda21;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;ILjava/lang/String;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist onLinkCapacityEstimateChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/LinkCapacityEstimate;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final blacklist onMediaQualityStatusChanged(Landroid/telephony/ims/MediaQualityStatus;)V
    .locals 0

    return-void
.end method

.method public greylist-max-o onMessageWaitingIndicatorChanged(Z)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda19;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Z)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public greylist-max-o onOemHookRawEvent([B)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda42;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda42;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;[B)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist onOutgoingEmergencyCall(Landroid/telephony/emergency/EmergencyNumber;I)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda54;

    invoke-direct {v1, p0, v0, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda54;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/emergency/EmergencyNumber;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist onOutgoingEmergencySms(Landroid/telephony/emergency/EmergencyNumber;I)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, v0, p1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda13;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/emergency/EmergencyNumber;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist onPhoneCapabilityChanged(Landroid/telephony/PhoneCapability;)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda63;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda63;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/PhoneCapability;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist onPhysicalChannelConfigChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/PhysicalChannelConfig;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public greylist-max-o onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda45;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda45;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/PreciseCallState;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public greylist-max-o onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda22;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda22;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/PreciseDataConnectionState;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist onRadioPowerStateChanged(I)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda52;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda52;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist onRegistrationFailed(Landroid/telephony/CellIdentity;Ljava/lang/String;III)V
    .locals 10

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v9, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda60;

    move-object v1, v9

    move-object v2, p0

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v1 .. v8}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda60;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/CellIdentity;Ljava/lang/String;III)V

    invoke-static {v9}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final blacklist onSemSatelliteServiceStateChanged(Landroid/telephony/satellite/SemSatelliteServiceState;)V
    .locals 0

    return-void
.end method

.method public final blacklist onSemSatelliteSignalStrengthChanged(Landroid/telephony/satellite/SemSatelliteSignalStrength;)V
    .locals 0

    return-void
.end method

.method public greylist-max-o onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda62;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda62;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/ServiceState;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public greylist-max-o onSignalStrengthChanged(I)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda17;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public greylist-max-o onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda31;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda31;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Landroid/telephony/SignalStrength;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final blacklist onSimultaneousCallingStateChanged([I)V
    .locals 0

    return-void
.end method

.method public blacklist onSrvccStateChanged(I)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda35;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda35;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public greylist-max-o onUserMobileDataStateChanged(Z)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda18;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;Z)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public greylist-max-o onVoiceActivationStateChanged(I)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda10;-><init>(Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;Landroid/telephony/PhoneStateListener;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method
