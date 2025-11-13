.class public final Lcom/android/systemui/controls/management/adapter/SpinnerLayoutHolder;
.super Lcom/android/systemui/controls/management/adapter/Holder;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final spinner:Lcom/android/systemui/controls/ui/view/ControlsSpinner;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerTouchCallback;Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerItemSelectionChangedCallback;Landroid/view/View$OnClickListener;Lcom/android/systemui/controls/controller/util/BadgeProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerTouchCallback;",
            "Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerItemSelectionChangedCallback;",
            "Landroid/view/View$OnClickListener;",
            "Lcom/android/systemui/controls/controller/util/BadgeProvider;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/controls/management/adapter/Holder;-><init>(Landroid/view/View;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const v0, 0x7f0a02ff

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/controls/ui/view/ControlsSpinner;

    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/SpinnerLayoutHolder;->spinner:Lcom/android/systemui/controls/ui/view/ControlsSpinner;

    iput-object p2, p1, Lcom/android/systemui/controls/ui/view/ControlsSpinner;->spinnerTouchCallback:Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerTouchCallback;

    iput-object p3, p1, Lcom/android/systemui/controls/ui/view/ControlsSpinner;->spinnerItemSelectedChangedCallback:Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerItemSelectionChangedCallback;

    iput-object p4, p1, Lcom/android/systemui/controls/ui/view/ControlsSpinner;->buttonClickCallback:Landroid/view/View$OnClickListener;

    iput-object p5, p1, Lcom/android/systemui/controls/ui/view/ControlsSpinner;->badgeProvider:Lcom/android/systemui/controls/controller/util/BadgeProvider;

    return-void
.end method


# virtual methods
.method public final bindData(Lcom/android/systemui/controls/management/model/MainModel;)V
    .locals 7

    instance-of v0, p1, Lcom/android/systemui/controls/management/model/MainComponentModel;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p1, Lcom/android/systemui/controls/management/model/MainComponentModel;

    iget-object v0, p1, Lcom/android/systemui/controls/management/model/MainComponentModel;->controlsSpinnerInfo:Ljava/util/List;

    iget-object v1, p1, Lcom/android/systemui/controls/management/model/MainComponentModel;->selected:Landroid/content/ComponentName;

    iget-boolean p1, p1, Lcom/android/systemui/controls/management/model/MainComponentModel;->showButton:Z

    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/SpinnerLayoutHolder;->spinner:Lcom/android/systemui/controls/ui/view/ControlsSpinner;

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner;->launchButtonLayout:Landroid/widget/LinearLayout;

    if-nez p1, :cond_1

    move-object p1, v4

    :cond_1
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner;->launchButton:Landroid/widget/Button;

    if-nez p1, :cond_2

    move-object p1, v4

    :cond_2
    iget-object v5, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner;->buttonClickCallback:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner;->launchButtonLayout:Landroid/widget/LinearLayout;

    if-nez p1, :cond_4

    move-object p1, v4

    :cond_4
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner;->launchButton:Landroid/widget/Button;

    if-nez p1, :cond_5

    move-object p1, v4

    :cond_5
    invoke-virtual {p1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v5, 0x1

    if-gt p1, v5, :cond_a

    iget-object p1, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner;->noSpinner:Landroid/widget/TextView;

    if-nez p1, :cond_6

    move-object p1, v4

    :cond_6
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;->getAppName()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1

    :cond_7
    move-object v0, v4

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner;->noSpinner:Landroid/widget/TextView;

    if-nez p1, :cond_8

    move-object p1, v4

    :cond_8
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner;->spinner:Lcom/android/systemui/controls/ui/view/ControlsAppCompatSpinner;

    if-nez p0, :cond_9

    goto :goto_2

    :cond_9
    move-object v4, p0

    :goto_2
    invoke-virtual {v4, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    goto/16 :goto_3

    :cond_a
    iget-object p1, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner;->noSpinner:Landroid/widget/TextView;

    if-nez p1, :cond_b

    move-object p1, v4

    :cond_b
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner;->spinner:Lcom/android/systemui/controls/ui/view/ControlsAppCompatSpinner;

    if-nez p1, :cond_c

    move-object p1, v4

    :cond_c
    invoke-virtual {p1, v3}, Landroid/widget/Spinner;->setVisibility(I)V

    new-instance p1, Lcom/android/systemui/controls/ui/view/ControlsSpinner$ItemAdapter;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner;->badgeProvider:Lcom/android/systemui/controls/controller/util/BadgeProvider;

    const v5, 0x7f0d00bc

    const v6, 0x7f0d00bd

    invoke-direct {p1, v2, v5, v6, v3}, Lcom/android/systemui/controls/ui/view/ControlsSpinner$ItemAdapter;-><init>(Landroid/content/Context;IILcom/android/systemui/controls/controller/util/BadgeProvider;)V

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {p1, v2}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    iget-object v2, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner;->spinner:Lcom/android/systemui/controls/ui/view/ControlsAppCompatSpinner;

    if-nez v2, :cond_d

    move-object v2, v4

    :cond_d
    invoke-virtual {v2, p1}, Landroidx/appcompat/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    invoke-virtual {v2}, Landroid/widget/Spinner;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f070270

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatSpinner;->setDropDownHorizontalOffset(I)V

    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;

    invoke-virtual {v6}, Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    move-object v4, v5

    :cond_f
    check-cast v4, Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;

    invoke-interface {v0, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setSelection(I)V

    iput-object v4, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner;->previous:Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;

    new-instance v0, Lcom/android/systemui/controls/ui/view/ControlsSpinner$showSpinner$1$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/controls/ui/view/ControlsSpinner$showSpinner$1$1;-><init>(Lcom/android/systemui/controls/ui/view/ControlsSpinner;)V

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Lcom/android/systemui/controls/ui/view/ControlsSpinner$showSpinner$1$2;

    invoke-direct {v0, p1, p0}, Lcom/android/systemui/controls/ui/view/ControlsSpinner$showSpinner$1$2;-><init>(Lcom/android/systemui/controls/ui/view/ControlsSpinner$ItemAdapter;Lcom/android/systemui/controls/ui/view/ControlsSpinner;)V

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :goto_3
    return-void
.end method
