.class public final synthetic Lcom/android/settings/homepage/contextualcards/ContextualCardLoader$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;ILjava/util/List;I)V
    .locals 0

    iput p4, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    iput p2, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    iget v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader$$ExternalSyntheticLambda0;->f$1:I

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    check-cast p1, Lcom/android/settings/homepage/contextualcards/ContextualCard;

    iget v2, p1, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mCategory:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v1, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    iget v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader$$ExternalSyntheticLambda0;->f$1:I

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    check-cast p1, Lcom/android/settings/homepage/contextualcards/ContextualCard;

    iget v2, p1, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mCategory:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v1, :cond_3

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
