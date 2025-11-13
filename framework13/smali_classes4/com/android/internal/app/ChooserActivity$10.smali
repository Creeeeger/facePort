.class Lcom/android/internal/app/ChooserActivity$10;
.super Lcom/android/internal/app/ChooserActivity$AnimatorStateListener;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivity;->semApplyRotateReverseAnimation(Landroid/widget/ImageView;ILandroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserActivity;

.field final synthetic blacklist val$imageContainer:Landroid/widget/FrameLayout;

.field final synthetic blacklist val$imageHeight:I

.field final synthetic blacklist val$imageView:Landroid/widget/ImageView;

.field final synthetic blacklist val$position:I

.field final synthetic blacklist val$result:Landroid/graphics/Bitmap;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;Landroid/widget/ImageView;Landroid/graphics/Bitmap;IILandroid/widget/FrameLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserActivity;

    .line 4288
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$10;->this$0:Lcom/android/internal/app/ChooserActivity;

    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$10;->val$imageView:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/android/internal/app/ChooserActivity$10;->val$result:Landroid/graphics/Bitmap;

    iput p4, p0, Lcom/android/internal/app/ChooserActivity$10;->val$position:I

    iput p5, p0, Lcom/android/internal/app/ChooserActivity$10;->val$imageHeight:I

    iput-object p6, p0, Lcom/android/internal/app/ChooserActivity$10;->val$imageContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity$AnimatorStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 4291
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$10;->val$imageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 4292
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$10;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 4293
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$10;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 4294
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$10;->val$result:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 4295
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$10;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmEnhancedImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/app/ChooserActivity$10;->val$position:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;

    .line 4296
    .local v0, "info":Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$10;->val$imageView:Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 4297
    .end local v0    # "info":Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;
    goto :goto_0

    .line 4298
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$10;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4300
    :goto_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$10;->val$imageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 4301
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$10;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/app/ChooserActivity$10;->val$imageHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4302
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$10;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4303
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$10;->val$imageContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4304
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$10;->this$0:Lcom/android/internal/app/ChooserActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msetEnhancedImageProcessState(Lcom/android/internal/app/ChooserActivity;Z)V

    .line 4305
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$10;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->updatePrivateTipIconPosition()V

    .line 4306
    return-void
.end method
