.class public final synthetic Lcom/samsung/android/sume/core/filter/NNFilter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/format/MutableMediaFormat;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/format/MutableMediaFormat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/NNFilter$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/NNFilter$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    check-cast p1, Lcom/samsung/android/sume/core/functional/ModelSelector;

    invoke-static {v0, p1}, Lcom/samsung/android/sume/core/filter/NNFilter;->lambda$onMessageReceived$3(Lcom/samsung/android/sume/core/format/MutableMediaFormat;Lcom/samsung/android/sume/core/functional/ModelSelector;)Lcom/samsung/android/sume/core/functional/ModelSelector$Item;

    move-result-object p1

    return-object p1
.end method
