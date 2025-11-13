.class public final Landroid/view/translation/TranslationResponse$Builder;
.super Landroid/view/translation/TranslationResponse$BaseBuilder;
.source "TranslationResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/translation/TranslationResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuilderFieldsSet:J

.field private blacklist mFinalResponse:Z

.field private blacklist mTranslationResponseValues:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/translation/TranslationResponseValue;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTranslationStatus:I

.field private blacklist mViewTranslationResponses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/translation/ViewTranslationResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmTranslationResponseValues(Landroid/view/translation/TranslationResponse$Builder;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Landroid/view/translation/TranslationResponse$Builder;->mTranslationResponseValues:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmViewTranslationResponses(Landroid/view/translation/TranslationResponse$Builder;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Landroid/view/translation/TranslationResponse$Builder;->mViewTranslationResponses:Landroid/util/SparseArray;

    return-object p0
.end method

.method public constructor whitelist <init>(I)V
    .locals 5

    invoke-direct {p0}, Landroid/view/translation/TranslationResponse$BaseBuilder;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/translation/TranslationResponse$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/view/translation/TranslationResponse$Builder;->mTranslationStatus:I

    iget v0, p0, Landroid/view/translation/TranslationResponse$Builder;->mTranslationStatus:I

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/view/translation/TranslationResponse$Builder;->mTranslationStatus:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/view/translation/TranslationResponse$Builder;->mTranslationStatus:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "translationStatus was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/translation/TranslationResponse$Builder;->mTranslationStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but must be one of: TRANSLATION_STATUS_SUCCESS("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), TRANSLATION_STATUS_UNKNOWN_ERROR("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "), TRANSLATION_STATUS_CONTEXT_UNSUPPORTED("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist checkNotUsed()V
    .locals 4

    iget-wide v0, p0, Landroid/view/translation/TranslationResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/view/translation/TranslationResponse;
    .locals 6

    invoke-direct {p0}, Landroid/view/translation/TranslationResponse$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/view/translation/TranslationResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/translation/TranslationResponse$Builder;->mBuilderFieldsSet:J

    iget-wide v0, p0, Landroid/view/translation/TranslationResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/translation/TranslationResponse;->-$$Nest$smdefaultTranslationResponseValues()Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Landroid/view/translation/TranslationResponse$Builder;->mTranslationResponseValues:Landroid/util/SparseArray;

    :cond_0
    iget-wide v0, p0, Landroid/view/translation/TranslationResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x4

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-static {}, Landroid/view/translation/TranslationResponse;->-$$Nest$smdefaultViewTranslationResponses()Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Landroid/view/translation/TranslationResponse$Builder;->mViewTranslationResponses:Landroid/util/SparseArray;

    :cond_1
    iget-wide v0, p0, Landroid/view/translation/TranslationResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x8

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-static {}, Landroid/view/translation/TranslationResponse;->-$$Nest$smdefaultFinalResponse()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/translation/TranslationResponse$Builder;->mFinalResponse:Z

    :cond_2
    new-instance v0, Landroid/view/translation/TranslationResponse;

    iget v1, p0, Landroid/view/translation/TranslationResponse$Builder;->mTranslationStatus:I

    iget-object v2, p0, Landroid/view/translation/TranslationResponse$Builder;->mTranslationResponseValues:Landroid/util/SparseArray;

    iget-object v3, p0, Landroid/view/translation/TranslationResponse$Builder;->mViewTranslationResponses:Landroid/util/SparseArray;

    iget-boolean v4, p0, Landroid/view/translation/TranslationResponse$Builder;->mFinalResponse:Z

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/translation/TranslationResponse;-><init>(ILandroid/util/SparseArray;Landroid/util/SparseArray;Z)V

    return-object v0
.end method

.method public whitelist setFinalResponse(Z)Landroid/view/translation/TranslationResponse$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/view/translation/TranslationResponse$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/view/translation/TranslationResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/translation/TranslationResponse$Builder;->mBuilderFieldsSet:J

    iput-boolean p1, p0, Landroid/view/translation/TranslationResponse$Builder;->mFinalResponse:Z

    return-object p0
.end method

.method public bridge synthetic whitelist setTranslationResponseValue(ILandroid/view/translation/TranslationResponseValue;)Landroid/view/translation/TranslationResponse$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    invoke-super {p0, p1, p2}, Landroid/view/translation/TranslationResponse$BaseBuilder;->setTranslationResponseValue(ILandroid/view/translation/TranslationResponseValue;)Landroid/view/translation/TranslationResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public whitelist setTranslationResponseValues(Landroid/util/SparseArray;)Landroid/view/translation/TranslationResponse$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/view/translation/TranslationResponseValue;",
            ">;)",
            "Landroid/view/translation/TranslationResponse$Builder;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/view/translation/TranslationResponse$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/view/translation/TranslationResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/translation/TranslationResponse$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/view/translation/TranslationResponse$Builder;->mTranslationResponseValues:Landroid/util/SparseArray;

    return-object p0
.end method

.method public greylist setTranslationStatus(I)Landroid/view/translation/TranslationResponse$Builder;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/view/translation/TranslationResponse$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/view/translation/TranslationResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/translation/TranslationResponse$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/view/translation/TranslationResponse$Builder;->mTranslationStatus:I

    return-object p0
.end method

.method public bridge synthetic whitelist setViewTranslationResponse(ILandroid/view/translation/ViewTranslationResponse;)Landroid/view/translation/TranslationResponse$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    invoke-super {p0, p1, p2}, Landroid/view/translation/TranslationResponse$BaseBuilder;->setViewTranslationResponse(ILandroid/view/translation/ViewTranslationResponse;)Landroid/view/translation/TranslationResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public whitelist setViewTranslationResponses(Landroid/util/SparseArray;)Landroid/view/translation/TranslationResponse$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/view/translation/ViewTranslationResponse;",
            ">;)",
            "Landroid/view/translation/TranslationResponse$Builder;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/view/translation/TranslationResponse$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/view/translation/TranslationResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/translation/TranslationResponse$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/view/translation/TranslationResponse$Builder;->mViewTranslationResponses:Landroid/util/SparseArray;

    return-object p0
.end method
