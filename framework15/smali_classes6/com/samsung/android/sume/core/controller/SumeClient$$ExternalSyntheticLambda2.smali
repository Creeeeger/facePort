.class public final synthetic Lcom/samsung/android/sume/core/controller/SumeClient$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/List;

.field public final synthetic blacklist f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/controller/SumeClient$$ExternalSyntheticLambda2;->f$0:Ljava/util/List;

    iput-object p2, p0, Lcom/samsung/android/sume/core/controller/SumeClient$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sume/core/controller/SumeClient$$ExternalSyntheticLambda2;->f$0:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/android/sume/core/controller/SumeClient$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    check-cast p1, Lcom/samsung/android/sume/core/service/ServiceProxy;

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sume/core/controller/SumeClient;->lambda$run$1(Ljava/util/List;Ljava/util/List;Lcom/samsung/android/sume/core/service/ServiceProxy;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method
