.class public final Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion$2;->this$0:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion$2;->this$0:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion;

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion;->mIconRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
