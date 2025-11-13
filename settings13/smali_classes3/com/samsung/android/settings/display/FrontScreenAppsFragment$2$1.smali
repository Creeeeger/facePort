.class Lcom/samsung/android/settings/display/FrontScreenAppsFragment$2$1;
.super Ljava/lang/Object;
.source "FrontScreenAppsFragment.java"

# interfaces
.implements Landroidx/apppickerview/widget/AppPickerView$OnSearchFilterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/FrontScreenAppsFragment$2;->onQueryTextChange(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/display/FrontScreenAppsFragment$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/FrontScreenAppsFragment$2;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$2$1;->this$1:Lcom/samsung/android/settings/display/FrontScreenAppsFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSearchFilterCompleted(I)V
    .locals 5

    .line 276
    iget-object v0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$2$1;->this$1:Lcom/samsung/android/settings/display/FrontScreenAppsFragment$2;

    iget-object v0, v0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$2;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmEmptyViewText(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$2$1;->this$1:Lcom/samsung/android/settings/display/FrontScreenAppsFragment$2;

    iget-object v0, v0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$2;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmListContainer(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 277
    iget-object v0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$2$1;->this$1:Lcom/samsung/android/settings/display/FrontScreenAppsFragment$2;

    iget-object v0, v0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$2;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 279
    iget-object v0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$2$1;->this$1:Lcom/samsung/android/settings/display/FrontScreenAppsFragment$2;

    iget-object v0, v0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$2;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmEmptyViewText(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 280
    iget-object v0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$2$1;->this$1:Lcom/samsung/android/settings/display/FrontScreenAppsFragment$2;

    iget-object v0, v0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$2;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    sget v3, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto :goto_0

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$2$1;->this$1:Lcom/samsung/android/settings/display/FrontScreenAppsFragment$2;

    iget-object v0, v0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$2;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmEmptyViewText(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 283
    iget-object v0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$2$1;->this$1:Lcom/samsung/android/settings/display/FrontScreenAppsFragment$2;

    iget-object v0, v0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$2;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    .line 284
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [I

    const v4, 0x10102f0

    aput v4, v3, v2

    invoke-virtual {v0, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 285
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 286
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 287
    iget-object v0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$2$1;->this$1:Lcom/samsung/android/settings/display/FrontScreenAppsFragment$2;

    iget-object v0, v0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$2;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$2$1;->this$1:Lcom/samsung/android/settings/display/FrontScreenAppsFragment$2;

    iget-object v4, v4, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$2;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 290
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$2$1;->this$1:Lcom/samsung/android/settings/display/FrontScreenAppsFragment$2;

    iget-object v0, v0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$2;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmListContainer(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$2$1;->this$1:Lcom/samsung/android/settings/display/FrontScreenAppsFragment$2;

    iget-object v3, v3, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$2;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmEmptyViewText(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 292
    iget-object v0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$2$1;->this$1:Lcom/samsung/android/settings/display/FrontScreenAppsFragment$2;

    iget-object v0, v0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$2;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 293
    iget-object p0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$2$1;->this$1:Lcom/samsung/android/settings/display/FrontScreenAppsFragment$2;

    iget-object p0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$2;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object p0

    if-eqz p1, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_3
    return-void
.end method
