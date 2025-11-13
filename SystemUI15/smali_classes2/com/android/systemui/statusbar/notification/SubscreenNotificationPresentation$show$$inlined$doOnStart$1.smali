.class public final Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation$show$$inlined$doOnStart$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation$show$$inlined$doOnStart$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation$show$$inlined$doOnStart$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;->contents:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation$show$$inlined$doOnStart$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;->access$show$s2046749032(Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;)V

    return-void
.end method
