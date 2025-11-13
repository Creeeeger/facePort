.class public final synthetic Lcom/samsung/android/sume/core/types/DataType$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:I


# direct methods
.method public synthetic constructor blacklist <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/sume/core/types/DataType$$ExternalSyntheticLambda0;->f$0:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sume/core/types/DataType$$ExternalSyntheticLambda0;->f$0:I

    check-cast p1, Lcom/samsung/android/sume/core/types/DataType;

    invoke-static {v0, p1}, Lcom/samsung/android/sume/core/types/DataType;->lambda$from$0(ILcom/samsung/android/sume/core/types/DataType;)Z

    move-result p1

    return p1
.end method
