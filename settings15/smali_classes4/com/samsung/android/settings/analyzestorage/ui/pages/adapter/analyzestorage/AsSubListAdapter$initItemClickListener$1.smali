.class final Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter$initItemClickListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $holder:Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/SubAppListViewHolder;

.field final synthetic this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/SubAppListViewHolder;Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter$initItemClickListener$1;->$holder:Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/SubAppListViewHolder;

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter$initItemClickListener$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter$initItemClickListener$1;->$holder:Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/SubAppListViewHolder;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter$initItemClickListener$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter;->controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;

    sget-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyboardMouseManager;->sMouseEventCallBack:Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener$getMouseEventCallBack$1;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyboardMouseManager;->sKeyMouseCommand:Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyMouseCommand;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0, p1}, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyMouseCommand;->onMouseDown(Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;I)V

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyboardMouseManager;->sPressedKey:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyboardMouseManager;->sMouseEventCallBack:Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener$getMouseEventCallBack$1;

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener$getMouseEventCallBack$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener;

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener;->adapter:Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter$initItemClickListener$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter;->controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;

    iget-object v0, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mListItemHandler:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;

    iget-object v1, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mCheckedItemList:Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->getItemAt(I)Lcom/samsung/android/settings/analyzestorage/domain/entity/DataInfo;

    move-result-object v0

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter$initItemClickListener$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter;

    iget-object v1, v1, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter;->controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;

    iget-object v1, v1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mListItemHandler:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;

    invoke-virtual {v1, p1, v0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->setItemChecked(IZ)V

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter$initItemClickListener$1;->$holder:Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/SubAppListViewHolder;

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/SubAppListViewHolder;->checkBox:Landroid/widget/CheckBox;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_0
    const/4 p0, -0x1

    if-le p1, p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    sput p1, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/ShiftKeyMouseCommand;->sStartPosition:I

    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
