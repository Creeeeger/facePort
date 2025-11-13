.class public Lcom/samsung/android/knox/mtd/AnalysisResult;
.super Ljava/lang/Object;
.source "AnalysisResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/mtd/AnalysisResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field greylist confidence:D

.field greylist givenInput:Ljava/lang/String;

.field greylist inferenceTime:J

.field greylist resultCode:Lcom/samsung/android/knox/mtd/ResultCode;

.field greylist shortUrlResolved:Ljava/lang/String;

.field greylist statusCode:Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;

.field greylist typoSquattingPredicted:Ljava/lang/String;


# direct methods
.method static constructor greylist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/mtd/AnalysisResult$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/mtd/AnalysisResult$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/mtd/AnalysisResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;->INTERNAL_ERROR:Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;

    iput-object v0, p0, Lcom/samsung/android/knox/mtd/AnalysisResult;->statusCode:Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;

    sget-object v0, Lcom/samsung/android/knox/mtd/ResultCode;->UNANALYZED:Lcom/samsung/android/knox/mtd/ResultCode;

    iput-object v0, p0, Lcom/samsung/android/knox/mtd/AnalysisResult;->resultCode:Lcom/samsung/android/knox/mtd/ResultCode;

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/samsung/android/knox/mtd/AnalysisResult;->confidence:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/knox/mtd/AnalysisResult;->inferenceTime:J

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/knox/mtd/AnalysisResult;->typoSquattingPredicted:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/mtd/AnalysisResult;->shortUrlResolved:Ljava/lang/String;

    return-void
.end method

.method protected constructor greylist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/mtd/AnalysisResult;->givenInput:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;->getCodeFromValue(I)Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/mtd/AnalysisResult;->statusCode:Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/mtd/ResultCode;->getCodeFromValue(I)Lcom/samsung/android/knox/mtd/ResultCode;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/mtd/AnalysisResult;->resultCode:Lcom/samsung/android/knox/mtd/ResultCode;

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/knox/mtd/AnalysisResult;->confidence:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/knox/mtd/AnalysisResult;->inferenceTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/mtd/AnalysisResult;->typoSquattingPredicted:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/mtd/AnalysisResult;->shortUrlResolved:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist getConfidence()D
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/knox/mtd/AnalysisResult;->confidence:D

    return-wide v0
.end method

.method public greylist getGivenInput()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/mtd/AnalysisResult;->givenInput:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getInferenceTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/knox/mtd/AnalysisResult;->inferenceTime:J

    return-wide v0
.end method

.method public greylist getResultCode()Lcom/samsung/android/knox/mtd/ResultCode;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/mtd/AnalysisResult;->resultCode:Lcom/samsung/android/knox/mtd/ResultCode;

    return-object v0
.end method

.method public greylist getShortUrlResolved()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/mtd/AnalysisResult;->shortUrlResolved:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getStatusCode()Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/mtd/AnalysisResult;->statusCode:Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;

    return-object v0
.end method

.method public greylist getTypoSquattingPredicted()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/mtd/AnalysisResult;->typoSquattingPredicted:Ljava/lang/String;

    return-object v0
.end method

.method public greylist setConfidence(D)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/knox/mtd/AnalysisResult;->confidence:D

    return-void
.end method

.method public greylist setGivenInput(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/mtd/AnalysisResult;->givenInput:Ljava/lang/String;

    return-void
.end method

.method public greylist setInferenceTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/knox/mtd/AnalysisResult;->inferenceTime:J

    return-void
.end method

.method public greylist setResultCode(Lcom/samsung/android/knox/mtd/ResultCode;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/mtd/AnalysisResult;->resultCode:Lcom/samsung/android/knox/mtd/ResultCode;

    return-void
.end method

.method public greylist setShortUrlResolved(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/mtd/AnalysisResult;->shortUrlResolved:Ljava/lang/String;

    return-void
.end method

.method public greylist setStatusCode(I)V
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;->getCodeFromValue(I)Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/mtd/AnalysisResult;->statusCode:Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;

    return-void
.end method

.method public greylist setTypoSquattingPredicted(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/mtd/AnalysisResult;->typoSquattingPredicted:Ljava/lang/String;

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/mtd/AnalysisResult;->givenInput:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/mtd/AnalysisResult;->statusCode:Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;

    invoke-virtual {v0}, Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/knox/mtd/AnalysisResult;->resultCode:Lcom/samsung/android/knox/mtd/ResultCode;

    invoke-virtual {v0}, Lcom/samsung/android/knox/mtd/ResultCode;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/samsung/android/knox/mtd/AnalysisResult;->confidence:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/samsung/android/knox/mtd/AnalysisResult;->inferenceTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/samsung/android/knox/mtd/AnalysisResult;->typoSquattingPredicted:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/mtd/AnalysisResult;->shortUrlResolved:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
