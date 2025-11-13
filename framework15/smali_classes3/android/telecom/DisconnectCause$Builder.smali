.class public final Landroid/telecom/DisconnectCause$Builder;
.super Ljava/lang/Object;
.source "DisconnectCause.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/DisconnectCause;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mDisconnectCode:I

.field private blacklist mDisconnectDescription:Ljava/lang/CharSequence;

.field private blacklist mDisconnectLabel:Ljava/lang/CharSequence;

.field private blacklist mDisconnectReason:Ljava/lang/String;

.field private blacklist mImsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

.field private blacklist mTelephonyDisconnectCause:I

.field private blacklist mTelephonyPreciseDisconnectCause:I

.field private blacklist mToneToPlay:I


# direct methods
.method public constructor blacklist <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/telecom/DisconnectCause$Builder;->mToneToPlay:I

    iput p1, p0, Landroid/telecom/DisconnectCause$Builder;->mDisconnectCode:I

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/telecom/DisconnectCause;
    .locals 10

    new-instance v9, Landroid/telecom/DisconnectCause;

    iget v1, p0, Landroid/telecom/DisconnectCause$Builder;->mDisconnectCode:I

    iget-object v2, p0, Landroid/telecom/DisconnectCause$Builder;->mDisconnectLabel:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/telecom/DisconnectCause$Builder;->mDisconnectDescription:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroid/telecom/DisconnectCause$Builder;->mDisconnectReason:Ljava/lang/String;

    iget v5, p0, Landroid/telecom/DisconnectCause$Builder;->mToneToPlay:I

    iget v6, p0, Landroid/telecom/DisconnectCause$Builder;->mTelephonyDisconnectCause:I

    iget v7, p0, Landroid/telecom/DisconnectCause$Builder;->mTelephonyPreciseDisconnectCause:I

    iget-object v8, p0, Landroid/telecom/DisconnectCause$Builder;->mImsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/telecom/DisconnectCause;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;IIILandroid/telephony/ims/ImsReasonInfo;)V

    return-object v9
.end method

.method public blacklist setDescription(Ljava/lang/CharSequence;)Landroid/telecom/DisconnectCause$Builder;
    .locals 0

    iput-object p1, p0, Landroid/telecom/DisconnectCause$Builder;->mDisconnectDescription:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public blacklist setImsReasonInfo(Landroid/telephony/ims/ImsReasonInfo;)Landroid/telecom/DisconnectCause$Builder;
    .locals 0

    iput-object p1, p0, Landroid/telecom/DisconnectCause$Builder;->mImsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    return-object p0
.end method

.method public blacklist setLabel(Ljava/lang/CharSequence;)Landroid/telecom/DisconnectCause$Builder;
    .locals 0

    iput-object p1, p0, Landroid/telecom/DisconnectCause$Builder;->mDisconnectLabel:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public blacklist setReason(Ljava/lang/String;)Landroid/telecom/DisconnectCause$Builder;
    .locals 0

    iput-object p1, p0, Landroid/telecom/DisconnectCause$Builder;->mDisconnectReason:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setTelephonyDisconnectCause(I)Landroid/telecom/DisconnectCause$Builder;
    .locals 0

    iput p1, p0, Landroid/telecom/DisconnectCause$Builder;->mTelephonyDisconnectCause:I

    return-object p0
.end method

.method public blacklist setTelephonyPreciseDisconnectCause(I)Landroid/telecom/DisconnectCause$Builder;
    .locals 0

    iput p1, p0, Landroid/telecom/DisconnectCause$Builder;->mTelephonyPreciseDisconnectCause:I

    return-object p0
.end method

.method public blacklist setTone(I)Landroid/telecom/DisconnectCause$Builder;
    .locals 0

    iput p1, p0, Landroid/telecom/DisconnectCause$Builder;->mToneToPlay:I

    return-object p0
.end method
