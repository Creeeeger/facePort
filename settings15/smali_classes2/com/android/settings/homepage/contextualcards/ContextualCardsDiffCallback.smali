.class public final Lcom/android/settings/homepage/contextualcards/ContextualCardsDiffCallback;
.super Landroidx/recyclerview/widget/DiffUtil$Callback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mNewCards:Ljava/util/List;

.field public final mOldCards:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsDiffCallback;->mOldCards:Ljava/util/List;

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsDiffCallback;->mNewCards:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final areContentsTheSame(II)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsDiffCallback;->mNewCards:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settings/homepage/contextualcards/ContextualCard;

    iget v0, p2, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mCategory:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget-boolean v0, p2, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mHasInlineAction:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsDiffCallback;->mOldCards:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;

    invoke-virtual {p0, p2}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final areItemsTheSame(II)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsDiffCallback;->mOldCards:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/homepage/contextualcards/ContextualCard;

    iget-object p1, p1, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsDiffCallback;->mNewCards:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final getNewListSize()I
    .locals 0

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsDiffCallback;->mNewCards:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final getOldListSize()I
    .locals 0

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsDiffCallback;->mOldCards:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method
