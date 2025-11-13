.class public final synthetic Lcom/samsung/android/sume/core/types/NumericEnum$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Ljava/lang/reflect/Method;

.field public final synthetic blacklist f$1:I


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/lang/reflect/Method;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/types/NumericEnum$$ExternalSyntheticLambda2;->f$0:Ljava/lang/reflect/Method;

    iput p2, p0, Lcom/samsung/android/sume/core/types/NumericEnum$$ExternalSyntheticLambda2;->f$1:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sume/core/types/NumericEnum$$ExternalSyntheticLambda2;->f$0:Ljava/lang/reflect/Method;

    iget v1, p0, Lcom/samsung/android/sume/core/types/NumericEnum$$ExternalSyntheticLambda2;->f$1:I

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sume/core/types/NumericEnum;->lambda$fromValue$0(Ljava/lang/reflect/Method;ILjava/lang/Object;)Z

    move-result p1

    return p1
.end method
