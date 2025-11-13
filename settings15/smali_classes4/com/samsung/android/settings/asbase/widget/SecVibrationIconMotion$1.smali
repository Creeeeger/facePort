.class public final Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion$1;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion$1;->this$0:Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget p1, p0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion$1;->this$0:Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion;

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion;->mIconRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion$1;->this$0:Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion;

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion;->mIconRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
