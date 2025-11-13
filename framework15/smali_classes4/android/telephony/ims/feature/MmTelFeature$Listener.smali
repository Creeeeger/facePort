.class public Landroid/telephony/ims/feature/MmTelFeature$Listener;
.super Landroid/telephony/ims/aidl/IImsMmTelListener$Stub;
.source "MmTelFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/feature/MmTelFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Listener"
.end annotation


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/telephony/ims/aidl/IImsMmTelListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onAudioModeIsVoipChanged(I)V
    .locals 0

    return-void
.end method

.method public blacklist onCdpnReceived(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public blacklist onIncomingCall(Lcom/android/ims/internal/IImsCallSession;Ljava/lang/String;Landroid/os/Bundle;)Landroid/telephony/ims/aidl/IImsCallSessionListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onMediaQualityStatusChanged(Landroid/telephony/ims/MediaQualityStatus;)V
    .locals 0

    return-void
.end method

.method public blacklist onModifyImsTrafficSession(II)V
    .locals 0

    return-void
.end method

.method public blacklist onRejectedCall(Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0

    return-void
.end method

.method public blacklist onStartImsTrafficSession(IIIILandroid/telephony/ims/aidl/IImsTrafficSessionCallback;)V
    .locals 0

    return-void
.end method

.method public blacklist onStopImsTrafficSession(I)V
    .locals 0

    return-void
.end method

.method public blacklist onTriggerEpsFallback(I)V
    .locals 0

    return-void
.end method

.method public greylist-max-o onVoiceMessageCountUpdate(I)V
    .locals 0

    return-void
.end method
