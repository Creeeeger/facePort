.class public final Landroid/telecom/BluetoothCallQualityReport$Builder;
.super Ljava/lang/Object;
.source "BluetoothCallQualityReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/BluetoothCallQualityReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mChoppyVoice:Z

.field private blacklist mNegativeAcknowledgementCount:I

.field private blacklist mPacketsNotReceivedCount:I

.field private blacklist mRetransmittedPacketsCount:I

.field private blacklist mRssiDbm:I

.field private blacklist mSentTimestampMillis:J

.field private blacklist mSnrDb:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmChoppyVoice(Landroid/telecom/BluetoothCallQualityReport$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/telecom/BluetoothCallQualityReport$Builder;->mChoppyVoice:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNegativeAcknowledgementCount(Landroid/telecom/BluetoothCallQualityReport$Builder;)I
    .locals 0

    iget p0, p0, Landroid/telecom/BluetoothCallQualityReport$Builder;->mNegativeAcknowledgementCount:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPacketsNotReceivedCount(Landroid/telecom/BluetoothCallQualityReport$Builder;)I
    .locals 0

    iget p0, p0, Landroid/telecom/BluetoothCallQualityReport$Builder;->mPacketsNotReceivedCount:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRetransmittedPacketsCount(Landroid/telecom/BluetoothCallQualityReport$Builder;)I
    .locals 0

    iget p0, p0, Landroid/telecom/BluetoothCallQualityReport$Builder;->mRetransmittedPacketsCount:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRssiDbm(Landroid/telecom/BluetoothCallQualityReport$Builder;)I
    .locals 0

    iget p0, p0, Landroid/telecom/BluetoothCallQualityReport$Builder;->mRssiDbm:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSentTimestampMillis(Landroid/telecom/BluetoothCallQualityReport$Builder;)J
    .locals 2

    iget-wide v0, p0, Landroid/telecom/BluetoothCallQualityReport$Builder;->mSentTimestampMillis:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSnrDb(Landroid/telecom/BluetoothCallQualityReport$Builder;)I
    .locals 0

    iget p0, p0, Landroid/telecom/BluetoothCallQualityReport$Builder;->mSnrDb:I

    return p0
.end method

.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/telecom/BluetoothCallQualityReport;
    .locals 2

    new-instance v0, Landroid/telecom/BluetoothCallQualityReport;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telecom/BluetoothCallQualityReport;-><init>(Landroid/telecom/BluetoothCallQualityReport$Builder;Landroid/telecom/BluetoothCallQualityReport-IA;)V

    return-object v0
.end method

.method public whitelist setChoppyVoice(Z)Landroid/telecom/BluetoothCallQualityReport$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/telecom/BluetoothCallQualityReport$Builder;->mChoppyVoice:Z

    return-object p0
.end method

.method public whitelist setNegativeAcknowledgementCount(I)Landroid/telecom/BluetoothCallQualityReport$Builder;
    .locals 0

    iput p1, p0, Landroid/telecom/BluetoothCallQualityReport$Builder;->mNegativeAcknowledgementCount:I

    return-object p0
.end method

.method public whitelist setPacketsNotReceivedCount(I)Landroid/telecom/BluetoothCallQualityReport$Builder;
    .locals 0

    iput p1, p0, Landroid/telecom/BluetoothCallQualityReport$Builder;->mPacketsNotReceivedCount:I

    return-object p0
.end method

.method public whitelist setRetransmittedPacketsCount(I)Landroid/telecom/BluetoothCallQualityReport$Builder;
    .locals 0

    iput p1, p0, Landroid/telecom/BluetoothCallQualityReport$Builder;->mRetransmittedPacketsCount:I

    return-object p0
.end method

.method public whitelist setRssiDbm(I)Landroid/telecom/BluetoothCallQualityReport$Builder;
    .locals 0

    iput p1, p0, Landroid/telecom/BluetoothCallQualityReport$Builder;->mRssiDbm:I

    return-object p0
.end method

.method public whitelist setSentTimestampMillis(J)Landroid/telecom/BluetoothCallQualityReport$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/telecom/BluetoothCallQualityReport$Builder;->mSentTimestampMillis:J

    return-object p0
.end method

.method public whitelist setSnrDb(I)Landroid/telecom/BluetoothCallQualityReport$Builder;
    .locals 0

    iput p1, p0, Landroid/telecom/BluetoothCallQualityReport$Builder;->mSnrDb:I

    return-object p0
.end method
