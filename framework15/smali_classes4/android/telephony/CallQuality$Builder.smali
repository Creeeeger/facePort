.class public final Landroid/telephony/CallQuality$Builder;
.super Ljava/lang/Object;
.source "CallQuality.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/CallQuality;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAverageRelativeJitter:I

.field private blacklist mAverageRoundTripTime:I

.field private blacklist mCallDuration:I

.field private blacklist mCodecType:I

.field private blacklist mDownlinkCallQualityLevel:I

.field private blacklist mMaxPlayoutDelayMillis:J

.field private blacklist mMaxRelativeJitter:I

.field private blacklist mMinPlayoutDelayMillis:J

.field private blacklist mNumDroppedRtpPackets:I

.field private blacklist mNumNoDataFrames:I

.field private blacklist mNumRtpDuplicatePackets:I

.field private blacklist mNumRtpPacketsNotReceived:I

.field private blacklist mNumRtpPacketsReceived:I

.field private blacklist mNumRtpPacketsTransmitted:I

.field private blacklist mNumRtpPacketsTransmittedLost:I

.field private blacklist mNumRtpSidPacketsReceived:I

.field private blacklist mNumVoiceFrames:I

.field private blacklist mRtpInactivityDetected:Z

.field private blacklist mRxSilenceDetected:Z

.field private blacklist mTxSilenceDetected:Z

