.class public final Lcom/android/systemui/shared/condition/Monitor$Subscription;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mCallback:Lcom/android/systemui/shared/condition/Monitor$Callback;

.field public final mConditions:Ljava/util/Set;

.field public final mNestedSubscription:Lcom/android/systemui/shared/condition/Monitor$Subscription;


# direct methods
.method private constructor <init>(Ljava/util/Set;Lcom/android/systemui/shared/condition/Monitor$Callback;Lcom/android/systemui/shared/condition/Monitor$Subscription;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/systemui/shared/condition/Condition;",
            ">;",
            "Lcom/android/systemui/shared/condition/Monitor$Callback;",
            "Lcom/android/systemui/shared/condition/Monitor$Subscription;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shared/condition/Monitor$Subscription;->mConditions:Ljava/util/Set;

    iput-object p2, p0, Lcom/android/systemui/shared/condition/Monitor$Subscription;->mCallback:Lcom/android/systemui/shared/condition/Monitor$Callback;

    iput-object p3, p0, Lcom/android/systemui/shared/condition/Monitor$Subscription;->mNestedSubscription:Lcom/android/systemui/shared/condition/Monitor$Subscription;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Set;Lcom/android/systemui/shared/condition/Monitor$Callback;Lcom/android/systemui/shared/condition/Monitor$Subscription;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/shared/condition/Monitor$Subscription;-><init>(Ljava/util/Set;Lcom/android/systemui/shared/condition/Monitor$Callback;Lcom/android/systemui/shared/condition/Monitor$Subscription;)V

    return-void
.end method
