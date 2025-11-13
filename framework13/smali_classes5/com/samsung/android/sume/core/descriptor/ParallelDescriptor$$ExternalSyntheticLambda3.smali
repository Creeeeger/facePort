.class public final synthetic Lcom/samsung/android/sume/core/descriptor/ParallelDescriptor$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/types/SplitType;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/types/SplitType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/descriptor/ParallelDescriptor$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/sume/core/types/SplitType;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/descriptor/ParallelDescriptor$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/sume/core/types/SplitType;

    check-cast p1, Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    invoke-static {v0, p1}, Lcom/samsung/android/sume/core/descriptor/ParallelDescriptor;->lambda$setSplitType$0(Lcom/samsung/android/sume/core/types/SplitType;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)V

    return-void
.end method
