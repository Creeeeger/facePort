.class public final synthetic Lcom/android/settings/network/helper/SelectableSubscriptions$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/network/helper/SelectableSubscriptions;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/helper/SelectableSubscriptions;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/helper/SelectableSubscriptions$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/network/helper/SelectableSubscriptions;

    iput-object p2, p0, Lcom/android/settings/network/helper/SelectableSubscriptions$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/settings/network/helper/SelectableSubscriptions$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/network/helper/SelectableSubscriptions;

    iget-object p0, p0, Lcom/android/settings/network/helper/SelectableSubscriptions$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    check-cast p1, Lcom/android/settings/network/helper/SubscriptionAnnotation$Builder;

    iget-object v0, v0, Lcom/android/settings/network/helper/SelectableSubscriptions;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/settings/network/helper/SubscriptionAnnotation;

    iget-object v2, p1, Lcom/android/settings/network/helper/SubscriptionAnnotation$Builder;->mSubInfoList:Ljava/util/List;

    iget p1, p1, Lcom/android/settings/network/helper/SubscriptionAnnotation$Builder;->mIndexWithinList:I

    invoke-direct {v1, v2, p1, v0, p0}, Lcom/android/settings/network/helper/SubscriptionAnnotation;-><init>(Ljava/util/List;ILandroid/content/Context;Ljava/util/List;)V

    return-object v1
.end method
