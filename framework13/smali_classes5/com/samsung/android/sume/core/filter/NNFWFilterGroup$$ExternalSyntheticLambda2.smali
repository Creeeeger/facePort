.class public final synthetic Lcom/samsung/android/sume/core/filter/NNFWFilterGroup$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/functional/ModelSelector$Item;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/functional/ModelSelector$Item;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/NNFWFilterGroup$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/sume/core/functional/ModelSelector$Item;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/NNFWFilterGroup$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/sume/core/functional/ModelSelector$Item;

    check-cast p1, Lcom/samsung/android/sume/core/filter/MediaFilter;

    invoke-static {v0, p1}, Lcom/samsung/android/sume/core/filter/NNFWFilterGroup;->lambda$loadModel$1(Lcom/samsung/android/sume/core/functional/ModelSelector$Item;Lcom/samsung/android/sume/core/filter/MediaFilter;)Z

    move-result p1

    return p1
.end method
