.class public final synthetic Lcom/samsung/android/sume/core/functional/OperatorMap$1$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/format/MediaFormat;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/format/MediaFormat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/functional/OperatorMap$1$$ExternalSyntheticLambda9;->f$0:Lcom/samsung/android/sume/core/format/MediaFormat;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/functional/OperatorMap$1$$ExternalSyntheticLambda9;->f$0:Lcom/samsung/android/sume/core/format/MediaFormat;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/samsung/android/sume/core/functional/OperatorMap$1;->lambda$new$0(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/String;)Lcom/samsung/android/sume/core/types/SplitType;

    move-result-object p1

    return-object p1
.end method
