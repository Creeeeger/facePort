.class public final Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult$Builder;
.super Ljava/lang/Object;
.source "SemSatelliteIotRegistrationStateResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mRegType:I

.field private blacklist mState:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;->-$$Nest$fgetmState(Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;)I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult$Builder;->mState:I

    invoke-static {p1}, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;->-$$Nest$fgetmRegType(Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;)I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult$Builder;->mRegType:I

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;
    .locals 3

    new-instance v0, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;

    iget v1, p0, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult$Builder;->mState:I

    iget v2, p0, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult$Builder;->mRegType:I

    invoke-direct {v0, v1, v2}, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;-><init>(II)V

    return-object v0
.end method

.method public blacklist setRegType(I)Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult$Builder;->mRegType:I

    return-object p0
.end method

.method public blacklist setState(I)Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult$Builder;->mState:I

    return-object p0
.end method
