.class public final synthetic Lcom/samsung/android/sume/Result$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/Result;

.field public final synthetic blacklist f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/Result;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/Result$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/sume/Result;

    iput-object p2, p0, Lcom/samsung/android/sume/Result$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sume/Result$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/sume/Result;

    iget-object v1, p0, Lcom/samsung/android/sume/Result$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/sume/Result;->lambda$equals$1$com-samsung-android-sume-Result(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
