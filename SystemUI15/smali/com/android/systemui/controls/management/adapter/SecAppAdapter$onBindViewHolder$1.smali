.class public final Lcom/android/systemui/controls/management/adapter/SecAppAdapter$onBindViewHolder$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $holder:Lcom/android/systemui/controls/management/adapter/SecAppAdapter$SecHolder;

.field public final synthetic $index:I

.field public final synthetic this$0:Lcom/android/systemui/controls/management/adapter/SecAppAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/management/adapter/SecAppAdapter;ILcom/android/systemui/controls/management/adapter/SecAppAdapter$SecHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$onBindViewHolder$1;->this$0:Lcom/android/systemui/controls/management/adapter/SecAppAdapter;

    iput p2, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$onBindViewHolder$1;->$index:I

    iput-object p3, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$onBindViewHolder$1;->$holder:Lcom/android/systemui/controls/management/adapter/SecAppAdapter$SecHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$onBindViewHolder$1;->this$0:Lcom/android/systemui/controls/management/adapter/SecAppAdapter;

    iget-object p1, p1, Lcom/android/systemui/controls/management/adapter/SecAppAdapter;->listOfServices:Ljava/util/List;

    iget v0, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$onBindViewHolder$1;->$index:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/controls/ControlsServiceInfo;

    iget-object p1, p1, Lcom/android/systemui/controls/ControlsServiceInfo;->panelActivity:Landroid/content/ComponentName;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$onBindViewHolder$1;->$holder:Lcom/android/systemui/controls/management/adapter/SecAppAdapter$SecHolder;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0a0837

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    iget-object p1, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$onBindViewHolder$1;->this$0:Lcom/android/systemui/controls/management/adapter/SecAppAdapter;

    iget-object v1, p1, Lcom/android/systemui/controls/management/adapter/SecAppAdapter;->listOfServices:Ljava/util/List;

    iget v2, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$onBindViewHolder$1;->$index:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/controls/ControlsServiceInfo;

    iget-object v1, v1, Lcom/android/settingslib/applications/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/android/systemui/controls/management/adapter/SecAppAdapter;->access$updateAuthorizedPanels(Lcom/android/systemui/controls/management/adapter/SecAppAdapter;Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$onBindViewHolder$1;->this$0:Lcom/android/systemui/controls/management/adapter/SecAppAdapter;

    iget-object v1, p1, Lcom/android/systemui/controls/management/adapter/SecAppAdapter;->favoritesRenderer:Lcom/android/systemui/controls/management/adapter/SecFavoritesRenderer;

    iget-object v1, v1, Lcom/android/systemui/controls/management/adapter/SecFavoritesRenderer;->setActivePanelFlag:Lkotlin/jvm/functions/Function2;

    iget-object p1, p1, Lcom/android/systemui/controls/management/adapter/SecAppAdapter;->listOfServices:Ljava/util/List;

    iget v2, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$onBindViewHolder$1;->$index:I

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/controls/ControlsServiceInfo;

    iget-object p1, p1, Lcom/android/settingslib/applications/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$onBindViewHolder$1;->this$0:Lcom/android/systemui/controls/management/adapter/SecAppAdapter;

    iget-object v0, p1, Lcom/android/systemui/controls/management/adapter/SecAppAdapter;->onAppSelected:Lkotlin/jvm/functions/Function1;

    iget-object p1, p1, Lcom/android/systemui/controls/management/adapter/SecAppAdapter;->listOfServices:Ljava/util/List;

    iget v1, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$onBindViewHolder$1;->$index:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/controls/ControlsServiceInfo;

    iget-object v1, p1, Lcom/android/settingslib/applications/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p1, Lcom/android/settingslib/applications/DefaultAppInfo;->packageItemInfo:Landroid/content/pm/PackageItemInfo;

    if-eqz p1, :cond_2

    iget-object p1, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$onBindViewHolder$1;->this$0:Lcom/android/systemui/controls/management/adapter/SecAppAdapter;

    iget-object p1, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter;->saLogger:Lcom/android/systemui/controls/util/SALogger;

    iget-boolean p0, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter;->isOOBE:Z

    if-eqz p0, :cond_3

    sget-object p0, Lcom/android/systemui/controls/util/SALogger$Event$TapAppList;->INSTANCE:Lcom/android/systemui/controls/util/SALogger$Event$TapAppList;

    goto :goto_2

    :cond_3
    sget-object p0, Lcom/android/systemui/controls/util/SALogger$Event$TapAppListOnManageApps;->INSTANCE:Lcom/android/systemui/controls/util/SALogger$Event$TapAppListOnManageApps;

    :goto_2
    invoke-virtual {p1, p0}, Lcom/android/systemui/controls/util/SALogger;->sendEvent(Lcom/android/systemui/controls/util/SALogger$Event;)V

    return-void
.end method
