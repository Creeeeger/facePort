.class public final Landroid/view/translation/ViewTranslationResponse$Builder;
.super Landroid/view/translation/ViewTranslationResponse$BaseBuilder;
.source "ViewTranslationResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/translation/ViewTranslationResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAutofillId:Landroid/view/autofill/AutofillId;

.field private blacklist mBuilderFieldsSet:J

.field private blacklist mTranslationResponseValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/translation/TranslationResponseValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmTranslationResponseValues(Landroid/view/translation/ViewTranslationResponse$Builder;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Landroid/view/translation/ViewTranslationResponse$Builder;->mTranslationResponseValues:Ljava/util/Map;

    return-object p0
.end method

.method public constructor whitelist <init>(Landroid/view/autofill/AutofillId;)V
    .locals 3

    invoke-direct {p0}, Landroid/view/translation/ViewTranslationResponse$BaseBuilder;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/translation/ViewTranslationResponse$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/view/translation/ViewTranslationResponse$Builder;->mAutofillId:Landroid/view/autofill/AutofillId;

    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/view/translation/ViewTranslationResponse$Builder;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-void
.end method

.method private blacklist checkNotUsed()V
    .locals 4

    iget-wide v0, p0, Landroid/view/translation/ViewTranslationResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

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
.method public whitelist build()Landroid/view/translation/ViewTranslationResponse;
    .locals 4

    invoke-direct {p0}, Landroid/view/translation/ViewTranslationResponse$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/view/translation/ViewTranslationResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/translation/ViewTranslationResponse$Builder;->mBuilderFieldsSet:J

    iget-wide v0, p0, Landroid/view/translation/ViewTranslationResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/translation/ViewTranslationResponse;->-$$Nest$smdefaultTranslationResponseValues()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/view/translation/ViewTranslationResponse$Builder;->mTranslationResponseValues:Ljava/util/Map;

    :cond_0
    new-instance v0, Landroid/view/translation/ViewTranslationResponse;

    iget-object v1, p0, Landroid/view/translation/ViewTranslationResponse$Builder;->mAutofillId:Landroid/view/autofill/AutofillId;

    iget-object v2, p0, Landroid/view/translation/ViewTranslationResponse$Builder;->mTranslationResponseValues:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Landroid/view/translation/ViewTranslationResponse;-><init>(Landroid/view/autofill/AutofillId;Ljava/util/Map;)V

    return-object v0
.end method

.method blacklist setTranslationResponseValues(Ljava/util/Map;)Landroid/view/translation/ViewTranslationResponse$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/translation/TranslationResponseValue;",
            ">;)",
            "Landroid/view/translation/ViewTranslationResponse$Builder;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/view/translation/ViewTranslationResponse$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/view/translation/ViewTranslationResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/translation/ViewTranslationResponse$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/view/translation/ViewTranslationResponse$Builder;->mTranslationResponseValues:Ljava/util/Map;

    return-object p0
.end method

.method public bridge synthetic whitelist setValue(Ljava/lang/String;Landroid/view/translation/TranslationResponseValue;)Landroid/view/translation/ViewTranslationResponse$Builder;
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

    invoke-super {p0, p1, p2}, Landroid/view/translation/ViewTranslationResponse$BaseBuilder;->setValue(Ljava/lang/String;Landroid/view/translation/TranslationResponseValue;)Landroid/view/translation/ViewTranslationResponse$Builder;

    move-result-object p1

    return-object p1
.end method
