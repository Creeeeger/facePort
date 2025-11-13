.class public final synthetic Lcom/samsung/android/sume/core/descriptor/ParallelDescriptor$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Z


# direct methods
.method public synthetic constructor blacklist <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/samsung/android/sume/core/descriptor/ParallelDescriptor$$ExternalSyntheticLambda2;->f$0:Z

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sume/core/descriptor/ParallelDescriptor$$ExternalSyntheticLambda2;->f$0:Z

    check-cast p1, Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    invoke-static {v0, p1}, Lcom/samsung/android/sume/core/descriptor/ParallelDescriptor;->lambda$setUseExternalBufferComposer$3(ZLcom/samsung/android/sume/core/descriptor/MFDescriptor;)V

    return-void
.end method
