.class public final synthetic Lcom/samsung/android/sume/core/types/MediaType$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:I


# direct methods
.method public synthetic constructor blacklist <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/sume/core/types/MediaType$$ExternalSyntheticLambda1;->f$0:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sume/core/types/MediaType$$ExternalSyntheticLambda1;->f$0:I

    invoke-static {v0}, Lcom/samsung/android/sume/core/types/MediaType;->lambda$of$1(I)Ljava/security/InvalidParameterException;

    move-result-object v0

    return-object v0
.end method
