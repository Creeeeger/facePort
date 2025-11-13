.class public final Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCard;
.super Lcom/android/settings/homepage/contextualcards/ContextualCard;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mConditionalCards:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCard$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard;-><init>(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)V

    iget-object p1, p1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCard$Builder;->mConditionalCards:Ljava/util/List;

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCard;->mConditionalCards:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCard;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCard;

    iget-object v1, p1, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mName:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCard;->mConditionalCards:Ljava/util/List;

    iget-object p1, p1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCard;->mConditionalCards:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final getCardType()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCard;->mConditionalCards:Ljava/util/List;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mName:Ljava/lang/String;

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
