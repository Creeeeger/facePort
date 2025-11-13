.class public final Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;

.field public final synthetic val$fromLeft:Z

.field public final synthetic val$notiThreshold:F

.field public final synthetic val$transX:F


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;FZF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$1;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;

    iput p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$1;->val$transX:F

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$1;->val$fromLeft:Z

    iput p4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$1;->val$notiThreshold:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$1;->val$transX:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$1;->val$fromLeft:Z

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$1;->val$transX:F

    iget v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$1;->val$notiThreshold:F

    cmpg-float v2, v2, v3

    if-lez v2, :cond_1

    :cond_0
    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$1;->val$notiThreshold:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$1;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->mMenuFadedIn:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->setMenuAlpha(F)V

    :cond_2
    return-void
.end method
