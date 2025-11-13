.class public final Lcom/android/systemui/controls/management/SecControlsReorderActivity;
.super Lcom/android/systemui/controls/BaseActivity;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final auiFacade:Lcom/android/systemui/controls/ui/util/AUIFacade;

.field public final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public controlsListLayout:Landroid/widget/LinearLayout;

.field public final controlsUtil:Lcom/android/systemui/controls/util/ControlsUtil;

.field public final layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;

.field public list:Ljava/util/ArrayList;

.field public noItemsLayout:Landroid/widget/LinearLayout;

.field public structureAdapter:Lcom/android/systemui/controls/management/adapter/SecStructureAdapter;

.field public structureModel:Lcom/android/systemui/controls/management/model/ReorderStructureModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/controls/management/SecControlsReorderActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/management/SecControlsReorderActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/controls/controller/ControlsController;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/controls/ui/util/LayoutUtil;Lcom/android/systemui/controls/util/ControlsUtil;Lcom/android/systemui/controls/ui/util/AUIFacade;Lcom/android/systemui/settings/UserTracker;)V
    .locals 0

    invoke-direct {p0, p3, p2, p7, p1}, Lcom/android/systemui/controls/BaseActivity;-><init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/controls/controller/ControlsController;Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;)V

    iput-object p3, p0, Lcom/android/systemui/controls/management/SecControlsReorderActivity;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iput-object p4, p0, Lcom/android/systemui/controls/management/SecControlsReorderActivity;->layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;

    iput-object p5, p0, Lcom/android/systemui/controls/management/SecControlsReorderActivity;->controlsUtil:Lcom/android/systemui/controls/util/ControlsUtil;

    iput-object p6, p0, Lcom/android/systemui/controls/management/SecControlsReorderActivity;->auiFacade:Lcom/android/systemui/controls/ui/util/AUIFacade;

    return-void
.end method


# virtual methods
.method public final getBroadcastDispatcher()Lcom/android/systemui/broadcast/BroadcastDispatcher;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/management/SecControlsReorderActivity;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    return-object p0
.end method

.method public final getCurrentStructureList()Ljava/util/ArrayList;
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/controls/management/SecControlsReorderActivity;->structureModel:Lcom/android/systemui/controls/management/model/ReorderStructureModel;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/controls/management/model/ReorderStructureModel;->elements:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/android/systemui/controls/management/model/ReorderWrapper;

    if-eqz v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/controls/management/model/ReorderWrapper;

    iget-object v1, v1, Lcom/android/systemui/controls/management/model/ReorderWrapper;->displayName:Ljava/lang/CharSequence;

    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "SecControlsReorderActivity"

    return-object p0
.end method

