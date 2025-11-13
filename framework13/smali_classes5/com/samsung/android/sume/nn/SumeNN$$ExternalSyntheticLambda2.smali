.class public final synthetic Lcom/samsung/android/sume/nn/SumeNN$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/Utils$StrongReference;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/Utils$StrongReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/nn/SumeNN$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/sume/Utils$StrongReference;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/sume/Utils$StrongReference;

    check-cast p1, Lcom/samsung/android/sume/Result;

    invoke-static {v0, p1}, Lcom/samsung/android/sume/nn/SumeNN;->lambda$run$5(Lcom/samsung/android/sume/Utils$StrongReference;Lcom/samsung/android/sume/Result;)V

    return-void
.end method
