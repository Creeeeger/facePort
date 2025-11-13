.class public final synthetic Lcom/android/systemui/edgelighting/effect/view/MorphView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/edgelighting/effect/view/MorphView;

.field public final synthetic f$1:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/edgelighting/effect/view/MorphView;Lcom/android/internal/dynamicanimation/animation/SpringAnimation;I)V
    .locals 0

    iput p3, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    iput-object p2, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView$$ExternalSyntheticLambda0;->f$1:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView$$ExternalSyntheticLambda0;->f$1:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    sget v1, Lcom/android/systemui/edgelighting/effect/view/MorphView;->$r8$clinit:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->start()V

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-virtual {v0, p0}, Lcom/android/systemui/edgelighting/effect/view/MorphView;->setAlpha(F)V

    iget-object p0, v0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mPopupListener:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$1;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$1;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->startToastPopupAnimation()V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView$$ExternalSyntheticLambda0;->f$1:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    sget v1, Lcom/android/systemui/edgelighting/effect/view/MorphView;->$r8$clinit:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->start()V

    iget-object p0, v0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mPopupListener:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$1;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$1;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->finishToastPopupAnimation()V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
