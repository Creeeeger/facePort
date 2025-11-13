.class public final Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference$5;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;

.field public final synthetic val$newHeight:I

.field public final synthetic val$newWidth:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference$5;->this$0:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;

    iput p2, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference$5;->val$newWidth:I

    iput p3, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference$5;->val$newHeight:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference$5;->this$0:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;

    iget-boolean v1, v0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;->isInitiator:Z

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    const-wide/high16 v4, 0x4022000000000000L    # 9.0

    const/4 v6, 0x0

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;->mImageViewInitiator:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference$5;->val$newWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference$5;->val$newHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference$5;->this$0:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;

    iget-object v1, v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;->mImageViewInitiator:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference$5;->this$0:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;

    iget-object v0, v0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;->mImageViewInitiator:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference$5;->this$0:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;

    iget v7, v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;->mOriginalImageMargin:I

    int-to-double v7, v7

    iget v1, v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;->mOriginalWidth:I

    iget v9, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference$5;->val$newWidth:I

    sub-int/2addr v1, v9

    int-to-double v9, v1

    mul-double/2addr v9, v4

    div-double/2addr v9, v2

    add-double/2addr v9, v7

    double-to-int v1, v9

    invoke-virtual {v0, v1, v6, v6, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference$5;->this$0:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;->mImageViewInitiator:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;->mImageViewResponder:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference$5;->val$newWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference$5;->val$newHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference$5;->this$0:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;

    iget-object v1, v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;->mImageViewResponder:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference$5;->this$0:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;

    iget-object v0, v0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;->mImageViewResponder:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference$5;->this$0:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;

    iget v7, v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;->mOriginalImageMargin:I

    int-to-double v7, v7

    iget v1, v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;->mOriginalWidth:I

    iget v9, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference$5;->val$newWidth:I

    sub-int/2addr v1, v9

    int-to-double v9, v1

    mul-double/2addr v9, v4

    div-double/2addr v9, v2

    add-double/2addr v9, v7

    double-to-int v1, v9

    invoke-virtual {v0, v6, v6, v1, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference$5;->this$0:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;->mImageViewResponder:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method
