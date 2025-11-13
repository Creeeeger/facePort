.class Lcom/android/internal/app/ChooserActivity$6;
.super Lcom/android/internal/app/ChooserActivity$TransitionStateListener;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivity;->semApplyCropFadeAnimation(Landroid/widget/ImageView;Lcom/android/internal/app/ChooserActivity$InvisibleRectView;ILandroid/graphics/Bitmap;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserActivity;

.field final synthetic blacklist val$currentImgHeight:I

.field final synthetic blacklist val$currentImgWidth:I

.field final synthetic blacklist val$imageView:Landroid/widget/ImageView;

.field final synthetic blacklist val$position:I

.field final synthetic blacklist val$result:Landroid/graphics/Bitmap;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;Landroid/widget/ImageView;ILandroid/graphics/Bitmap;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserActivity;

    .line 3999
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$6;->this$0:Lcom/android/internal/app/ChooserActivity;

    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$6;->val$imageView:Landroid/widget/ImageView;

    iput p3, p0, Lcom/android/internal/app/ChooserActivity$6;->val$position:I

    iput-object p4, p0, Lcom/android/internal/app/ChooserActivity$6;->val$result:Landroid/graphics/Bitmap;

    iput p5, p0, Lcom/android/internal/app/ChooserActivity$6;->val$currentImgHeight:I

    iput p6, p0, Lcom/android/internal/app/ChooserActivity$6;->val$currentImgWidth:I

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity$TransitionStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onTransitionEnd(Landroid/transition/Transition;)V
    .locals 6
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 4002
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$6;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$6;->val$imageView:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/internal/app/ChooserActivity$6;->val$position:I

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$6;->val$result:Landroid/graphics/Bitmap;

    iget v4, p0, Lcom/android/internal/app/ChooserActivity$6;->val$currentImgHeight:I

    iget v5, p0, Lcom/android/internal/app/ChooserActivity$6;->val$currentImgWidth:I

    invoke-static/range {v0 .. v5}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemApplyCropZoomTransition(Lcom/android/internal/app/ChooserActivity;Landroid/widget/ImageView;ILandroid/graphics/Bitmap;II)V

    .line 4003
    return-void
.end method
