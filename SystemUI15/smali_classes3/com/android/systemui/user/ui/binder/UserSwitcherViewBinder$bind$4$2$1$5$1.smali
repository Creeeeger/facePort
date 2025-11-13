.class public final Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1$5$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $flowWidget:Landroidx/constraintlayout/helper/widget/Flow;

.field public final synthetic $gridContainerView:Lcom/android/systemui/user/UserSwitcherRootView;

.field public final synthetic $layoutInflater:Landroid/view/LayoutInflater;

.field public final synthetic $view:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/android/systemui/user/UserSwitcherRootView;Landroidx/constraintlayout/helper/widget/Flow;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1$5$1;->$gridContainerView:Lcom/android/systemui/user/UserSwitcherRootView;

    iput-object p2, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1$5$1;->$flowWidget:Landroidx/constraintlayout/helper/widget/Flow;

    iput-object p3, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1$5$1;->$layoutInflater:Landroid/view/LayoutInflater;

    iput-object p4, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1$5$1;->$view:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12

    check-cast p1, Ljava/util/List;

    iget-object p2, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1$5$1;->$gridContainerView:Lcom/android/systemui/user/UserSwitcherRootView;

    invoke-static {p2}, Lcom/android/systemui/util/ConvenienceExtensionsKt;->getChildren(Landroid/view/ViewGroup;)Lkotlin/sequences/Sequence;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1$5$1$viewPool$1;->INSTANCE:Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1$5$1$viewPool$1;

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt___SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lkotlin/sequences/FilteringSequence;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    move-object v2, v0

    check-cast v2, Lkotlin/sequences/FilteringSequence$iterator$1;

    invoke-virtual {v2}, Lkotlin/sequences/FilteringSequence$iterator$1;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lkotlin/sequences/FilteringSequence$iterator$1;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1$5$1;->$flowWidget:Landroidx/constraintlayout/helper/widget/Flow;

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {v3, v2}, Landroidx/constraintlayout/widget/ConstraintHelper;->removeView(Landroid/view/View;)I

    goto :goto_1

    :cond_1
    check-cast p1, Ljava/lang/Iterable;

    iget-object v0, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1$5$1;->$layoutInflater:Landroid/view/LayoutInflater;

    iget-object p0, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1$5$1;->$view:Landroid/view/ViewGroup;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/user/ui/viewmodel/UserViewModel;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    goto :goto_3

    :cond_2
    const v4, 0x7f0d054b

    invoke-virtual {v0, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    const-string/jumbo v6, "user_view"

    invoke-virtual {v4, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_3
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/view/View;->setId(I)V

    invoke-virtual {p2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/ConstraintHelper;->addView(Landroid/view/View;)V

    sget-object v6, Lcom/android/systemui/user/ui/binder/UserViewBinder;->INSTANCE:Lcom/android/systemui/user/ui/binder/UserViewBinder;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lcom/android/systemui/common/ui/binder/TextViewBinder;->INSTANCE:Lcom/android/systemui/common/ui/binder/TextViewBinder;

    const v7, 0x7f0a0e04

    invoke-virtual {v4, v7}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-object v8, v2, Lcom/android/systemui/user/ui/viewmodel/UserViewModel;->name:Lcom/android/systemui/common/shared/model/Text;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7, v8}, Lcom/android/systemui/common/ui/binder/TextViewBinder;->bind(Landroid/widget/TextView;Lcom/android/systemui/common/shared/model/Text;)V

    const v6, 0x7f0a0e00

    invoke-virtual {v4, v6}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    sget-object v10, Landroidx/core/content/res/ResourcesCompat;->sTempTypedValue:Ljava/lang/ThreadLocal;

    const v10, 0x7f0814ac

    invoke-virtual {v8, v10, v9}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/LayerDrawable;

    iget-boolean v9, v2, Lcom/android/systemui/user/ui/viewmodel/UserViewModel;->isSelectionMarkerVisible:Z

    if-eqz v9, :cond_3

    const v9, 0x7f0a09e5

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    check-cast v9, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f071784

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    const v11, 0x1120026

    invoke-static {v7, v11, v5}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    move-result v5

    invoke-virtual {v9, v10, v5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_3
    iget-object v5, v2, Lcom/android/systemui/user/ui/viewmodel/UserViewModel;->image:Landroid/graphics/drawable/Drawable;

    const v7, 0x7f0a0df4

    invoke-virtual {v8, v7, v5}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget v5, v2, Lcom/android/systemui/user/ui/viewmodel/UserViewModel;->alpha:F

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    iget-object v5, v2, Lcom/android/systemui/user/ui/viewmodel/UserViewModel;->onClicked:Lkotlin/jvm/functions/Function0;

    if-eqz v5, :cond_4

    new-instance v5, Lcom/android/systemui/user/ui/binder/UserViewBinder$bind$1;

    invoke-direct {v5, v2}, Lcom/android/systemui/user/ui/binder/UserViewBinder$bind$1;-><init>(Lcom/android/systemui/user/ui/viewmodel/UserViewModel;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    :cond_4
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Required value was null."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
