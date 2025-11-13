.class public final Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectSingleChoiceItemView$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectSingleChoiceItemView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectSingleChoiceItemView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectSingleChoiceItemView$2;->this$0:Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectSingleChoiceItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 6

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectSingleChoiceItemView$2;->this$0:Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectSingleChoiceItemView;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectSingleChoiceItemView;->chooserMenu:Lcom/android/systemui/qs/customize/QSBlurPopUpMenu;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/ListPopupWindow;->dismiss()V

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectSingleChoiceItemView;->binding:Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectSingleChoiceItemViewBinding;

    iget-object p1, p1, Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectSingleChoiceItemViewBinding;->root:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectSingleChoiceItemView;->viewModel:Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseSingleChoiceViewModel;

    invoke-virtual {v0}, Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseSingleChoiceViewModel;->getOptionNames()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/android/systemui/qs/customize/QSBlurPopUpMenu$PopUpContent;

    iget-object v5, v0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseSingleChoiceViewModel;->selectedOptionName:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v5}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    invoke-direct {v4, v3, v5}, Lcom/android/systemui/qs/customize/QSBlurPopUpMenu$PopUpContent;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/android/systemui/qs/customize/QSBlurPopUpMenu;

    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectSingleChoiceItemView;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/customize/QSBlurPopUpMenu;-><init>(Landroid/content/Context;)V

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    const p1, 0x800003

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setDropDownGravity(I)V

    new-instance p1, Lcom/android/systemui/qs/customize/QSBlurPopUpMenu$PopupListAdapter;

    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectSingleChoiceItemView;->context:Landroid/content/Context;

    invoke-direct {p1, v1, v2}, Lcom/android/systemui/qs/customize/QSBlurPopUpMenu$PopupListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/customize/QSBlurPopUpMenu;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance p1, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectSingleChoiceItemView$showChooser$1$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectSingleChoiceItemView$showChooser$1$1;-><init>(Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectSingleChoiceItemView;)V

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance p1, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectSingleChoiceItemView$showChooser$1$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectSingleChoiceItemView$showChooser$1$2;-><init>(Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectSingleChoiceItemView;)V

    iput-object p1, v0, Lcom/android/systemui/qs/customize/QSBlurPopUpMenu;->dismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/QSBlurPopUpMenu;->show()V

    iput-object v0, p0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectSingleChoiceItemView;->chooserMenu:Lcom/android/systemui/qs/customize/QSBlurPopUpMenu;

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectSingleChoiceItemView;->chooserMenu:Lcom/android/systemui/qs/customize/QSBlurPopUpMenu;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/widget/ListPopupWindow;->dismiss()V

    :cond_4
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectSingleChoiceItemView;->chooserMenu:Lcom/android/systemui/qs/customize/QSBlurPopUpMenu;

    :goto_1
    return-void
.end method