.method public final onBackKeyPressed()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/controls/management/SecControlsReorderActivity;->getCurrentStructureList()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/controls/management/SecControlsReorderActivity;->list:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    :cond_0
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/controls/management/SecControlsReorderActivity;->list:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "saveStructureOrder origin="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", current="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SecControlsReorderActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "OrderList"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putCharSequenceArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 10

    invoke-super {p0, p1}, Lcom/android/systemui/controls/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.COMPONENT_NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "extra_structure_lists"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    iput-object v0, p0, Lcom/android/systemui/controls/management/SecControlsReorderActivity;->list:Ljava/util/ArrayList;

    const v0, 0x7f0d001f

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const v0, 0x7f0a0d52

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f130477

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_3
    const v0, 0x7f0a0688

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0043

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/controls/management/SecControlsReorderActivity;->layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;

    invoke-virtual {v3, v2}, Lcom/android/systemui/controls/ui/util/LayoutUtil;->getWidthPercentBasic(F)F

    move-result v2

    invoke-virtual {v3, v2, v0}, Lcom/android/systemui/controls/ui/util/LayoutUtil;->setLayoutWeightWidthPercentBasic(FLandroid/view/View;)V

    const v0, 0x7f0a02f0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/controls/management/SecControlsReorderActivity;->controlsListLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a07e1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/controls/management/SecControlsReorderActivity;->noItemsLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/systemui/controls/management/SecControlsReorderActivity;->list:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    move-object v0, v1

    :cond_4
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/controls/management/SecControlsReorderActivity;->list:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    move-object v0, v1

    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/controls/management/SecControlsReorderActivity;->controlsListLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_6

    move-object v0, v1

    :cond_6
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/controls/management/SecControlsReorderActivity;->noItemsLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_7

    move-object v0, v1

    :cond_7
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/controls/management/SecControlsReorderActivity;->controlsListLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_9

    move-object v0, v1

    :cond_9
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/controls/management/SecControlsReorderActivity;->noItemsLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_a

    move-object v0, v1

    :cond_a
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    const v0, 0x7f0a0c2b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    const v2, 0x7f0d00c3

    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setLayoutResource(I)V

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    if-eqz p1, :cond_b

    const-string v0, "current_structure_list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_2

    :cond_b
    iget-object p1, p0, Lcom/android/systemui/controls/management/SecControlsReorderActivity;->list:Ljava/util/ArrayList;

    if-nez p1, :cond_c

    move-object p1, v1

    :cond_c
    :goto_2
    new-instance v0, Lcom/android/systemui/controls/management/model/ReorderStructureModel;

    invoke-direct {v0, p1}, Lcom/android/systemui/controls/management/model/ReorderStructureModel;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/systemui/controls/management/SecControlsReorderActivity;->structureModel:Lcom/android/systemui/controls/management/model/ReorderStructureModel;

    new-instance p1, Lcom/android/systemui/controls/management/adapter/SecStructureAdapter;

    iget-object v0, p0, Lcom/android/systemui/controls/BaseActivity;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v6

    iget-object v5, p0, Lcom/android/systemui/controls/management/SecControlsReorderActivity;->auiFacade:Lcom/android/systemui/controls/ui/util/AUIFacade;

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/android/systemui/controls/management/SecControlsReorderActivity;->layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;

    iget-object v4, p0, Lcom/android/systemui/controls/management/SecControlsReorderActivity;->controlsUtil:Lcom/android/systemui/controls/util/ControlsUtil;

    const/16 v8, 0x10

    const/4 v9, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/controls/management/adapter/SecStructureAdapter;-><init>(Lcom/android/systemui/controls/ui/util/LayoutUtil;Lcom/android/systemui/controls/util/ControlsUtil;Lcom/android/systemui/controls/ui/util/AUIFacade;ILjava/util/function/Consumer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/android/systemui/controls/management/SecControlsReorderActivity;->structureAdapter:Lcom/android/systemui/controls/management/adapter/SecStructureAdapter;

    const p1, 0x7f0a0640

    invoke-virtual {p0, p1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/android/systemui/controls/management/SecControlsReorderActivity;->structureAdapter:Lcom/android/systemui/controls/management/adapter/SecStructureAdapter;

    if-nez v0, :cond_d

    move-object v0, v1

    :cond_d
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/android/systemui/controls/management/SecControlsReorderActivity;->structureModel:Lcom/android/systemui/controls/management/model/ReorderStructureModel;

    if-nez v0, :cond_e

    move-object v0, v1

    :cond_e
    iget-object v0, v0, Lcom/android/systemui/controls/management/model/ReorderStructureModel;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    iget-object p1, p0, Lcom/android/systemui/controls/management/SecControlsReorderActivity;->structureAdapter:Lcom/android/systemui/controls/management/adapter/SecStructureAdapter;

    if-nez p1, :cond_f

    move-object p1, v1

    :cond_f
    iget-object v0, p0, Lcom/android/systemui/controls/management/SecControlsReorderActivity;->structureModel:Lcom/android/systemui/controls/management/model/ReorderStructureModel;

    if-nez v0, :cond_10

    move-object v0, v1

    :cond_10
    iput-object v0, p1, Lcom/android/systemui/controls/management/adapter/SecStructureAdapter;->model:Lcom/android/systemui/controls/management/model/StructureModel;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/android/systemui/controls/management/SecControlsReorderActivity;->structureModel:Lcom/android/systemui/controls/management/model/ReorderStructureModel;

    if-nez p1, :cond_11

    move-object p1, v1

    :cond_11
    iget-object p0, p0, Lcom/android/systemui/controls/management/SecControlsReorderActivity;->structureAdapter:Lcom/android/systemui/controls/management/adapter/SecStructureAdapter;

    if-nez p0, :cond_12

    goto :goto_3

    :cond_12
    move-object v1, p0

    :goto_3
    iput-object v1, p1, Lcom/android/systemui/controls/management/model/ReorderStructureModel;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/controls/management/SecControlsReorderActivity;->getCurrentStructureList()Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "current_structure_list"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequenceArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
