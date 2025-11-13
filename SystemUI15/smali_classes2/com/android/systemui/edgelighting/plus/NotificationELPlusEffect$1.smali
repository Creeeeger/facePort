.class public final Lcom/android/systemui/edgelighting/plus/NotificationELPlusEffect$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/plus/NotificationELPlusEffect;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/plus/NotificationELPlusEffect;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/edgelighting/plus/NotificationELPlusEffect$1;->this$0:Lcom/android/systemui/edgelighting/plus/NotificationELPlusEffect;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/edgelighting/plus/NotificationELPlusEffect$1;->this$0:Lcom/android/systemui/edgelighting/plus/NotificationELPlusEffect;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/plus/NotificationELPlusEffect;->mParticleView:Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
