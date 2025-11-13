.class Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;->setViewVisibilityWithAnimation(IIF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;

.field final synthetic blacklist val$i:I


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;

    .line 9224
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder$2;->this$1:Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;

    iput p2, p0, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder$2;->val$i:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 9226
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder$2;->this$1:Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmIsDeviceTargetShowAnimEnded(Lcom/android/internal/app/ChooserActivity;)[Z

    move-result-object v0

    iget v1, p0, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder$2;->val$i:I

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 9227
    return-void
.end method
