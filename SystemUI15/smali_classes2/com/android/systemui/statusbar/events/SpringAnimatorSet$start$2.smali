.class public final Lcom/android/systemui/statusbar/events/SpringAnimatorSet$start$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/events/SpringAnimatorSet;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/events/SpringAnimatorSet;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SpringAnimatorSet$start$2;->this$0:Lcom/android/systemui/statusbar/events/SpringAnimatorSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SpringAnimatorSet$start$2;->this$0:Lcom/android/systemui/statusbar/events/SpringAnimatorSet;

    invoke-static {p0}, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;->access$checkIfAllAnimationsEnded(Lcom/android/systemui/statusbar/events/SpringAnimatorSet;)V

    return-void
.end method
