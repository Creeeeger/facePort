.class Lcom/android/internal/app/ChooserActivity$35;
.super Ljava/lang/Object;
.source "ChooserActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivity;->showEnhanceIconAnimation(ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserActivity;

.field final synthetic blacklist val$enhanceIconLayout:Landroid/widget/LinearLayout;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserActivity;

    .line 13893
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$35;->this$0:Lcom/android/internal/app/ChooserActivity;

    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$35;->val$enhanceIconLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 13900
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$35;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$35;->val$enhanceIconLayout:Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$mcheckAndCreateTipsPopupForSmartShare(Lcom/android/internal/app/ChooserActivity;Landroid/widget/LinearLayout;)V

    .line 13901
    return-void
.end method

.method public whitelist onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 13906
    return-void
.end method

.method public whitelist onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 13896
    return-void
.end method
