.class public Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public delay:J

.field public duration:J

.field public mAnimationCancelAction:Ljava/util/function/Consumer;

.field public mAnimationEndAction:Ljava/util/function/Consumer;

.field public mInterpolatorMap:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAnimationFilter()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties$1;-><init>(Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    return-object v0
.end method

.method public getAnimationFinishListener(Landroid/util/Property;)Landroid/animation/AnimatorListenerAdapter;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->mAnimationEndAction:Ljava/util/function/Consumer;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->mAnimationCancelAction:Ljava/util/function/Consumer;

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->mAnimationCancelAction:Ljava/util/function/Consumer;

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties$2;

    invoke-direct {v2, p0, v1, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties$2;-><init>(Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;Ljava/util/function/Consumer;Landroid/util/Property;Ljava/util/function/Consumer;)V

    return-object v2
.end method

.method public final setCustomInterpolator(Landroid/util/Property;Landroid/view/animation/Interpolator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->mInterpolatorMap:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->mInterpolatorMap:Landroid/util/ArrayMap;

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->mInterpolatorMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public wasAdded(Landroid/view/View;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
