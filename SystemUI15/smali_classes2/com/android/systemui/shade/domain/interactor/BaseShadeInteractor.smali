.class public interface abstract Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# virtual methods
.method public abstract getAnyExpansion()Lkotlinx/coroutines/flow/StateFlow;
.end method

.method public abstract getQsExpansion()Lkotlinx/coroutines/flow/StateFlow;
.end method

.method public abstract getShadeExpansion()Lkotlinx/coroutines/flow/StateFlow;
.end method

.method public abstract getShadeMode()Lkotlinx/coroutines/flow/StateFlow;
.end method

.method public abstract isAnyExpanded()Lkotlinx/coroutines/flow/StateFlow;
.end method

.method public abstract isQsBypassingShade()Lkotlinx/coroutines/flow/Flow;
.end method

.method public abstract isQsExpanded()Lkotlinx/coroutines/flow/StateFlow;
.end method

.method public abstract isUserInteractingWithQs()Lkotlinx/coroutines/flow/Flow;
.end method

.method public abstract isUserInteractingWithShade()Lkotlinx/coroutines/flow/Flow;
.end method
