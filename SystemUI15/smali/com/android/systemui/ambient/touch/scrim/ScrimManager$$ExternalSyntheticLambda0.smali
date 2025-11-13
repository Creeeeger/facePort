.class public final synthetic Lcom/android/systemui/ambient/touch/scrim/ScrimManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/ambient/touch/scrim/ScrimManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/ambient/touch/scrim/ScrimManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/ambient/touch/scrim/ScrimManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/ambient/touch/scrim/ScrimManager;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/ambient/touch/scrim/ScrimManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/ambient/touch/scrim/ScrimManager;

    check-cast p1, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler$1;

    iget-object p0, p0, Lcom/android/systemui/ambient/touch/scrim/ScrimManager;->mCurrentController:Lcom/android/systemui/ambient/touch/scrim/ScrimController;

    iget-object p1, p1, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler$1;->this$0:Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;

    iget-object v0, p1, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;->mCurrentScrimController:Lcom/android/systemui/ambient/touch/scrim/ScrimController;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/ambient/touch/scrim/ScrimController;->reset$1()V

    :cond_0
    iput-object p0, p1, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;->mCurrentScrimController:Lcom/android/systemui/ambient/touch/scrim/ScrimController;

    return-void
.end method
