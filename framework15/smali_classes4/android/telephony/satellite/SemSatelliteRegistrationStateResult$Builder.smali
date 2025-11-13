.class public final Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;
.super Ljava/lang/Object;
.source "SemSatelliteRegistrationStateResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mArfcn:I

.field private blacklist mBeamId:I

.field private blacklist mBmLat:I

.field private blacklist mBmLong:I

.field private blacklist mCi:I

.field private blacklist mLac:I

.field private blacklist mMode:I

.field private blacklist mRegState:I

.field private blacklist mRejectCause:I

.field private blacklist mSatelliteId:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->-$$Nest$fgetmMode(Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;)I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;->mMode:I

    invoke-static {p1}, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->-$$Nest$fgetmRegState(Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;)I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;->mRegState:I

    invoke-static {p1}, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->-$$Nest$fgetmLac(Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;)I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;->mLac:I

    invoke-static {p1}, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->-$$Nest$fgetmCi(Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;)I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;->mCi:I

    invoke-static {p1}, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->-$$Nest$fgetmArfcn(Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;)I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;->mArfcn:I

    invoke-static {p1}, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->-$$Nest$fgetmBeamId(Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;)I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;->mBeamId:I

    invoke-static {p1}, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->-$$Nest$fgetmBmLong(Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;)I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;->mBmLong:I

    invoke-static {p1}, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->-$$Nest$fgetmBmLat(Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;)I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;->mBmLat:I

    invoke-static {p1}, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->-$$Nest$fgetmRejectCause(Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;)I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;->mRejectCause:I

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;
    .locals 12

    new-instance v11, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;

    iget v1, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;->mMode:I

    iget v2, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;->mRegState:I

    iget v3, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;->mLac:I

    iget v4, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;->mCi:I

    iget v5, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;->mArfcn:I

    iget v6, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;->mBeamId:I

    iget v7, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;->mBmLong:I

    iget v8, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;->mBmLat:I

    iget v9, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;->mRejectCause:I

    iget v10, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;->mSatelliteId:I

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;-><init>(IIIIIIIIII)V

    return-object v11
.end method

.method public blacklist setArfcn(I)Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;->mArfcn:I

    return-object p0
.end method

.method public blacklist setBeamId(I)Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;->mBeamId:I

    return-object p0
.end method

.method public blacklist setBmLat(I)Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;->mBmLat:I

    return-object p0
.end method

.method public blacklist setBmLong(I)Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;->mBmLong:I

    return-object p0
.end method

.method public blacklist setCi(I)Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;->mCi:I

    return-object p0
.end method

.method public blacklist setLac(I)Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;->mLac:I

    return-object p0
.end method

.method public blacklist setMode(I)Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;->mMode:I

    return-object p0
.end method

.method public blacklist setRegState(I)Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;->mRegState:I

    return-object p0
.end method

.method public blacklist setRejCause(I)Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;->mRejectCause:I

    return-object p0
.end method

.method public blacklist setSatelliteId(I)Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;->mSatelliteId:I

    return-object p0
.end method
