.class public final Lcom/android/systemui/controls/ui/view/ControlsSpinner$showSpinner$1$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field public final synthetic $itemAdapter:Lcom/android/systemui/controls/ui/view/ControlsSpinner$ItemAdapter;

.field public final synthetic this$0:Lcom/android/systemui/controls/ui/view/ControlsSpinner;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/view/ControlsSpinner$ItemAdapter;Lcom/android/systemui/controls/ui/view/ControlsSpinner;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/controls/ui/view/ControlsSpinner$ItemAdapter;",
            "Lcom/android/systemui/controls/ui/view/ControlsSpinner<",
            "Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner$showSpinner$1$2;->$itemAdapter:Lcom/android/systemui/controls/ui/view/ControlsSpinner$ItemAdapter;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner$showSpinner$1$2;->this$0:Lcom/android/systemui/controls/ui/view/ControlsSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    if-eqz p1, :cond_c

    iget-object p2, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner$showSpinner$1$2;->$itemAdapter:Lcom/android/systemui/controls/ui/view/ControlsSpinner$ItemAdapter;

    iget-object p0, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner$showSpinner$1$2;->this$0:Lcom/android/systemui/controls/ui/view/ControlsSpinner;

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;

    iput p3, p2, Lcom/android/systemui/controls/ui/view/ControlsSpinner$ItemAdapter;->mSelectedIndex:I

    invoke-virtual {p2}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    iget-object p2, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner;->previous:Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c

    iget-object p2, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner;->spinnerItemSelectedChangedCallback:Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerItemSelectionChangedCallback;

    if-eqz p2, :cond_b

    iget-object p3, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner;->previous:Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;

    check-cast p2, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$spinnerItemSelectionChangedCallback$1;

    check-cast p3, Lcom/android/systemui/controls/ui/SecSelectionItem;

    move-object p3, p1

    check-cast p3, Lcom/android/systemui/controls/ui/SecSelectionItem;

    iget-object p2, p2, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$spinnerItemSelectionChangedCallback$1;->this$0:Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;

    iget-object p4, p2, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->allComponentInfo:Ljava/util/List;

    const/4 p5, 0x0

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    move-object p4, p5

    :goto_0
    check-cast p4, Ljava/lang/Iterable;

    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controls/controller/ComponentInfo;

    iget-object v1, v0, Lcom/android/systemui/controls/controller/ComponentInfo;->componentName:Landroid/content/ComponentName;

    iget-object v0, v0, Lcom/android/systemui/controls/controller/ComponentInfo;->structureInfos:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object p4, p2, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->allComponentInfo:Ljava/util/List;

    if-eqz p4, :cond_2

    goto :goto_2

    :cond_2
    move-object p4, p5

    :goto_2
    check-cast p4, Ljava/lang/Iterable;

    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_3
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/controls/controller/ComponentInfo;

    iget-object v1, v1, Lcom/android/systemui/controls/controller/ComponentInfo;->componentName:Landroid/content/ComponentName;

    iget-object v2, p3, Lcom/android/systemui/controls/ui/SecSelectionItem;->componentName:Landroid/content/ComponentName;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object p5, v0

    :cond_4
    check-cast p5, Lcom/android/systemui/controls/controller/ComponentInfo;

    if-nez p5, :cond_5

    goto/16 :goto_7

    :cond_5
    iget-object p3, p5, Lcom/android/systemui/controls/controller/ComponentInfo;->componentName:Landroid/content/ComponentName;

    iget-object p4, p2, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->selectedItem:Lcom/android/systemui/controls/ui/SelectedItem;

    invoke-virtual {p4}, Lcom/android/systemui/controls/ui/SelectedItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object p4

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_b

    iget-object p3, p5, Lcom/android/systemui/controls/controller/ComponentInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p2, p3}, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->saveFavorites(Landroid/content/ComponentName;)Z

    sget-object p3, Lcom/android/systemui/controls/controller/ComponentInfo;->Companion:Lcom/android/systemui/controls/controller/ComponentInfo$Companion;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p3, Lcom/android/systemui/controls/controller/ComponentInfo;->EMPTY_COMPONENT_INFO:Lcom/android/systemui/controls/controller/ComponentInfo;

    invoke-virtual {p5, p3}, Lcom/android/systemui/controls/controller/ComponentInfo;->equals(Ljava/lang/Object;)Z

    move-result p3

    const-string p4, ""

    if-eqz p3, :cond_6

    goto :goto_5

    :cond_6
    sget p3, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->$r8$clinit:I

    invoke-virtual {p2, p5}, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->isPanelComponent(Lcom/android/systemui/controls/controller/ComponentInfo;)Lcom/android/systemui/controls/ControlsServiceInfo;

    move-result-object p3

    if-eqz p3, :cond_7

    new-instance v0, Lcom/android/systemui/controls/panels/SelectedComponentRepository$SelectedComponent;

    new-instance v1, Lcom/android/systemui/controls/ui/SelectedItem$PanelItem;

    invoke-virtual {p3}, Lcom/android/systemui/controls/ControlsServiceInfo;->loadLabel()Ljava/lang/CharSequence;

    move-result-object p3

    iget-object v2, p5, Lcom/android/systemui/controls/controller/ComponentInfo;->componentName:Landroid/content/ComponentName;

    invoke-direct {v1, p3, v2}, Lcom/android/systemui/controls/ui/SelectedItem$PanelItem;-><init>(Ljava/lang/CharSequence;Landroid/content/ComponentName;)V

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/panels/SelectedComponentRepository$SelectedComponent;-><init>(Lcom/android/systemui/controls/ui/SelectedItem;)V

    goto :goto_4

    :cond_7
    invoke-static {p2, p5}, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->access$getComponent(Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;Lcom/android/systemui/controls/controller/ComponentInfo;)Lcom/android/systemui/controls/ControlsServiceInfo;

    move-result-object p3

    new-instance v0, Lcom/android/systemui/controls/panels/SelectedComponentRepository$SelectedComponent;

    new-instance v1, Lcom/android/systemui/controls/ui/SelectedItem$ComponentItem;

    if-eqz p3, :cond_8

    invoke-virtual {p3}, Lcom/android/systemui/controls/ControlsServiceInfo;->loadLabel()Ljava/lang/CharSequence;

    move-result-object p3

    goto :goto_3

    :cond_8
    move-object p3, p4

    :goto_3
    invoke-direct {v1, p3, p5}, Lcom/android/systemui/controls/ui/SelectedItem$ComponentItem;-><init>(Ljava/lang/CharSequence;Lcom/android/systemui/controls/controller/ComponentInfo;)V

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/panels/SelectedComponentRepository$SelectedComponent;-><init>(Lcom/android/systemui/controls/ui/SelectedItem;)V

    :goto_4
    iget-object p3, p2, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->secSelectedComponentRepository:Lcom/android/systemui/controls/panels/SecSelectedComponentRepository;

    check-cast p3, Lcom/android/systemui/controls/panels/SecSelectedComponentRepositoryImpl;

    invoke-virtual {p3, v0}, Lcom/android/systemui/controls/panels/SecSelectedComponentRepositoryImpl;->setSelectedComponent(Lcom/android/systemui/controls/panels/SelectedComponentRepository$SelectedComponent;)V

    :goto_5
    const/4 p3, 0x0

    iput-boolean p3, p2, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->isChanged:Z

    new-instance p3, Lcom/android/systemui/controls/util/SALogger$Event$TapSpinnerApp;

    iget-object v0, p2, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->selectedItem:Lcom/android/systemui/controls/ui/SelectedItem;

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/SelectedItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/android/systemui/controls/util/SALogger$Event$TapSpinnerApp;-><init>(Ljava/lang/String;)V

    iget-object v0, p2, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->saLogger:Lcom/android/systemui/controls/util/SALogger;

    invoke-virtual {v0, p3}, Lcom/android/systemui/controls/util/SALogger;->sendEvent(Lcom/android/systemui/controls/util/SALogger$Event;)V

    const/4 p3, 0x1

    iput-boolean p3, p2, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->adapterNeedToUpdateDataSet:Z

    invoke-virtual {p2, p5}, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->isPanelComponent(Lcom/android/systemui/controls/controller/ComponentInfo;)Lcom/android/systemui/controls/ControlsServiceInfo;

    move-result-object p3

    invoke-static {p2, p5}, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->access$getComponent(Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;Lcom/android/systemui/controls/controller/ComponentInfo;)Lcom/android/systemui/controls/ControlsServiceInfo;

    move-result-object v0

    if-eqz p3, :cond_9

    new-instance p4, Lcom/android/systemui/controls/ui/SelectedItem$PanelItem;

    invoke-virtual {p3}, Lcom/android/systemui/controls/ControlsServiceInfo;->loadLabel()Ljava/lang/CharSequence;

    move-result-object p3

    iget-object p5, p5, Lcom/android/systemui/controls/controller/ComponentInfo;->componentName:Landroid/content/ComponentName;

    invoke-direct {p4, p3, p5}, Lcom/android/systemui/controls/ui/SelectedItem$PanelItem;-><init>(Ljava/lang/CharSequence;Landroid/content/ComponentName;)V

    goto :goto_6

    :cond_9
    new-instance p3, Lcom/android/systemui/controls/ui/SelectedItem$ComponentItem;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/android/systemui/controls/ControlsServiceInfo;->loadLabel()Ljava/lang/CharSequence;

    move-result-object p4

    :cond_a
    invoke-direct {p3, p4, p5}, Lcom/android/systemui/controls/ui/SelectedItem$ComponentItem;-><init>(Ljava/lang/CharSequence;Lcom/android/systemui/controls/controller/ComponentInfo;)V

    move-object p4, p3

    :goto_6
    invoke-static {p2, p4}, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->access$reload(Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;Lcom/android/systemui/controls/ui/SelectedItem;)V

    :cond_b
    :goto_7
    iput-object p1, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner;->previous:Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;

    iget-object p0, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner;->badgeProvider:Lcom/android/systemui/controls/controller/util/BadgeProvider;

    if-eqz p0, :cond_c

    check-cast p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;

    invoke-virtual {p0}, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->dismiss()V

    :cond_c
    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method
