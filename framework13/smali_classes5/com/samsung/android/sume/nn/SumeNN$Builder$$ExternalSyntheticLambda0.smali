.class public final synthetic Lcom/samsung/android/sume/nn/SumeNN$Builder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/nn/SumeNN$Builder;

.field public final synthetic blacklist f$1:[Lcom/samsung/android/sume/nn/Model;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/nn/SumeNN$Builder;[Lcom/samsung/android/sume/nn/Model;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/nn/SumeNN$Builder$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sume/nn/SumeNN$Builder;

    iput-object p2, p0, Lcom/samsung/android/sume/nn/SumeNN$Builder$$ExternalSyntheticLambda0;->f$1:[Lcom/samsung/android/sume/nn/Model;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN$Builder$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sume/nn/SumeNN$Builder;

    iget-object v1, p0, Lcom/samsung/android/sume/nn/SumeNN$Builder$$ExternalSyntheticLambda0;->f$1:[Lcom/samsung/android/sume/nn/Model;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/sume/nn/SumeNN$Builder;->lambda$addModel$0$com-samsung-android-sume-nn-SumeNN$Builder([Lcom/samsung/android/sume/nn/Model;I)V

    return-void
.end method
