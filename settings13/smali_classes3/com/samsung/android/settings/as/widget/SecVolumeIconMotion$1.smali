.class Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SecVolumeIconMotion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;->startMidAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion$1;->this$0:Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 132
    iget-object p1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion$1;->this$0:Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;

    invoke-static {p1}, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;->-$$Nest$fgetmHandler(Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion$1;->this$0:Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;

    invoke-static {p0}, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;->-$$Nest$fgetmIconRunnable(Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
