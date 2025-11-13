.class Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SecVolumeIconMotion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;->startSoundAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;

.field final synthetic val$init:Z

.field final synthetic val$spkView:Landroid/view/View;

.field final synthetic val$state:I

.field final synthetic val$wlView:Landroid/view/View;

.field final synthetic val$wsView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;ZILandroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 385
    iput-object p1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion$4;->this$0:Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;

    iput-boolean p2, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion$4;->val$init:Z

    iput p3, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion$4;->val$state:I

    iput-object p4, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion$4;->val$spkView:Landroid/view/View;

    iput-object p5, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion$4;->val$wsView:Landroid/view/View;

    iput-object p6, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion$4;->val$wlView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 7

    .line 388
    iget-boolean p1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion$4;->val$init:Z

    if-nez p1, :cond_1

    .line 389
    iget p1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion$4;->val$state:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 390
    iget-object v1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion$4;->this$0:Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion$4;->val$spkView:Landroid/view/View;

    iget-object v4, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion$4;->val$wsView:Landroid/view/View;

    iget-object v5, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion$4;->val$wlView:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;->startSoundAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 392
    iget-object v1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion$4;->this$0:Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion$4;->val$spkView:Landroid/view/View;

    iget-object v4, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion$4;->val$wsView:Landroid/view/View;

    iget-object v5, p0, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion$4;->val$wlView:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/settings/as/widget/SecVolumeIconMotion;->startSoundAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    :cond_1
    :goto_0
    return-void
.end method
