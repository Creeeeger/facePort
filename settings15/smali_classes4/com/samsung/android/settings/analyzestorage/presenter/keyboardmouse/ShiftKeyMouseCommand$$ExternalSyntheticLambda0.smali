.class public final synthetic Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/ShiftKeyMouseCommand$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Landroidx/recyclerview/widget/RecyclerView;

.field public final synthetic f$2:Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView;Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/ShiftKeyMouseCommand$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/ShiftKeyMouseCommand$$ExternalSyntheticLambda0;->f$1:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p3, p0, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/ShiftKeyMouseCommand$$ExternalSyntheticLambda0;->f$2:Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;

    iput p4, p0, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/ShiftKeyMouseCommand$$ExternalSyntheticLambda0;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/ShiftKeyMouseCommand$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/ShiftKeyMouseCommand$$ExternalSyntheticLambda0;->f$1:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/ShiftKeyMouseCommand$$ExternalSyntheticLambda0;->f$2:Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;

    iget p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/ShiftKeyMouseCommand$$ExternalSyntheticLambda0;->f$3:I

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForPosition(IZ)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v5, v4, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/SubAppListViewHolder;

    if-eqz v5, :cond_2

    move-object v5, v4

    check-cast v5, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/SubAppListViewHolder;

    iget-object v5, v5, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/SubAppListViewHolder;->checkBox:Landroid/widget/CheckBox;

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_2
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p0, :cond_0

    if-eqz v4, :cond_0

    iget-object v3, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_3
    return-void
.end method
