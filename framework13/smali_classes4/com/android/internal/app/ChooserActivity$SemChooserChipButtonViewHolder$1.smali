.class Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder$1;
.super Ljava/lang/Object;
.source "ChooserActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->animatePrivateShareButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;

    .line 11564
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder$1;->this$1:Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 11571
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder$1;->this$1:Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->this$0:Lcom/android/internal/app/ChooserActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fputmIsPrivateShareAnimCompleted(Lcom/android/internal/app/ChooserActivity;Z)V

    .line 11572
    return-void
.end method

.method public whitelist onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 11577
    return-void
.end method

.method public whitelist onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 11567
    return-void
.end method
