.class public final synthetic Lcom/android/settings/network/helper/SelectableSubscriptions$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/helper/SelectableSubscriptions$$ExternalSyntheticLambda1;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/android/settings/network/helper/SelectableSubscriptions$$ExternalSyntheticLambda1;->f$0:Ljava/util/List;

    new-instance v0, Lcom/android/settings/network/helper/SubscriptionAnnotation$Builder;

    invoke-direct {v0, p1, p0}, Lcom/android/settings/network/helper/SubscriptionAnnotation$Builder;-><init>(ILjava/util/List;)V

    return-object v0
.end method
