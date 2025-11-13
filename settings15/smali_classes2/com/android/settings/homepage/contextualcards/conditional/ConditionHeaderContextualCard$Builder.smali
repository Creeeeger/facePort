.class public final Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCard$Builder;
.super Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mConditionalCards:Ljava/util/List;


# virtual methods
.method public final build()Lcom/android/settings/homepage/contextualcards/ContextualCard;
    .locals 1

    new-instance v0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCard;

    invoke-direct {v0, p0}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCard;-><init>(Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCard$Builder;)V

    return-object v0
.end method
