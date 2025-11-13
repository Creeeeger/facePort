.class public final synthetic Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Consumer;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda12;->f$0:Ljava/util/function/Consumer;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda12;->f$1:Z

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda12;->f$0:Ljava/util/function/Consumer;

    sget-object p2, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->SCALE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda12;->f$1:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