.field private blacklist mUplinkCallQualityLevel:I


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/telephony/CallQuality;
    .locals 3

    new-instance v0, Landroid/telephony/CallQuality;

    invoke-direct {v0}, Landroid/telephony/CallQuality;-><init>()V

    iget v1, p0, Landroid/telephony/CallQuality$Builder;->mDownlinkCallQualityLevel:I

    invoke-static {v0, v1}, Landroid/telephony/CallQuality;->-$$Nest$fputmDownlinkCallQualityLevel(Landroid/telephony/CallQuality;I)V

    iget v1, p0, Landroid/telephony/CallQuality$Builder;->mUplinkCallQualityLevel:I

    invoke-static {v0, v1}, Landroid/telephony/CallQuality;->-$$Nest$fputmUplinkCallQualityLevel(Landroid/telephony/CallQuality;I)V

    iget v1, p0, Landroid/telephony/CallQuality$Builder;->mCallDuration:I

    invoke-static {v0, v1}, Landroid/telephony/CallQuality;->-$$Nest$fputmCallDuration(Landroid/telephony/CallQuality;I)V

    iget v1, p0, Landroid/telephony/CallQuality$Builder;->mNumRtpPacketsTransmitted:I

    invoke-static {v0, v1}, Landroid/telephony/CallQuality;->-$$Nest$fputmNumRtpPacketsTransmitted(Landroid/telephony/CallQuality;I)V

    iget v1, p0, Landroid/telephony/CallQuality$Builder;->mNumRtpPacketsReceived:I

    invoke-static {v0, v1}, Landroid/telephony/CallQuality;->-$$Nest$fputmNumRtpPacketsReceived(Landroid/telephony/CallQuality;I)V

    iget v1, p0, Landroid/telephony/CallQuality$Builder;->mNumRtpPacketsTransmittedLost:I

    invoke-static {v0, v1}, Landroid/telephony/CallQuality;->-$$Nest$fputmNumRtpPacketsTransmittedLost(Landroid/telephony/CallQuality;I)V

    iget v1, p0, Landroid/telephony/CallQuality$Builder;->mNumRtpPacketsNotReceived:I

    invoke-static {v0, v1}, Landroid/telephony/CallQuality;->-$$Nest$fputmNumRtpPacketsNotReceived(Landroid/telephony/CallQuality;I)V

    iget v1, p0, Landroid/telephony/CallQuality$Builder;->mAverageRelativeJitter:I

    invoke-static {v0, v1}, Landroid/telephony/CallQuality;->-$$Nest$fputmAverageRelativeJitter(Landroid/telephony/CallQuality;I)V

    iget v1, p0, Landroid/telephony/CallQuality$Builder;->mMaxRelativeJitter:I

    invoke-static {v0, v1}, Landroid/telephony/CallQuality;->-$$Nest$fputmMaxRelativeJitter(Landroid/telephony/CallQuality;I)V

    iget v1, p0, Landroid/telephony/CallQuality$Builder;->mAverageRoundTripTime:I

    invoke-static {v0, v1}, Landroid/telephony/CallQuality;->-$$Nest$fputmAverageRoundTripTime(Landroid/telephony/CallQuality;I)V

    iget v1, p0, Landroid/telephony/CallQuality$Builder;->mCodecType:I

    invoke-static {v0, v1}, Landroid/telephony/CallQuality;->-$$Nest$fputmCodecType(Landroid/telephony/CallQuality;I)V

    iget-boolean v1, p0, Landroid/telephony/CallQuality$Builder;->mRtpInactivityDetected:Z

    invoke-static {v0, v1}, Landroid/telephony/CallQuality;->-$$Nest$fputmRtpInactivityDetected(Landroid/telephony/CallQuality;Z)V

    iget-boolean v1, p0, Landroid/telephony/CallQuality$Builder;->mTxSilenceDetected:Z

    invoke-static {v0, v1}, Landroid/telephony/CallQuality;->-$$Nest$fputmTxSilenceDetected(Landroid/telephony/CallQuality;Z)V

    iget-boolean v1, p0, Landroid/telephony/CallQuality$Builder;->mRxSilenceDetected:Z

    invoke-static {v0, v1}, Landroid/telephony/CallQuality;->-$$Nest$fputmRxSilenceDetected(Landroid/telephony/CallQuality;Z)V

    iget v1, p0, Landroid/telephony/CallQuality$Builder;->mNumVoiceFrames:I

    invoke-static {v0, v1}, Landroid/telephony/CallQuality;->-$$Nest$fputmNumVoiceFrames(Landroid/telephony/CallQuality;I)V

    iget v1, p0, Landroid/telephony/CallQuality$Builder;->mNumNoDataFrames:I

    invoke-static {v0, v1}, Landroid/telephony/CallQuality;->-$$Nest$fputmNumNoDataFrames(Landroid/telephony/CallQuality;I)V

    iget v1, p0, Landroid/telephony/CallQuality$Builder;->mNumDroppedRtpPackets:I

    invoke-static {v0, v1}, Landroid/telephony/CallQuality;->-$$Nest$fputmNumDroppedRtpPackets(Landroid/telephony/CallQuality;I)V

    iget-wide v1, p0, Landroid/telephony/CallQuality$Builder;->mMinPlayoutDelayMillis:J

    invoke-static {v0, v1, v2}, Landroid/telephony/CallQuality;->-$$Nest$fputmMinPlayoutDelayMillis(Landroid/telephony/CallQuality;J)V

    iget-wide v1, p0, Landroid/telephony/CallQuality$Builder;->mMaxPlayoutDelayMillis:J

    invoke-static {v0, v1, v2}, Landroid/telephony/CallQuality;->-$$Nest$fputmMaxPlayoutDelayMillis(Landroid/telephony/CallQuality;J)V

    iget v1, p0, Landroid/telephony/CallQuality$Builder;->mNumRtpSidPacketsReceived:I

    invoke-static {v0, v1}, Landroid/telephony/CallQuality;->-$$Nest$fputmNumRtpSidPacketsReceived(Landroid/telephony/CallQuality;I)V

    iget v1, p0, Landroid/telephony/CallQuality$Builder;->mNumRtpDuplicatePackets:I

    invoke-static {v0, v1}, Landroid/telephony/CallQuality;->-$$Nest$fputmNumRtpDuplicatePackets(Landroid/telephony/CallQuality;I)V

    return-object v0
.end method

.method public whitelist setAverageRelativeJitter(I)Landroid/telephony/CallQuality$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/CallQuality$Builder;->mAverageRelativeJitter:I

    return-object p0
