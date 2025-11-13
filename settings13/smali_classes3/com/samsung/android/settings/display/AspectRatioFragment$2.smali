.class Lcom/samsung/android/settings/display/AspectRatioFragment$2;
.super Ljava/lang/Object;
.source "AspectRatioFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/AspectRatioFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/AspectRatioFragment;)V
    .locals 0

    .line 351
    iput-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$2;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .line 354
    iget-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$2;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/display/AspectRatioFragment;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 356
    iget-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$2;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/display/AspectRatioFragment;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/apppickerview/widget/AppPickerView;->setCustomViewItemEnabled(Z)V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 358
    iget-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$2;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/display/AspectRatioFragment;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/apppickerview/widget/AppPickerView;->setCustomViewItemEnabled(Z)V

    .line 361
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$2;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmEmptyViewText(Lcom/samsung/android/settings/display/AspectRatioFragment;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_4

    if-nez p2, :cond_3

    .line 362
    iget-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$2;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmEmptyViewText(Lcom/samsung/android/settings/display/AspectRatioFragment;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    .line 363
    invoke-static {}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isFoldDevice()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 364
    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$2;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmEmptyViewText(Lcom/samsung/android/settings/display/AspectRatioFragment;)Landroid/widget/TextView;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->full_screen_apps_optimized_for_foldable:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 366
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$2;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmEmptyViewText(Lcom/samsung/android/settings/display/AspectRatioFragment;)Landroid/widget/TextView;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->full_screen_apps_optimized_for_mobile:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_4

    .line 368
    iget-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$2;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmItemCount(Lcom/samsung/android/settings/display/AspectRatioFragment;)I

    move-result p1

    if-nez p1, :cond_4

    .line 369
    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$2;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmEmptyViewText(Lcom/samsung/android/settings/display/AspectRatioFragment;)Landroid/widget/TextView;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->sec_app_search_no_result:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_4
    :goto_1
    return-void
.end method
