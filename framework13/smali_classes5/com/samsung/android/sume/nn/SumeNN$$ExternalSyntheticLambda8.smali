.class public final synthetic Lcom/samsung/android/sume/nn/SumeNN$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/nn/SumeNN;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/nn/SumeNN;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/nn/SumeNN$$ExternalSyntheticLambda8;->f$0:Lcom/samsung/android/sume/nn/SumeNN;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN$$ExternalSyntheticLambda8;->f$0:Lcom/samsung/android/sume/nn/SumeNN;

    check-cast p1, Ljava/util/concurrent/locks/Condition;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/nn/SumeNN;->lambda$new$0$com-samsung-android-sume-nn-SumeNN(Ljava/util/concurrent/locks/Condition;)V

    return-void
.end method
