.class public final synthetic Lcom/samsung/android/sume/core/functional/ImgProcessorWrapper$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:Ljava/lang/Enum;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/lang/Enum;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/functional/ImgProcessorWrapper$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Enum;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/functional/ImgProcessorWrapper$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Enum;

    check-cast p1, Lcom/samsung/android/sume/core/functional/ImgProcessor;

    invoke-static {v0, p1}, Lcom/samsung/android/sume/core/functional/ImgProcessorWrapper;->lambda$of$2(Ljava/lang/Enum;Lcom/samsung/android/sume/core/functional/ImgProcessor;)Lcom/samsung/android/sume/core/functional/ImgProcessorWrapper;

    move-result-object p1

    return-object p1
.end method
