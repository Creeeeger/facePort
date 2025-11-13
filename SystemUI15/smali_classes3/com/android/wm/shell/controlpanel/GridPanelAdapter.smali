.class public final Lcom/android/wm/shell/controlpanel/GridPanelAdapter;
.super Landroid/widget/BaseAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final items:Ljava/util/ArrayList;

.field public final mContext:Landroid/content/Context;

.field public final mIsEditPanel:Z

.field public mOnClickListener:Landroid/view/View$OnClickListener;

.field public mOnDragListener:Landroid/view/View$OnDragListener;

.field public mOnLongClickListener:Landroid/view/View$OnLongClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/GridPanelAdapter;->items:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/GridPanelAdapter;->mContext:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/android/wm/shell/controlpanel/GridPanelAdapter;->mIsEditPanel:Z

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/GridPanelAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/GridPanelAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    iget-object p2, p0, Lcom/android/wm/shell/controlpanel/GridPanelAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    invoke-virtual {p1}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    move-result p1

    invoke-static {p1}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction;->getResourceIdByActionValue(I)I

    move-result v3

    const-string p1, "makeButton(), action : "

    const-string p2, "GridPanelAdapter"

    invoke-static {v2, p1, p2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/GridPanelAdapter;->mContext:Landroid/content/Context;

    const p2, 0x7f0d0042

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/GridPanelAdapter;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/android/wm/shell/controlpanel/GridPanelAdapter;->mIsEditPanel:Z

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->makeGridButton(Landroid/content/Context;Landroid/widget/RelativeLayout;IIZZ)Z

    move-result p2

    iget-object p3, p0, Lcom/android/wm/shell/controlpanel/GridPanelAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/android/wm/shell/controlpanel/GridPanelAdapter;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    if-eqz p2, :cond_0

    iget-object p3, p0, Lcom/android/wm/shell/controlpanel/GridPanelAdapter;->mOnDragListener:Landroid/view/View$OnDragListener;

    if-eqz p3, :cond_0

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/GridPanelAdapter;->mOnDragListener:Landroid/view/View$OnDragListener;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    :cond_0
    return-object p1
.end method
