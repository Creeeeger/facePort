.class public final Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;
.super Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mActionText:Ljava/lang/CharSequence;

.field public mConditionId:J

.field public mMetricsConstant:I


# virtual methods
.method public final build()Lcom/android/settings/homepage/contextualcards/ContextualCard;
    .locals 2

    const-wide/high16 v0, -0x3fa7000000000000L    # -100.0

    iput-wide v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mRankingScore:D

    new-instance v0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;

    invoke-direct {v0, p0}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;-><init>(Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;)V

    return-object v0
.end method
