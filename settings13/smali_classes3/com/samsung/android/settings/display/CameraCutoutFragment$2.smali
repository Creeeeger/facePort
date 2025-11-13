.class Lcom/samsung/android/settings/display/CameraCutoutFragment$2;
.super Ljava/lang/Object;
.source "CameraCutoutFragment.java"

# interfaces
.implements Landroidx/apppickerview/widget/AppPickerView$OnBindListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/CameraCutoutFragment;->setupOnBindListener(Landroidx/apppickerview/widget/AppPickerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/CameraCutoutFragment;)V
    .locals 0

    .line 352
    iput-object p1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$2;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/apppickerview/widget/AppPickerView$ViewHolder;ILjava/lang/String;)V
    .locals 3

    .line 356
    instance-of p2, p1, Landroidx/apppickerview/widget/AppPickerView$CustomViewItemViewHolder;

    if-nez p2, :cond_7

    instance-of p2, p1, Landroidx/apppickerview/widget/AppPickerView$SeparatorViewHolder;

    if-eqz p2, :cond_0

    goto/16 :goto_2

    .line 361
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$2;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    invoke-static {p2}, Lcom/samsung/android/settings/display/CameraCutoutFragment;->-$$Nest$fgetmRows(Lcom/samsung/android/settings/display/CameraCutoutFragment;)Landroid/util/ArrayMap;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;

    if-nez p2, :cond_1

    return-void

    .line 365
    :cond_1
    iget-object p3, p2, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p3}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 367
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getAppIconContainer()Landroid/view/ViewGroup;

    move-result-object v1

    if-eq p3, v1, :cond_4

    .line 368
    iget-object v1, p2, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p3, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 369
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getAppIconContainer()Landroid/view/ViewGroup;

    move-result-object p3

    iget-object v1, p2, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p3, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 370
    iget-object p3, p2, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p3}, Landroid/widget/Spinner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 371
    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 374
    :cond_2
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getAppIconContainer()Landroid/view/ViewGroup;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    instance-of p3, p3, Landroidx/appcompat/widget/AppCompatSpinner;

    if-eqz p3, :cond_3

    .line 375
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getAppIconContainer()Landroid/view/ViewGroup;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 377
    :cond_3
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getAppIconContainer()Landroid/view/ViewGroup;

    move-result-object p3

    iget-object v1, p2, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p3, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 378
    iget-object p3, p2, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p3}, Landroid/widget/Spinner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 379
    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 381
    iget-object p3, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$2;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    invoke-static {p3}, Lcom/samsung/android/settings/display/CameraCutoutFragment;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/CameraCutoutFragment;)Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcom/android/settings/R$dimen;->sec_widget_list_app_icon_size:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 382
    iget-object v1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$2;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/display/CameraCutoutFragment;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/CameraCutoutFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$dimen;->sec_full_screen_apps_menu_popup_top_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 383
    iget-object v2, p2, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v2, p3}, Landroidx/appcompat/widget/AppCompatSpinner;->setDropDownHorizontalOffset(I)V

    .line 384
    iget-object p3, p2, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    neg-int v1, v1

    invoke-virtual {p3, v1}, Landroidx/appcompat/widget/AppCompatSpinner;->setDropDownVerticalOffset(I)V

    .line 387
    :cond_4
    :goto_0
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getItem()Landroid/view/View;

    move-result-object p3

    new-instance v1, Lcom/samsung/android/settings/display/CameraCutoutFragment$2$1;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/settings/display/CameraCutoutFragment$2$1;-><init>(Lcom/samsung/android/settings/display/CameraCutoutFragment$2;Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;)V

    invoke-virtual {p3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    iget-object p3, p2, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    new-instance v1, Lcom/samsung/android/settings/display/CameraCutoutFragment$2$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/settings/display/CameraCutoutFragment$2$2;-><init>(Lcom/samsung/android/settings/display/CameraCutoutFragment$2;Landroidx/apppickerview/widget/AppPickerView$ViewHolder;Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;)V

    invoke-virtual {p3, v1}, Landroid/widget/Spinner;->setOnItemClickListenerInt(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 412
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getSummary()Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 413
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getSummary()Landroid/widget/TextView;

    move-result-object p3

    iget-object v1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$2;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/display/CameraCutoutFragment;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/CameraCutoutFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$color;->sec_preference_summary_primary_color:I

    .line 414
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 413
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 415
    iget p3, p2, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mType:I

    const/4 v1, 0x1

    if-ne p3, v1, :cond_5

    .line 416
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getSummary()Landroid/widget/TextView;

    move-result-object p3

    iget-object v1, p2, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mOptionList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    const/4 v0, 0x2

    if-ne p3, v0, :cond_6

    .line 418
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getSummary()Landroid/widget/TextView;

    move-result-object p3

    iget-object v0, p2, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mOptionList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 420
    :cond_6
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getSummary()Landroid/widget/TextView;

    move-result-object p3

    iget-object v1, p2, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mOptionList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    :goto_1
    iget-object p3, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$2;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    invoke-static {p3}, Lcom/samsung/android/settings/display/CameraCutoutFragment;->-$$Nest$fgetmExecutor(Lcom/samsung/android/settings/display/CameraCutoutFragment;)Ljava/util/concurrent/ExecutorService;

    move-result-object p3

    new-instance v0, Lcom/samsung/android/settings/display/CameraCutoutFragment$LoadAppIconTask;

    iget-object p0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$2;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/settings/display/CameraCutoutFragment$LoadAppIconTask;-><init>(Lcom/samsung/android/settings/display/CameraCutoutFragment;Landroidx/apppickerview/widget/AppPickerView$ViewHolder;Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_7
    :goto_2
    return-void
.end method