.end method

.method public whitelist setAverageRoundTripTimeMillis(I)Landroid/telephony/CallQuality$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/CallQuality$Builder;->mAverageRoundTripTime:I

    return-object p0
.end method

.method public whitelist setCallDurationMillis(I)Landroid/telephony/CallQuality$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/CallQuality$Builder;->mCallDuration:I

    return-object p0
.end method

.method public whitelist setCodecType(I)Landroid/telephony/CallQuality$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/CallQuality$Builder;->mCodecType:I

    return-object p0
.end method

.method public whitelist setDownlinkCallQualityLevel(I)Landroid/telephony/CallQuality$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/CallQuality$Builder;->mDownlinkCallQualityLevel:I

    return-object p0
.end method

.method public whitelist setIncomingSilenceDetectedAtCallSetup(Z)Landroid/telephony/CallQuality$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/telephony/CallQuality$Builder;->mRxSilenceDetected:Z

    return-object p0
.end method

.method public whitelist setMaxPlayoutDelayMillis(J)Landroid/telephony/CallQuality$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/telephony/CallQuality$Builder;->mMaxPlayoutDelayMillis:J

    return-object p0
.end method

.method public whitelist setMaxRelativeJitter(I)Landroid/telephony/CallQuality$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/CallQuality$Builder;->mMaxRelativeJitter:I

    return-object p0
.end method

.method public whitelist setMinPlayoutDelayMillis(J)Landroid/telephony/CallQuality$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/telephony/CallQuality$Builder;->mMinPlayoutDelayMillis:J

    return-object p0
.end method

.method public whitelist setNumDroppedRtpPackets(I)Landroid/telephony/CallQuality$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/CallQuality$Builder;->mNumDroppedRtpPackets:I

    return-object p0
.end method

.method public whitelist setNumNoDataFrames(I)Landroid/telephony/CallQuality$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/CallQuality$Builder;->mNumNoDataFrames:I

    return-object p0
.end method

.method public whitelist setNumRtpDuplicatePackets(I)Landroid/telephony/CallQuality$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/CallQuality$Builder;->mNumRtpDuplicatePackets:I

    return-object p0
.end method

.method public whitelist setNumRtpPacketsNotReceived(I)Landroid/telephony/CallQuality$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/CallQuality$Builder;->mNumRtpPacketsNotReceived:I

    return-object p0
.end method

.method public whitelist setNumRtpPacketsReceived(I)Landroid/telephony/CallQuality$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/CallQuality$Builder;->mNumRtpPacketsReceived:I

    return-object p0
.end method

.method public whitelist setNumRtpPacketsTransmitted(I)Landroid/telephony/CallQuality$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/CallQuality$Builder;->mNumRtpPacketsTransmitted:I

    return-object p0
.end method

.method public whitelist setNumRtpPacketsTransmittedLost(I)Landroid/telephony/CallQuality$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/CallQuality$Builder;->mNumRtpPacketsTransmittedLost:I

    return-object p0
.end method

.method public whitelist setNumRtpSidPacketsReceived(I)Landroid/telephony/CallQuality$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/CallQuality$Builder;->mNumRtpSidPacketsReceived:I

    return-object p0
.end method

.method public whitelist setNumVoiceFrames(I)Landroid/telephony/CallQuality$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/CallQuality$Builder;->mNumVoiceFrames:I

    return-object p0
.end method

.method public whitelist setOutgoingSilenceDetectedAtCallSetup(Z)Landroid/telephony/CallQuality$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/telephony/CallQuality$Builder;->mTxSilenceDetected:Z

    return-object p0
.end method

.method public whitelist setRtpInactivityDetected(Z)Landroid/telephony/CallQuality$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/telephony/CallQuality$Builder;->mRtpInactivityDetected:Z

    return-object p0
.end method

.method public whitelist setUplinkCallQualityLevel(I)Landroid/telephony/CallQuality$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/CallQuality$Builder;->mUplinkCallQualityLevel:I

    return-object p0
.end method
