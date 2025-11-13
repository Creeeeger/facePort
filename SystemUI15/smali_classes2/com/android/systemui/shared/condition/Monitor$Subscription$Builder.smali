.class public final Lcom/android/systemui/shared/condition/Monitor$Subscription$Builder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mCallback:Lcom/android/systemui/shared/condition/Monitor$Callback;

.field public final mConditions:Landroid/util/ArraySet;

.field public final mNestedSubscription:Lcom/android/systemui/shared/condition/Monitor$Subscription;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/condition/Monitor$Callback;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/shared/condition/Monitor$Subscription$Builder;-><init>(Lcom/android/systemui/shared/condition/Monitor$Subscription;Lcom/android/systemui/shared/condition/Monitor$Callback;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/shared/condition/Monitor$Subscription;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/shared/condition/Monitor$Subscription$Builder;-><init>(Lcom/android/systemui/shared/condition/Monitor$Subscription;Lcom/android/systemui/shared/condition/Monitor$Callback;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/systemui/shared/condition/Monitor$Subscription;Lcom/android/systemui/shared/condition/Monitor$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/condition/Monitor$Subscription$Builder;->mNestedSubscription:Lcom/android/systemui/shared/condition/Monitor$Subscription;

    iput-object p2, p0, Lcom/android/systemui/shared/condition/Monitor$Subscription$Builder;->mCallback:Lcom/android/systemui/shared/condition/Monitor$Callback;

    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/condition/Monitor$Subscription$Builder;->mConditions:Landroid/util/ArraySet;

    return-void
.end method


# virtual methods
.method public final build()Lcom/android/systemui/shared/condition/Monitor$Subscription;
    .locals 4

    new-instance v0, Lcom/android/systemui/shared/condition/Monitor$Subscription;

    iget-object v1, p0, Lcom/android/systemui/shared/condition/Monitor$Subscription$Builder;->mConditions:Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/systemui/shared/condition/Monitor$Subscription$Builder;->mCallback:Lcom/android/systemui/shared/condition/Monitor$Callback;

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/android/systemui/shared/condition/Monitor$Subscription$Builder;->mNestedSubscription:Lcom/android/systemui/shared/condition/Monitor$Subscription;

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/android/systemui/shared/condition/Monitor$Subscription;-><init>(Ljava/util/Set;Lcom/android/systemui/shared/condition/Monitor$Callback;Lcom/android/systemui/shared/condition/Monitor$Subscription;I)V

    return-object v0
.end method
