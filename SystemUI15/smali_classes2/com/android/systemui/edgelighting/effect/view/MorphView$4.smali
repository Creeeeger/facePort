.class public final Lcom/android/systemui/edgelighting/effect/view/MorphView$4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/effect/view/MorphView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/effect/view/MorphView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView$4;->this$0:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView$4;->this$0:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/effect/view/MorphView;->reset()V

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView$4;->this$0:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mIsHiding:Z

    return-void
.end method
