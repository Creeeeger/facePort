.class public final synthetic Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    iput p2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$$ExternalSyntheticLambda2;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    iget p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$$ExternalSyntheticLambda2;->f$1:I

    iget-object v0, v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    iput p0, v0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mScreenWidth:I

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effect/view/MorphView;->initialize()V

    new-instance p0, Lcom/android/systemui/edgelighting/effect/view/MorphView$$ExternalSyntheticLambda1;

    invoke-direct {p0, v0}, Lcom/android/systemui/edgelighting/effect/view/MorphView$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/edgelighting/effect/view/MorphView;)V

    const-wide/16 v1, 0x82

    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
