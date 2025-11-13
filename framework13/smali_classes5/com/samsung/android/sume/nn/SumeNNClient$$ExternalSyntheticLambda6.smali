.class public final synthetic Lcom/samsung/android/sume/nn/SumeNNClient$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/samsung/android/sume/nn/SumeNNClient$Job;

    check-cast p2, Lcom/samsung/android/sume/nn/SumeNNClient$Job;

    invoke-static {p1, p2}, Lcom/samsung/android/sume/nn/SumeNNClient;->lambda$new$0(Lcom/samsung/android/sume/nn/SumeNNClient$Job;Lcom/samsung/android/sume/nn/SumeNNClient$Job;)I

    move-result p1

    return p1
.end method
