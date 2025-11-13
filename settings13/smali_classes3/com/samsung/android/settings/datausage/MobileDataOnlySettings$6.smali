.class Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$6;
.super Ljava/lang/Object;
.source "MobileDataOnlySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->loadAppList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)V
    .locals 0

    .line 379
    iput-object p1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$6;->this$0:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 382
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$6;->this$0:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->-$$Nest$fgetmRootView(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 383
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$6;->this$0:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->-$$Nest$fgetmLoadingContainer(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 384
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$6;->this$0:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->-$$Nest$fgetmApps(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    .line 385
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$6;->this$0:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->-$$Nest$fgetmEmptyView(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 386
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$6;->this$0:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 387
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$6;->this$0:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->-$$Nest$fgetmFilterSpinner(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)Landroid/widget/Spinner;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 388
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$6;->this$0:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->-$$Nest$fgetmFilterSpinner(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)Landroid/widget/Spinner;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$6;->this$0:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->-$$Nest$fgetmSelectedFilter(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 389
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$6;->this$0:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->-$$Nest$fgetmFilterSpinner(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)Landroid/widget/Spinner;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$6;->this$0:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;

    invoke-static {p0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->-$$Nest$fgetmOnItemSelectedListener(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto :goto_0

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$6;->this$0:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 392
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$6;->this$0:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 393
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$6;->this$0:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->-$$Nest$fgetmEmptyView(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 394
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$6;->this$0:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->-$$Nest$fgetmMDOAdapter(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$6;->this$0:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->-$$Nest$fgetmApps(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;->setList(Ljava/util/List;)V

    .line 395
    iget-object p0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$6;->this$0:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;

    invoke-static {p0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->-$$Nest$fgetmMDOAdapter(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    :goto_0
    return-void
.end method
