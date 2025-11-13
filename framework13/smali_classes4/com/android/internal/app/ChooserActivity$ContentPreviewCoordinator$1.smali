.class Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$1;
.super Landroid/os/Handler;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    .line 892
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$1;->this$1:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 16
    .param p1, "msg"    # Landroid/os/Message;

    .line 895
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Landroid/os/Message;->what:I

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x2

    const-string v7, "alpha"

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/16 v10, 0x8

    const/4 v11, 0x0

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_5

    .line 945
    :sswitch_0
    iget-object v2, v0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$1;->this$1:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    iget-object v2, v2, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v2}, Lcom/android/internal/app/ChooserActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_5

    .line 947
    :cond_0
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;

    .line 948
    .local v2, "semTask":Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;
    const/4 v12, 0x0

    .line 949
    .local v12, "mainPreviewTitleView":Landroid/widget/TextView;
    const/4 v13, 0x0

    .line 950
    .local v13, "subPreviewTitleView":Landroid/widget/TextView;
    iget v14, v2, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;->mMainPreviewTitleId:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_2

    .line 951
    iget-object v14, v0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$1;->this$1:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    invoke-static {v14}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->-$$Nest$fgetmParentView(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;)Landroid/view/View;

    move-result-object v14

    iget v3, v2, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;->mMainPreviewTitleId:I

    invoke-virtual {v14, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Landroid/widget/TextView;

    .line 952
    iget-object v3, v2, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;->mMainPreviewTitle:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;->mMainPreviewTitle:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 953
    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 954
    iget-object v3, v2, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;->mMainPreviewTitle:Ljava/lang/String;

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 955
    iget-object v3, v0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$1;->this$1:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    iget-object v3, v3, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->this$0:Lcom/android/internal/app/ChooserActivity;

    const v4, 0x1050376

    invoke-virtual {v3, v12, v4}, Lcom/android/internal/app/ChooserActivity;->semSetTextSizeByMaxFontScale(Landroid/widget/TextView;I)V

    goto :goto_0

    .line 957
    :cond_1
    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 960
    :cond_2
    :goto_0
    iget v3, v2, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;->mSubPreviewTitleId:I

    if-eq v3, v15, :cond_5

    .line 961
    iget-object v3, v0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$1;->this$1:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    invoke-static {v3}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->-$$Nest$fgetmParentView(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;)Landroid/view/View;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;->mSubPreviewTitleId:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Landroid/widget/TextView;

    .line 962
    iget-object v3, v2, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;->mSubPreviewTitle:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, v2, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;->mSubPreviewTitle:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 963
    if-eqz v12, :cond_3

    .line 964
    invoke-virtual {v12, v9}, Landroid/widget/TextView;->setLines(I)V

    .line 966
    :cond_3
    invoke-virtual {v13, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 967
    iget-object v3, v2, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;->mSubPreviewTitle:Ljava/lang/String;

    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 968
    iget-object v3, v0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$1;->this$1:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    iget-object v3, v3, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->this$0:Lcom/android/internal/app/ChooserActivity;

    const v4, 0x1050379

    invoke-virtual {v3, v13, v4}, Lcom/android/internal/app/ChooserActivity;->semSetTextSizeByMaxFontScale(Landroid/widget/TextView;I)V

    goto :goto_1

    .line 970
    :cond_4
    invoke-virtual {v13, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 974
    :cond_5
    :goto_1
    iget-object v3, v0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$1;->this$1:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    invoke-static {v3}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->-$$Nest$fgetmParentView(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;)Landroid/view/View;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;->mImageResourceId:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;

    .line 976
    .local v3, "semImageView":Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;
    iget-object v4, v0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$1;->this$1:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    invoke-static {v4, v9}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->-$$Nest$fputmAtLeastOneLoaded(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;Z)V

    .line 977
    invoke-virtual {v3, v11}, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;->setVisibility(I)V

    .line 978
    invoke-virtual {v3, v8}, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;->setAlpha(F)V

    .line 980
    iget-object v4, v2, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;->mBmp:Landroid/graphics/Bitmap;

    if-nez v4, :cond_c

    .line 981
    iget-object v4, v0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$1;->this$1:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    iget-object v4, v4, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v4}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmMaskBitmap(Lcom/android/internal/app/ChooserActivity;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;->setMaskImage(Landroid/graphics/Bitmap;)V

    .line 982
    iget-object v4, v2, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;->mBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 983
    iget v4, v1, Landroid/os/Message;->what:I

    const/16 v8, 0x66

    if-eq v4, v8, :cond_b

    iget v4, v1, Landroid/os/Message;->what:I

    const/16 v8, 0x5c

    if-ne v4, v8, :cond_6

    goto :goto_3

    .line 985
    :cond_6
    iget v4, v1, Landroid/os/Message;->what:I

    const/16 v8, 0x34

    if-ne v4, v8, :cond_7

    .line 986
    iget-object v4, v0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$1;->this$1:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    iget-object v4, v4, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v4}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x10808ba

    invoke-static {v4, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_4

    .line 987
    :cond_7
    iget v4, v1, Landroid/os/Message;->what:I

    const/16 v8, 0x3e

    if-ne v4, v8, :cond_8

    .line 988
    iget-object v4, v0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$1;->this$1:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    iget-object v4, v4, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v4}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x10808b4

    invoke-static {v4, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_4

    .line 989
    :cond_8
    iget v4, v1, Landroid/os/Message;->what:I

    const/16 v8, 0x48

    if-eq v4, v8, :cond_a

    iget v4, v1, Landroid/os/Message;->what:I

    const/16 v8, 0x52

    if-ne v4, v8, :cond_9

    goto :goto_2

    .line 992
    :cond_9
    invoke-virtual {v3, v10}, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;->setVisibility(I)V

    goto :goto_4

    .line 990
    :cond_a
    :goto_2
    iget-object v4, v0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$1;->this$1:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    iget-object v4, v4, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v4}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x10808b8

    invoke-static {v4, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_4

    .line 984
    :cond_b
    :goto_3
    iget-object v4, v0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$1;->this$1:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    iget-object v4, v4, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v4}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x10808b1

    invoke-static {v4, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_4

    .line 995
    :cond_c
    iget-object v4, v0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$1;->this$1:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    iget-object v4, v4, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v4}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmMaskBitmap(Lcom/android/internal/app/ChooserActivity;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;->setMaskImage(Landroid/graphics/Bitmap;)V

    .line 996
    iget-object v4, v2, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;->mBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 997
    invoke-virtual {v3, v11}, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;->setVisibility(I)V

    .line 1000
    :goto_4
    new-array v4, v6, [F

    fill-array-data v4, :array_0

    invoke-static {v3, v7, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 1002
    .local v4, "semFadeAnim":Landroid/animation/ValueAnimator;
    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6, v5}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1003
    const-wide/16 v5, 0x96

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1004
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_5

    .line 902
    .end local v2    # "semTask":Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;
    .end local v3    # "semImageView":Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;
    .end local v4    # "semFadeAnim":Landroid/animation/ValueAnimator;
    .end local v12    # "mainPreviewTitleView":Landroid/widget/TextView;
    .end local v13    # "subPreviewTitleView":Landroid/widget/TextView;
    :sswitch_1
    iget-object v2, v0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$1;->this$1:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    invoke-static {v2}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->-$$Nest$mmaybeHideContentPreview(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;)V

    .line 903
    goto/16 :goto_5

    .line 907
    :sswitch_2
    iget-object v2, v0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$1;->this$1:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    iget-object v2, v2, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v2}, Lcom/android/internal/app/ChooserActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_d

    goto :goto_5

    .line 909
    :cond_d
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;

    .line 910
    .local v2, "task":Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;
    iget-object v3, v0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$1;->this$1:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    invoke-static {v3}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->-$$Nest$fgetmParentView(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;)Landroid/view/View;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;->mImageResourceId:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;

    .line 912
    .local v3, "imageView":Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;
    iget-object v4, v2, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;->mBmp:Landroid/graphics/Bitmap;

    if-nez v4, :cond_f

    .line 913
    invoke-virtual {v3, v10}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->setVisibility(I)V

    .line 914
    sget-boolean v4, Lcom/samsung/android/rune/ViewRune;->SHAREVIA_REMOVE_EXIF:Z

    if-eqz v4, :cond_e

    iget-object v4, v0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$1;->this$1:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    iget-object v4, v4, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v4}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmExifCheckBox(Lcom/android/internal/app/ChooserActivity;)Landroid/widget/CheckBox;

    move-result-object v4

    if-eqz v4, :cond_e

    iget-object v4, v0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$1;->this$1:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    iget-object v4, v4, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v4}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmExifCheckBox(Lcom/android/internal/app/ChooserActivity;)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_e

    .line 915
    iget-object v4, v0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$1;->this$1:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    invoke-static {v4}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->-$$Nest$mmaybeHideContentPreview(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;)V

    .line 917
    :cond_e
    return-void

    .line 920
    :cond_f
    iget-object v4, v0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$1;->this$1:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    invoke-static {v4, v9}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->-$$Nest$fputmAtLeastOneLoaded(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;Z)V

    .line 921
    invoke-virtual {v3, v11}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->setVisibility(I)V

    .line 922
    invoke-virtual {v3, v8}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->setAlpha(F)V

    .line 923
    iget-object v4, v2, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;->mBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 925
    new-array v4, v6, [F

    fill-array-data v4, :array_1

    invoke-static {v3, v7, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 927
    .local v4, "fadeAnim":Landroid/animation/ValueAnimator;
    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6, v5}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 928
    const-wide/16 v5, 0x96

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 929
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    .line 931
    iget v5, v2, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;->mExtraCount:I

    if-lez v5, :cond_10

    .line 932
    iget v5, v2, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;->mExtraCount:I

    invoke-virtual {v3, v5}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->setExtraImageCount(I)V

    .line 935
    :cond_10
    iget-object v5, v0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$1;->this$1:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    invoke-static {v5, v3}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->-$$Nest$msetupPreDrawForSharedElementTransition(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;Landroid/view/View;)V

    .line 936
    nop

    .line 1008
    .end local v2    # "task":Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;
    .end local v3    # "imageView":Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;
    .end local v4    # "fadeAnim":Landroid/animation/ValueAnimator;
    :goto_5
    return-void

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x29 -> :sswitch_1
        0x34 -> :sswitch_0
        0x3e -> :sswitch_0
        0x48 -> :sswitch_0
        0x52 -> :sswitch_0
        0x5c -> :sswitch_0
        0x66 -> :sswitch_0
    .end sparse-switch

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
