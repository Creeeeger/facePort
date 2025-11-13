.class public final synthetic Lcom/samsung/android/sume/Result$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/nn/Model;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/nn/Model;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/Result$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/sume/nn/Model;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/Result$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/sume/nn/Model;

    check-cast p1, Lcom/samsung/android/sume/nn/Model;

    invoke-static {v0, p1}, Lcom/samsung/android/sume/Result;->lambda$isApplied$0(Lcom/samsung/android/sume/nn/Model;Lcom/samsung/android/sume/nn/Model;)Z

    move-result p1

    return p1
.end method
