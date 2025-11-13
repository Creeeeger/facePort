.class public final synthetic Lcom/android/systemui/basic/util/CoverUtilWrapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/util/CoverUtil$CoverStateChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/basic/util/CoverUtilWrapper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/basic/util/CoverUtilWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/basic/util/CoverUtilWrapper$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/basic/util/CoverUtilWrapper;

    return-void
.end method


# virtual methods
.method public final onUpdateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/basic/util/CoverUtilWrapper$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/basic/util/CoverUtilWrapper;

    iget-object v0, p0, Lcom/android/systemui/basic/util/CoverUtilWrapper;->mListeners:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/basic/util/CoverUtilWrapper;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result p1

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/basic/util/CoverUtilWrapper;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v1

    const/16 v2, 0xf

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/systemui/basic/util/CoverUtilWrapper;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v1

    const/16 v2, 0x10

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/systemui/basic/util/CoverUtilWrapper;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/basic/util/CoverUtilWrapper;->mActionBeforeSecureConfirm:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/basic/util/CoverUtilWrapper;->mActionBeforeSecureConfirm:Ljava/lang/Runnable;

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/basic/util/CoverUtilWrapper;->mListeners:Ljava/util/Map;

    new-instance v1, Lcom/android/systemui/basic/util/CoverUtilWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, p1}, Lcom/android/systemui/basic/util/CoverUtilWrapper$$ExternalSyntheticLambda1;-><init>(ZI)V

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    :goto_0
    return-void
.end method
