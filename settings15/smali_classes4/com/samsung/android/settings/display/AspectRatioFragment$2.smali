.class public final Lcom/samsung/android/settings/display/AspectRatioFragment$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/display/AspectRatioFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$2;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$2;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    iget-object p1, p1, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroidx/apppickerview/widget/AppPickerView;->mIsCustomViewItemEnabled:Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$2;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    iget-object p1, p1, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    instance-of v1, p1, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$2;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    iget-object p1, p1, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    iput-boolean v0, p1, Landroidx/apppickerview/widget/AppPickerView;->mIsCustomViewItemEnabled:Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown child="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AspectRatioFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$2;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    iget-object p1, p1, Lcom/samsung/android/settings/display/AspectRatioFragment;->mEmptyViewText:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    if-nez p2, :cond_3

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$2;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    iget-boolean p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mIsSupportAspectRatio:Z

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mEmptyViewText:Landroid/widget/TextView;

    const p1, 0x7f14103c

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mEmptyViewText:Landroid/widget/TextView;

    const p1, 0x7f14103d

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_4

    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$2;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    iget p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mItemCount:I

    if-nez p1, :cond_4

    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mEmptyViewText:Landroid/widget/TextView;

    const p1, 0x7f1420c6

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_4
    :goto_1
    return-void
.end method
