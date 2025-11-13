.class public final Landroid/view/translation/TranslationRequest$Builder;
.super Landroid/view/translation/TranslationRequest$BaseBuilder;
.source "TranslationRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/translation/TranslationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuilderFieldsSet:J

.field private blacklist mFlags:I

.field private blacklist mTranslationRequestValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/translation/TranslationRequestValue;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mViewTranslationRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/translation/ViewTranslationRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/view/translation/TranslationRequest$BaseBuilder;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/translation/TranslationRequest$Builder;->mBuilderFieldsSet:J

    return-void
.end method

.method private blacklist checkNotUsed()V
    .locals 4

    iget-wide v0, p0, Landroid/view/translation/TranslationRequest$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

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
.method public greylist addTranslationRequestValue(Landroid/view/translation/TranslationRequestValue;)Landroid/view/translation/TranslationRequest$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/view/translation/TranslationRequest$Builder;->mTranslationRequestValues:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/translation/TranslationRequest$Builder;->setTranslationRequestValues(Ljava/util/List;)Landroid/view/translation/TranslationRequest$Builder;

    :cond_0
    iget-object v0, p0, Landroid/view/translation/TranslationRequest$Builder;->mTranslationRequestValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public greylist addViewTranslationRequest(Landroid/view/translation/ViewTranslationRequest;)Landroid/view/translation/TranslationRequest$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/view/translation/TranslationRequest$Builder;->mViewTranslationRequests:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/translation/TranslationRequest$Builder;->setViewTranslationRequests(Ljava/util/List;)Landroid/view/translation/TranslationRequest$Builder;

    :cond_0
    iget-object v0, p0, Landroid/view/translation/TranslationRequest$Builder;->mViewTranslationRequests:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public whitelist build()Landroid/view/translation/TranslationRequest;
    .locals 6

    invoke-direct {p0}, Landroid/view/translation/TranslationRequest$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/view/translation/TranslationRequest$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/translation/TranslationRequest$Builder;->mBuilderFieldsSet:J

    iget-wide v0, p0, Landroid/view/translation/TranslationRequest$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/translation/TranslationRequest;->-$$Nest$smdefaultFlags()I

    move-result v0

    iput v0, p0, Landroid/view/translation/TranslationRequest$Builder;->mFlags:I

    :cond_0
    iget-wide v0, p0, Landroid/view/translation/TranslationRequest$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x2

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-static {}, Landroid/view/translation/TranslationRequest;->-$$Nest$smdefaultTranslationRequestValues()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/view/translation/TranslationRequest$Builder;->mTranslationRequestValues:Ljava/util/List;

    :cond_1
    iget-wide v0, p0, Landroid/view/translation/TranslationRequest$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x4

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-static {}, Landroid/view/translation/TranslationRequest;->-$$Nest$smdefaultViewTranslationRequests()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/view/translation/TranslationRequest$Builder;->mViewTranslationRequests:Ljava/util/List;

    :cond_2
    new-instance v0, Landroid/view/translation/TranslationRequest;

    iget v1, p0, Landroid/view/translation/TranslationRequest$Builder;->mFlags:I

    iget-object v2, p0, Landroid/view/translation/TranslationRequest$Builder;->mTranslationRequestValues:Ljava/util/List;

    iget-object v3, p0, Landroid/view/translation/TranslationRequest$Builder;->mViewTranslationRequests:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Landroid/view/translation/TranslationRequest;-><init>(ILjava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public whitelist setFlags(I)Landroid/view/translation/TranslationRequest$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/view/translation/TranslationRequest$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/view/translation/TranslationRequest$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/translation/TranslationRequest$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/view/translation/TranslationRequest$Builder;->mFlags:I

    return-object p0
.end method

.method public whitelist setTranslationRequestValues(Ljava/util/List;)Landroid/view/translation/TranslationRequest$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/translation/TranslationRequestValue;",
            ">;)",
            "Landroid/view/translation/TranslationRequest$Builder;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/view/translation/TranslationRequest$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/view/translation/TranslationRequest$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/translation/TranslationRequest$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/view/translation/TranslationRequest$Builder;->mTranslationRequestValues:Ljava/util/List;

    return-object p0
.end method

.method public whitelist setViewTranslationRequests(Ljava/util/List;)Landroid/view/translation/TranslationRequest$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/translation/ViewTranslationRequest;",
            ">;)",
            "Landroid/view/translation/TranslationRequest$Builder;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/view/translation/TranslationRequest$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/view/translation/TranslationRequest$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/translation/TranslationRequest$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/view/translation/TranslationRequest$Builder;->mViewTranslationRequests:Ljava/util/List;

    return-object p0
.end method
