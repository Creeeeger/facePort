.class public final Lcom/android/systemui/statusbar/notification/stack/AnimationProperties$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mCancelled:Z

.field public final synthetic val$cancelAction:Ljava/util/function/Consumer;

.field public final synthetic val$endAction:Ljava/util/function/Consumer;

.field public final synthetic val$property:Landroid/util/Property;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;Ljava/util/function/Consumer;Landroid/util/Property;Ljava/util/function/Consumer;)V
    .locals 0

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties$2;->val$cancelAction:Ljava/util/function/Consumer;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties$2;->val$property:Landroid/util/Property;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties$2;->val$endAction:Ljava/util/function/Consumer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties$2;->mCancelled:Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties$2;->val$cancelAction:Ljava/util/function/Consumer;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties$2;->val$property:Landroid/util/Property;

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties$2;->mCancelled:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties$2;->val$endAction:Ljava/util/function/Consumer;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties$2;->val$property:Landroid/util/Property;

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
