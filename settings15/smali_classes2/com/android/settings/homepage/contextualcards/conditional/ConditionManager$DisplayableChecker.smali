.class public final Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager$DisplayableChecker;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final mController:Lcom/android/settings/homepage/contextualcards/conditional/ConditionalCardController;


# direct methods
.method public constructor <init>(Lcom/android/settings/homepage/contextualcards/conditional/ConditionalCardController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager$DisplayableChecker;->mController:Lcom/android/settings/homepage/contextualcards/conditional/ConditionalCardController;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager$DisplayableChecker;->mController:Lcom/android/settings/homepage/contextualcards/conditional/ConditionalCardController;

    invoke-interface {p0}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalCardController;->isDisplayable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalCardController;->buildContextualCard()Lcom/android/settings/homepage/contextualcards/ContextualCard;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
