.class public Lcom/samsung/android/sdk/scs/ai/language/ResultErrorException;
.super Lcom/samsung/android/sdk/scs/base/ResultException;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mErrorCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/scs/base/ResultException;-><init>(I)V

    sget-object p1, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;->DEVICE_UNKNOWN_ERROR:Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/scs/ai/language/ResultErrorException;->mErrorCode:I

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/sdk/scs/base/ResultException;-><init>(ILjava/lang/String;)V

    iput p2, p0, Lcom/samsung/android/sdk/scs/ai/language/ResultErrorException;->mErrorCode:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/scs/base/ResultException;-><init>(ILjava/lang/String;)V

    sget-object p1, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;->DEVICE_UNKNOWN_ERROR:Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/scs/ai/language/ResultErrorException;->mErrorCode:I

    return-void
.end method


# virtual methods
.method public final getErrorCodeClassified()Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;
    .locals 3

    iget p0, p0, Lcom/samsung/android/sdk/scs/ai/language/ResultErrorException;->mErrorCode:I

    div-int/lit16 v0, p0, 0x3e8

    const/4 v1, 0x1

    if-lt p0, v1, :cond_0

    const/16 v2, 0xe

    if-gt p0, v2, :cond_0

    sget-object p0, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;->DEVICE_NETORK_ERROR:Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    goto :goto_1

    :cond_0
    if-eq v0, v1, :cond_9

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    const/4 v1, 0x4

    if-eq v0, v1, :cond_5

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/16 p0, 0x8

    if-eq v0, p0, :cond_1

    const/16 p0, 0x9

    if-eq v0, p0, :cond_1

    sget-object p0, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;->DEVICE_UNKNOWN_ERROR:Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;->SERVER_ERROR:Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    goto :goto_1

    :cond_2
    const/16 v0, 0x1400

    if-eq p0, v0, :cond_4

    const/16 v0, 0x145a

    if-eq p0, v0, :cond_3

    const/16 v0, 0x1464

    if-eq p0, v0, :cond_4

    sget-object p0, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;->SAFETY_FILTER_ERROR:Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    goto :goto_1

    :cond_3
    sget-object p0, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;->SAFETY_FILTER_RECITATION_ERROR:Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    goto :goto_1

    :cond_4
    sget-object p0, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;->SAFETY_FILTER_UNSUPPORTED_LANGUAGE_ERROR:Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    goto :goto_1

    :cond_5
    sget-object p0, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;->SERVER_QUOTA_ERROR:Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    goto :goto_1

    :cond_6
    const/16 v0, 0x898

    if-eq p0, v0, :cond_8

    const/16 v0, 0x899

    if-ne p0, v0, :cond_7

    goto :goto_0

    :cond_7
    sget-object p0, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;->AUTH_ERROR:Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    goto :goto_1

    :cond_8
    :goto_0
    sget-object p0, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;->AUTH_SA_ERROR:Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    goto :goto_1

    :cond_9
    sget-object p0, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;->CLIENT_ERROR:Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    :goto_1
    return-object p0
.end method
