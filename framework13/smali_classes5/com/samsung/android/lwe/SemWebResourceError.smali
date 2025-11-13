.class public Lcom/samsung/android/lwe/SemWebResourceError;
.super Ljava/lang/Object;
.source "SemWebResourceError.java"


# instance fields
.field private blacklist mErrorCode:I

.field private blacklist mErrorDescription:Ljava/lang/CharSequence;


# direct methods
.method public constructor blacklist <init>(ILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "description"    # Ljava/lang/CharSequence;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/lwe/SemWebResourceError;->mErrorCode:I

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/lwe/SemWebResourceError;->mErrorDescription:Ljava/lang/CharSequence;

    .line 40
    iput p1, p0, Lcom/samsung/android/lwe/SemWebResourceError;->mErrorCode:I

    .line 41
    iput-object p2, p0, Lcom/samsung/android/lwe/SemWebResourceError;->mErrorDescription:Ljava/lang/CharSequence;

    .line 42
    return-void
.end method


# virtual methods
.method public whitelist getDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/samsung/android/lwe/SemWebResourceError;->mErrorDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getErrorCode()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/samsung/android/lwe/SemWebResourceError;->mErrorCode:I

    return v0
.end method
