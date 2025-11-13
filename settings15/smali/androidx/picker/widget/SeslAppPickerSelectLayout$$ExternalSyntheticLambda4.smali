.class public final synthetic Landroidx/picker/widget/SeslAppPickerSelectLayout$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/picker/widget/AppPickerEvent$OnItemClickEventListener;


# instance fields
.field public final synthetic f$0:Landroidx/picker/widget/SeslAppPickerSelectLayout;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroidx/picker/widget/SeslAppPickerSelectLayout;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout$$ExternalSyntheticLambda4;->f$0:Landroidx/picker/widget/SeslAppPickerSelectLayout;

    iput-object p2, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout$$ExternalSyntheticLambda4;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;Landroidx/picker/model/AppInfo;)Z
    .locals 3

    iget-object p1, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout$$ExternalSyntheticLambda4;->f$1:Landroid/content/Context;

    iget-object p0, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout$$ExternalSyntheticLambda4;->f$0:Landroidx/picker/widget/SeslAppPickerSelectLayout;

    iget-object v0, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mCheckStateManager:Landroidx/picker/widget/SeslAppPickerSelectLayout$CheckStateManager;

    invoke-virtual {v0}, Landroidx/picker/widget/SeslAppPickerSelectLayout$CheckStateManager;->getList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/picker/model/AppInfoData;

    invoke-interface {v1}, Landroidx/picker/model/AppData;->getAppInfo()Landroidx/picker/model/AppInfo;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroidx/picker/model/AppInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mAppPickerStateView:Landroidx/picker/widget/SeslAppPickerListView;

    iget-object v0, v0, Landroidx/picker/widget/SeslAppPickerView;->mViewDataController:Landroidx/picker/controller/ViewDataController;

    invoke-virtual {v0, p2}, Landroidx/picker/controller/ViewDataController;->getViewData(Landroidx/picker/model/AppInfo;)Landroidx/picker/model/viewdata/ViewData;

    move-result-object p2

    instance-of v0, p2, Landroidx/picker/model/Selectable;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p2, Landroidx/picker/model/Selectable;

    invoke-interface {p2}, Landroidx/picker/model/Selectable;->getSelectableItem()Landroidx/picker/loader/select/SelectableItem;

    move-result-object p2

    if-eqz p2, :cond_2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, v0}, Landroidx/picker/features/observable/ObservableProperty;->setValue(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    const-string p2, "accessibility"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p0, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mSelectedListView:Landroidx/picker/widget/SeslAppPickerGridView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f142a7d

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1}, Landroidx/picker/model/AppInfoData;->getLabel()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_3
    const/4 p0, 0x1

    return p0
.end method
