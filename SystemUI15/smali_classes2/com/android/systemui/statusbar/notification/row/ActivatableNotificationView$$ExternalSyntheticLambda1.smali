.class public final synthetic Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

.field public final synthetic f$1:Landroid/animation/ValueAnimator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$$ExternalSyntheticLambda1;->f$1:Landroid/animation/ValueAnimator;

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$$ExternalSyntheticLambda1;->f$1:Landroid/animation/ValueAnimator;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    if-ne p1, p0, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method
