.class Lcom/samsung/android/settings/display/AspectRatioFragment$1$1;
.super Ljava/lang/Object;
.source "AspectRatioFragment.java"

# interfaces
.implements Landroidx/apppickerview/widget/AppPickerView$OnSearchFilterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/AspectRatioFragment$1;->onQueryTextChange(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/display/AspectRatioFragment$1;

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/AspectRatioFragment$1;Ljava/lang/String;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$1$1;->this$1:Lcom/samsung/android/settings/display/AspectRatioFragment$1;

    iput-object p2, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$1$1;->val$query:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSearchFilterCompleted(I)V
    .locals 4

    .line 334
    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$1$1;->val$query:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 335
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$1$1;->this$1:Lcom/samsung/android/settings/display/AspectRatioFragment$1;

    iget-object v2, v2, Lcom/samsung/android/settings/display/AspectRatioFragment$1;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/display/AspectRatioFragment;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v2

    const/16 v3, 0x8

    if-eqz p1, :cond_1

    if-nez v0, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    move p1, v3

    :goto_1
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 336
    iget-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$1$1;->this$1:Lcom/samsung/android/settings/display/AspectRatioFragment$1;

    iget-object p1, p1, Lcom/samsung/android/settings/display/AspectRatioFragment$1;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmEmptyViewText(Lcom/samsung/android/settings/display/AspectRatioFragment;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 337
    iget-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$1$1;->this$1:Lcom/samsung/android/settings/display/AspectRatioFragment$1;

    iget-object p1, p1, Lcom/samsung/android/settings/display/AspectRatioFragment$1;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/display/AspectRatioFragment;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-ne p1, v3, :cond_2

    .line 338
    iget-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$1$1;->this$1:Lcom/samsung/android/settings/display/AspectRatioFragment$1;

    iget-object p1, p1, Lcom/samsung/android/settings/display/AspectRatioFragment$1;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmEmptyViewText(Lcom/samsung/android/settings/display/AspectRatioFragment;)Landroid/widget/TextView;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->sec_app_search_no_result:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 339
    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$1$1;->this$1:Lcom/samsung/android/settings/display/AspectRatioFragment$1;

    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$1;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmEmptyViewText(Lcom/samsung/android/settings/display/AspectRatioFragment;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 341
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$1$1;->this$1:Lcom/samsung/android/settings/display/AspectRatioFragment$1;

    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$1;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmEmptyViewText(Lcom/samsung/android/settings/display/AspectRatioFragment;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    :goto_2
    return-void
.end method
