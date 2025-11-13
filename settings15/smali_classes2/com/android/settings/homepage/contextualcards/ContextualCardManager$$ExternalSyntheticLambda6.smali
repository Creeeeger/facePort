.class public final synthetic Lcom/android/settings/homepage/contextualcards/ContextualCardManager$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/homepage/contextualcards/ContextualCardManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/homepage/contextualcards/ContextualCardManager;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager$$ExternalSyntheticLambda6;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager$$ExternalSyntheticLambda6;->f$0:Lcom/android/settings/homepage/contextualcards/ContextualCardManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager$$ExternalSyntheticLambda6;->$r8$classId:I

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager$$ExternalSyntheticLambda6;->f$0:Lcom/android/settings/homepage/contextualcards/ContextualCardManager;

    check-cast p1, Lcom/android/settings/homepage/contextualcards/ContextualCard;

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->mContextualCards:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->mSavedCards:Ljava/util/List;

    iget-object p1, p1, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mName:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
