.class public final synthetic Lcom/android/systemui/keyguard/WakefulnessLifecycle$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle$$ExternalSyntheticLambda0;->$r8$classId:I

    check-cast p1, Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    packed-switch p0, :pswitch_data_0

    invoke-interface {p1}, Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;->onStartedGoingToSleep()V

    return-void

    :pswitch_0
    invoke-interface {p1}, Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;->onFinishedGoingToSleep()V

    return-void

    :pswitch_1
    invoke-interface {p1}, Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;->onPostFinishedWakingUp()V

    return-void

    :pswitch_2
    invoke-interface {p1}, Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;->onFinishedWakingUp()V

    return-void

    :pswitch_3
    invoke-interface {p1}, Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;->onStartedWakingUp()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
