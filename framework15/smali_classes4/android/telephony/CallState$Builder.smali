.class public final Landroid/telephony/CallState$Builder;
.super Ljava/lang/Object;
.source "CallState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/CallState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCallClassification:I

.field private blacklist mCallQuality:Landroid/telephony/CallQuality;

.field private blacklist mImsCallId:Ljava/lang/String;

.field private blacklist mImsCallServiceType:I

.field private blacklist mImsCallType:I

.field private blacklist mNetworkType:I

.field private blacklist mPreciseCallState:I


# direct methods
.method public constructor whitelist <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/CallState$Builder;->mNetworkType:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/telephony/CallState$Builder;->mCallQuality:Landroid/telephony/CallQuality;

    const/4 v1, -0x1

    iput v1, p0, Landroid/telephony/CallState$Builder;->mCallClassification:I

    iput v0, p0, Landroid/telephony/CallState$Builder;->mImsCallServiceType:I

    iput v0, p0, Landroid/telephony/CallState$Builder;->mImsCallType:I

    iput p1, p0, Landroid/telephony/CallState$Builder;->mPreciseCallState:I

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/telephony/CallState;
    .locals 10

    new-instance v9, Landroid/telephony/CallState;

    iget v1, p0, Landroid/telephony/CallState$Builder;->mPreciseCallState:I

    iget v2, p0, Landroid/telephony/CallState$Builder;->mNetworkType:I

    iget-object v3, p0, Landroid/telephony/CallState$Builder;->mCallQuality:Landroid/telephony/CallQuality;

    iget v4, p0, Landroid/telephony/CallState$Builder;->mCallClassification:I

    iget-object v5, p0, Landroid/telephony/CallState$Builder;->mImsCallId:Ljava/lang/String;

    iget v6, p0, Landroid/telephony/CallState$Builder;->mImsCallServiceType:I

    iget v7, p0, Landroid/telephony/CallState$Builder;->mImsCallType:I

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/telephony/CallState;-><init>(IILandroid/telephony/CallQuality;ILjava/lang/String;IILandroid/telephony/CallState-IA;)V

    return-object v9
.end method

.method public blacklist setCallClassification(I)Landroid/telephony/CallState$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/CallState$Builder;->mCallClassification:I

    return-object p0
.end method

.method public whitelist setCallQuality(Landroid/telephony/CallQuality;)Landroid/telephony/CallState$Builder;
    .locals 0

    iput-object p1, p0, Landroid/telephony/CallState$Builder;->mCallQuality:Landroid/telephony/CallQuality;

    return-object p0
.end method

.method public whitelist setImsCallServiceType(I)Landroid/telephony/CallState$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/CallState$Builder;->mImsCallServiceType:I

    return-object p0
.end method

.method public whitelist setImsCallSessionId(Ljava/lang/String;)Landroid/telephony/CallState$Builder;
    .locals 0

    iput-object p1, p0, Landroid/telephony/CallState$Builder;->mImsCallId:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist setImsCallType(I)Landroid/telephony/CallState$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/CallState$Builder;->mImsCallType:I

    return-object p0
.end method

.method public whitelist setNetworkType(I)Landroid/telephony/CallState$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/CallState$Builder;->mNetworkType:I

    return-object p0
.end method
