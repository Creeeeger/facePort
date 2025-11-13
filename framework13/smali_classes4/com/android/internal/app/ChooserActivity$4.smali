.class Lcom/android/internal/app/ChooserActivity$4;
.super Lcom/android/internal/app/ChooserActivity$TransitionStateListener;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivity;->semApplyCropAnimation(Landroid/widget/ImageView;ILandroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserActivity;

.field final synthetic blacklist val$currImgHeight:I

.field final synthetic blacklist val$currImgWidth:I

.field final synthetic blacklist val$imageView:Landroid/widget/ImageView;

.field final synthetic blacklist val$invisibleRectView:Lcom/android/internal/app/ChooserActivity$InvisibleRectView;

.field final synthetic blacklist val$position:I

.field final synthetic blacklist val$result:Landroid/graphics/Bitmap;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;Landroid/widget/ImageView;Lcom/android/internal/app/ChooserActivity$InvisibleRectView;ILandroid/graphics/Bitmap;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserActivity;

    .line 3893
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$4;->this$0:Lcom/android/internal/app/ChooserActivity;

    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$4;->val$imageView:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/android/internal/app/ChooserActivity$4;->val$invisibleRectView:Lcom/android/internal/app/ChooserActivity$InvisibleRectView;

    iput p4, p0, Lcom/android/internal/app/ChooserActivity$4;->val$position:I

    iput-object p5, p0, Lcom/android/internal/app/ChooserActivity$4;->val$result:Landroid/graphics/Bitmap;

    iput p6, p0, Lcom/android/internal/app/ChooserActivity$4;->val$currImgHeight:I

    iput p7, p0, Lcom/android/internal/app/ChooserActivity$4;->val$currImgWidth:I

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity$TransitionStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onTransitionEnd(Landroid/transition/Transition;)V
    .locals 7
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 3896
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$4;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$4;->val$imageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$4;->val$invisibleRectView:Lcom/android/internal/app/ChooserActivity$InvisibleRectView;

    iget v3, p0, Lcom/android/internal/app/ChooserActivity$4;->val$position:I

    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$4;->val$result:Landroid/graphics/Bitmap;

    iget v5, p0, Lcom/android/internal/app/ChooserActivity$4;->val$currImgHeight:I

    iget v6, p0, Lcom/android/internal/app/ChooserActivity$4;->val$currImgWidth:I

    invoke-static/range {v0 .. v6}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemApplyCropHighlightAnimation(Lcom/android/internal/app/ChooserActivity;Landroid/widget/ImageView;Lcom/android/internal/app/ChooserActivity$InvisibleRectView;ILandroid/graphics/Bitmap;II)V

    .line 3897
    return-void
.end method
