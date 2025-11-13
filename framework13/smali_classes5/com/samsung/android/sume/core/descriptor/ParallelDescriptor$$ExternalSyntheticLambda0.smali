.class public final synthetic Lcom/samsung/android/sume/core/descriptor/ParallelDescriptor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/util/Pair;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/util/Pair;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/descriptor/ParallelDescriptor$$ExternalSyntheticLambda0;->f$0:Landroid/util/Pair;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/descriptor/ParallelDescriptor$$ExternalSyntheticLambda0;->f$0:Landroid/util/Pair;

    check-cast p1, Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    invoke-static {v0, p1}, Lcom/samsung/android/sume/core/descriptor/ParallelDescriptor;->lambda$setPad$1(Landroid/util/Pair;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)V

    return-void
.end method
