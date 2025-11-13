.class public final Landroid/telephony/ThermalMitigationRequest$Builder;
.super Ljava/lang/Object;
.source "ThermalMitigationRequest.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ThermalMitigationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mDataThrottlingRequest:Landroid/telephony/DataThrottlingRequest;

.field private blacklist mThermalMitigationAction:I


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/ThermalMitigationRequest$Builder;->mThermalMitigationAction:I

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/telephony/ThermalMitigationRequest;
    .locals 4

    iget v0, p0, Landroid/telephony/ThermalMitigationRequest$Builder;->mThermalMitigationAction:I

    if-ltz v0, :cond_3

    iget v0, p0, Landroid/telephony/ThermalMitigationRequest$Builder;->mThermalMitigationAction:I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/telephony/ThermalMitigationRequest$Builder;->mDataThrottlingRequest:Landroid/telephony/DataThrottlingRequest;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dataThrottlingRequest  cannot be null for THERMAL_MITIGATION_ACTION_DATA_THROTTLING"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/telephony/ThermalMitigationRequest$Builder;->mDataThrottlingRequest:Landroid/telephony/DataThrottlingRequest;

    if-nez v0, :cond_2

    :goto_0
    new-instance v0, Landroid/telephony/ThermalMitigationRequest;

    iget v1, p0, Landroid/telephony/ThermalMitigationRequest$Builder;->mThermalMitigationAction:I

    iget-object v2, p0, Landroid/telephony/ThermalMitigationRequest$Builder;->mDataThrottlingRequest:Landroid/telephony/DataThrottlingRequest;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/telephony/ThermalMitigationRequest;-><init>(ILandroid/telephony/DataThrottlingRequest;Landroid/telephony/ThermalMitigationRequest-IA;)V

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dataThrottlingRequest must be null for THERMAL_MITIGATION_ACTION_VOICE_ONLY and THERMAL_MITIGATION_ACTION_RADIO_OFF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "thermalMitigationAction was  not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setDataThrottlingRequest(Landroid/telephony/DataThrottlingRequest;)Landroid/telephony/ThermalMitigationRequest$Builder;
    .locals 0

    iput-object p1, p0, Landroid/telephony/ThermalMitigationRequest$Builder;->mDataThrottlingRequest:Landroid/telephony/DataThrottlingRequest;

    return-object p0
.end method

.method public whitelist setThermalMitigationAction(I)Landroid/telephony/ThermalMitigationRequest$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/ThermalMitigationRequest$Builder;->mThermalMitigationAction:I

    return-object p0
.end method
