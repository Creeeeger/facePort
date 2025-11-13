.class public final Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;

.field public final synthetic val$init:Z

.field public final synthetic val$spkView:Landroid/view/View;

.field public final synthetic val$state:I

.field public final synthetic val$wlView:Landroid/view/View;

.field public final synthetic val$wsView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;ZILandroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion$4;->this$0:Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;

    iput-boolean p2, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion$4;->val$init:Z

    iput p3, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion$4;->val$state:I

    iput-object p4, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion$4;->val$spkView:Landroid/view/View;

    iput-object p5, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion$4;->val$wsView:Landroid/view/View;

    iput-object p6, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion$4;->val$wlView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 7

    iget-boolean p1, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion$4;->val$init:Z

    if-nez p1, :cond_1

    iget p1, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion$4;->val$state:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion$4;->this$0:Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;

    iget-object v3, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion$4;->val$spkView:Landroid/view/View;

    iget-object v4, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion$4;->val$wsView:Landroid/view/View;

    iget-object v5, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion$4;->val$wlView:Landroid/view/View;

    const/4 v6, 0x0

    const/4 v2, 0x2

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;->startSoundAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion$4;->this$0:Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;

    iget-object v3, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion$4;->val$spkView:Landroid/view/View;

    iget-object v4, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion$4;->val$wsView:Landroid/view/View;

    iget-object v5, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion$4;->val$wlView:Landroid/view/View;

    const/4 v6, 0x0

    const/4 v2, 0x3

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;->startSoundAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    :cond_1
    :goto_0
    return-void
.end method
