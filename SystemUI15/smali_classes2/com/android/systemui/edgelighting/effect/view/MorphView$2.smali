.class public final Lcom/android/systemui/edgelighting/effect/view/MorphView$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/effect/view/MorphView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/effect/view/MorphView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView$2;->this$0:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView$2;->this$0:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mPopupListener:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$1;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$1;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->finishToastPopupAnimation()V

    :cond_0
    return-void
.end method
