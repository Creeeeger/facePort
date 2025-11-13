.class public final Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$5;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$5;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->-$$Nest$mlaunchPopupWindow(Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;Z)V

    return-void
.end method
