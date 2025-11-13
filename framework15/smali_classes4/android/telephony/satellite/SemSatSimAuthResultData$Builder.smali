.class public final Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;
.super Ljava/lang/Object;
.source "SemSatSimAuthResultData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/satellite/SemSatSimAuthResultData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAuts:Ljava/lang/String;

.field private blacklist mAutsLen:I

.field private blacklist mCk:Ljava/lang/String;

.field private blacklist mCkLen:I

.field private blacklist mIk:Ljava/lang/String;

.field private blacklist mIkLen:I

.field private blacklist mKc:Ljava/lang/String;

.field private blacklist mKcLen:I

.field private blacklist mRes:Ljava/lang/String;

.field private blacklist mResLen:I

.field private blacklist mResult:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;->mResult:I

    iput v0, p0, Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;->mResLen:I

    const-string v1, ""

    iput-object v1, p0, Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;->mRes:Ljava/lang/String;

    iput v0, p0, Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;->mCkLen:I

    iput-object v1, p0, Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;->mCk:Ljava/lang/String;

    iput v0, p0, Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;->mIkLen:I

    iput-object v1, p0, Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;->mIk:Ljava/lang/String;

    iput v0, p0, Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;->mKcLen:I

    iput-object v1, p0, Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;->mKc:Ljava/lang/String;

    iput v0, p0, Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;->mAutsLen:I

    iput-object v1, p0, Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;->mAuts:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/telephony/satellite/SemSatSimAuthResultData;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/telephony/satellite/SemSatSimAuthResultData;->-$$Nest$fgetmResult(Landroid/telephony/satellite/SemSatSimAuthResultData;)I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;->mResult:I

    invoke-static {p1}, Landroid/telephony/satellite/SemSatSimAuthResultData;->-$$Nest$fgetmResLen(Landroid/telephony/satellite/SemSatSimAuthResultData;)I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;->mResLen:I

    invoke-static {p1}, Landroid/telephony/satellite/SemSatSimAuthResultData;->-$$Nest$fgetmRes(Landroid/telephony/satellite/SemSatSimAuthResultData;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;->mRes:Ljava/lang/String;

    invoke-static {p1}, Landroid/telephony/satellite/SemSatSimAuthResultData;->-$$Nest$fgetmCkLen(Landroid/telephony/satellite/SemSatSimAuthResultData;)I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;->mCkLen:I

    invoke-static {p1}, Landroid/telephony/satellite/SemSatSimAuthResultData;->-$$Nest$fgetmCk(Landroid/telephony/satellite/SemSatSimAuthResultData;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;->mCk:Ljava/lang/String;

    invoke-static {p1}, Landroid/telephony/satellite/SemSatSimAuthResultData;->-$$Nest$fgetmIkLen(Landroid/telephony/satellite/SemSatSimAuthResultData;)I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;->mIkLen:I

    invoke-static {p1}, Landroid/telephony/satellite/SemSatSimAuthResultData;->-$$Nest$fgetmIk(Landroid/telephony/satellite/SemSatSimAuthResultData;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;->mIk:Ljava/lang/String;

    invoke-static {p1}, Landroid/telephony/satellite/SemSatSimAuthResultData;->-$$Nest$fgetmKcLen(Landroid/telephony/satellite/SemSatSimAuthResultData;)I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;->mKcLen:I

    invoke-static {p1}, Landroid/telephony/satellite/SemSatSimAuthResultData;->-$$Nest$fgetmKc(Landroid/telephony/satellite/SemSatSimAuthResultData;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;->mKc:Ljava/lang/String;

    invoke-static {p1}, Landroid/telephony/satellite/SemSatSimAuthResultData;->-$$Nest$fgetmAutsLen(Landroid/telephony/satellite/SemSatSimAuthResultData;)I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;->mAutsLen:I

    invoke-static {p1}, Landroid/telephony/satellite/SemSatSimAuthResultData;->-$$Nest$fgetmAuts(Landroid/telephony/satellite/SemSatSimAuthResultData;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;->mAuts:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/telephony/satellite/SemSatSimAuthResultData;
    .locals 13

    new-instance v12, Landroid/telephony/satellite/SemSatSimAuthResultData;

    iget v1, p0, Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;->mResult:I

    iget v2, p0, Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;->mResLen:I

    iget-object v3, p0, Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;->mRes:Ljava/lang/String;

    iget v4, p0, Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;->mCkLen:I

    iget-object v5, p0, Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;->mCk:Ljava/lang/String;

    iget v6, p0, Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;->mIkLen:I

    iget-object v7, p0, Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;->mIk:Ljava/lang/String;

    iget v8, p0, Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;->mKcLen:I

    iget-object v9, p0, Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;->mKc:Ljava/lang/String;

    iget v10, p0, Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;->mAutsLen:I

    iget-object v11, p0, Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;->mAuts:Ljava/lang/String;

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Landroid/telephony/satellite/SemSatSimAuthResultData;-><init>(IILjava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    return-object v12
.end method

.method public blacklist setAuts([B)Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;
    .locals 1

    invoke-static {p1}, Landroid/telephony/satellite/SemSatSimAuthResultData;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;->mAuts:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setAutsLen(I)Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;->mAutsLen:I

    return-object p0
.end method

.method public blacklist setCk([B)Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;
    .locals 1

    invoke-static {p1}, Landroid/telephony/satellite/SemSatSimAuthResultData;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;->mCk:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setCkLen(I)Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;->mCkLen:I

    return-object p0
.end method

.method public blacklist setIk([B)Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;
    .locals 1

    invoke-static {p1}, Landroid/telephony/satellite/SemSatSimAuthResultData;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;->mIk:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setIkLen(I)Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;->mIkLen:I

    return-object p0
.end method

.method public blacklist setKc([B)Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;
    .locals 1

    invoke-static {p1}, Landroid/telephony/satellite/SemSatSimAuthResultData;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;->mKc:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setKcLen(I)Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;->mKcLen:I

    return-object p0
.end method

.method public blacklist setRes([B)Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;
    .locals 1

    invoke-static {p1}, Landroid/telephony/satellite/SemSatSimAuthResultData;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;->mRes:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setResLen(I)Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;->mResLen:I

    return-object p0
.end method

.method public blacklist setResult(I)Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;->mResult:I

    return-object p0
.end method
