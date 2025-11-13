.class public final synthetic Lcom/android/settings/homepage/contextualcards/ContextualCardLoader$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;

    check-cast p1, Lcom/android/settings/homepage/contextualcards/ContextualCard;

    new-instance v0, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker;-><init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/ContextualCard;)V

    return-object v0
.end method
