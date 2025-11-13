.class Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewHolder$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewHolder;->setViewVisibilityWithAnimation(IIF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewHolder;

.field final synthetic blacklist val$position:I


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewHolder;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewHolder;

    .line 11969
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewHolder$3;->this$1:Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewHolder;

    iput p2, p0, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewHolder$3;->val$position:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 11971
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewHolder$3;->this$1:Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewHolder;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmIsDeviceTargetShowAnimEnded(Lcom/android/internal/app/ChooserActivity;)[Z

    move-result-object v0

    iget v1, p0, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewHolder$3;->val$position:I

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 11972
    return-void
.end method
