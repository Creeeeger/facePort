.class public final Landroid/view/translation/UiTranslationSpec$Builder;
.super Ljava/lang/Object;
.source "UiTranslationSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/translation/UiTranslationSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuilderFieldsSet:J

.field private blacklist mShouldPadContentForCompat:Z


# direct methods
.method public constructor whitelist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/translation/UiTranslationSpec$Builder;->mBuilderFieldsSet:J

    return-void
.end method

.method private blacklist checkNotUsed()V
    .locals 4

    iget-wide v0, p0, Landroid/view/translation/UiTranslationSpec$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

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
.method public whitelist build()Landroid/view/translation/UiTranslationSpec;
    .locals 4

    invoke-direct {p0}, Landroid/view/translation/UiTranslationSpec$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/view/translation/UiTranslationSpec$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/translation/UiTranslationSpec$Builder;->mBuilderFieldsSet:J

    iget-wide v0, p0, Landroid/view/translation/UiTranslationSpec$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/translation/UiTranslationSpec$Builder;->mShouldPadContentForCompat:Z

    :cond_0
    new-instance v0, Landroid/view/translation/UiTranslationSpec;

    iget-boolean v1, p0, Landroid/view/translation/UiTranslationSpec$Builder;->mShouldPadContentForCompat:Z

    invoke-direct {v0, v1}, Landroid/view/translation/UiTranslationSpec;-><init>(Z)V

    return-object v0
.end method

.method public whitelist setShouldPadContentForCompat(Z)Landroid/view/translation/UiTranslationSpec$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/view/translation/UiTranslationSpec$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/view/translation/UiTranslationSpec$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/translation/UiTranslationSpec$Builder;->mBuilderFieldsSet:J

    iput-boolean p1, p0, Landroid/view/translation/UiTranslationSpec$Builder;->mShouldPadContentForCompat:Z

    return-object p0
.end method
