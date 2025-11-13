.class public final Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;
.super Lcom/android/settings/homepage/contextualcards/ContextualCard;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field static final UNSUPPORTED_RANKING_SCORE:D = -100.0


# instance fields
.field public final mActionText:Ljava/lang/CharSequence;

.field public final mConditionId:J

.field public final mMetricsConstant:I


# direct methods
.method public constructor <init>(Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard;-><init>(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)V

    iget-wide v0, p1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;->mConditionId:J

    iput-wide v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;->mConditionId:J

    iget v0, p1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;->mMetricsConstant:I

    iput v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;->mMetricsConstant:I

    iget-object p1, p1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;->mActionText:Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;->mActionText:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final getCardType()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method
