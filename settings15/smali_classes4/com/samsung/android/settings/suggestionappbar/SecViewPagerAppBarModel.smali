.class public final Lcom/samsung/android/settings/suggestionappbar/SecViewPagerAppBarModel;
.super Lcom/google/android/material/appbar/model/ViewPagerAppBarModel;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/appbar/model/ViewPagerAppBarModel<",
        "Lcom/samsung/android/settings/suggestionappbar/SecViewPagerAppBarView;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B-\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0014\u0008\u0002\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00070\u0006\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ\u0006\u0010\u000f\u001a\u00020\nJ\u0010\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0002H\u0016J\u0006\u0010\u0012\u001a\u00020\u0013J\u0016\u0010\u0014\u001a\u00020\u00152\u000e\u0010\u0016\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00180\u0017R\u001a\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0002X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/samsung/android/settings/suggestionappbar/SecViewPagerAppBarModel;",
        "Lcom/google/android/material/appbar/model/ViewPagerAppBarModel;",
        "Lcom/samsung/android/settings/suggestionappbar/SecViewPagerAppBarView;",
        "context",
        "Landroid/content/Context;",
        "appBarModels",
        "",
        "Lcom/google/android/material/appbar/model/SuggestAppBarModel;",
        "Lcom/google/android/material/appbar/model/view/SuggestAppBarItemView;",
        "defaultPosition",
        "",
        "(Landroid/content/Context;Ljava/util/List;I)V",
        "appBarView",
        "viewPagerAdapter",
        "Lcom/samsung/android/settings/suggestionappbar/SecViewPagerAdapter;",
        "getDefaultPosition",
        "init",
        "moduleView",
        "isEmpty",
        "",
        "removeSuggestItemView",
        "",
        "appBarModel",
        "Lcom/google/android/material/appbar/model/AppBarModel;",
        "Lcom/google/android/material/appbar/model/view/AppBarView;",
        "applications__sources__apps__SecSettings__android_common__SecSettings-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final appBarModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/appbar/model/SuggestAppBarModel<",
            "Lcom/google/android/material/appbar/model/view/SuggestAppBarItemView;",
            ">;>;"
        }
    .end annotation
.end field

.field private appBarView:Lcom/samsung/android/settings/suggestionappbar/SecViewPagerAppBarView;

.field private final defaultPosition:I

.field private viewPagerAdapter:Lcom/samsung/android/settings/suggestionappbar/SecViewPagerAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/material/appbar/model/SuggestAppBarModel<",
            "Lcom/google/android/material/appbar/model/view/SuggestAppBarItemView;",
            ">;>;I)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appBarModels"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/samsung/android/settings/suggestionappbar/SecViewPagerAppBarView;

    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/material/appbar/model/ViewPagerAppBarModel;-><init>(Lkotlin/reflect/KClass;Landroid/content/Context;Ljava/util/List;)V

    iput-object p2, p0, Lcom/samsung/android/settings/suggestionappbar/SecViewPagerAppBarModel;->appBarModels:Ljava/util/List;

    iput p3, p0, Lcom/samsung/android/settings/suggestionappbar/SecViewPagerAppBarModel;->defaultPosition:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    sget-object p2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/suggestionappbar/SecViewPagerAppBarModel;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    return-void
.end method


# virtual methods
.method public final getDefaultPosition()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/suggestionappbar/SecViewPagerAppBarModel;->appBarView:Lcom/samsung/android/settings/suggestionappbar/SecViewPagerAppBarView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/suggestionappbar/SecViewPagerAppBarView;->getDefaultPosition()I

    move-result p0

    return p0

    :cond_0
    const-string p0, "appBarView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public bridge synthetic init(Lcom/google/android/material/appbar/model/view/AppBarView;)Lcom/google/android/material/appbar/model/view/AppBarView;
    .locals 0

    check-cast p1, Lcom/samsung/android/settings/suggestionappbar/SecViewPagerAppBarView;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/suggestionappbar/SecViewPagerAppBarModel;->init(Lcom/samsung/android/settings/suggestionappbar/SecViewPagerAppBarView;)Lcom/samsung/android/settings/suggestionappbar/SecViewPagerAppBarView;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic init(Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;)Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;
    .locals 0

    check-cast p1, Lcom/samsung/android/settings/suggestionappbar/SecViewPagerAppBarView;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/suggestionappbar/SecViewPagerAppBarModel;->init(Lcom/samsung/android/settings/suggestionappbar/SecViewPagerAppBarView;)Lcom/samsung/android/settings/suggestionappbar/SecViewPagerAppBarView;

    move-result-object p0

    return-object p0
.end method

.method public init(Lcom/samsung/android/settings/suggestionappbar/SecViewPagerAppBarView;)Lcom/samsung/android/settings/suggestionappbar/SecViewPagerAppBarView;
    .locals 3

    const-string/jumbo v0, "moduleView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/settings/suggestionappbar/SecViewPagerAdapter;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/suggestionappbar/SecViewPagerAdapter;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/android/settings/suggestionappbar/SecViewPagerAppBarModel;->appBarModels:Ljava/util/List;

    const-string v2, "dataModel"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/samsung/android/settings/suggestionappbar/SecViewPagerAdapter;->data:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, v0, Lcom/samsung/android/settings/suggestionappbar/SecViewPagerAdapter;->data:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iput-object v0, p0, Lcom/samsung/android/settings/suggestionappbar/SecViewPagerAppBarModel;->viewPagerAdapter:Lcom/samsung/android/settings/suggestionappbar/SecViewPagerAdapter;

    invoke-super {p0, p1}, Lcom/google/android/material/appbar/model/ViewPagerAppBarModel;->init(Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;)Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/suggestionappbar/SecViewPagerAppBarView;

    iget-object v0, p0, Lcom/samsung/android/settings/suggestionappbar/SecViewPagerAppBarModel;->viewPagerAdapter:Lcom/samsung/android/settings/suggestionappbar/SecViewPagerAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/suggestionappbar/SecViewPagerAppBarView;->setAdapter(Lcom/samsung/android/settings/suggestionappbar/SecViewPagerAdapter;)V

    iget-object v0, p0, Lcom/samsung/android/settings/suggestionappbar/SecViewPagerAppBarModel;->appBarModels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v2, p0, Lcom/samsung/android/settings/suggestionappbar/SecViewPagerAppBarModel;->defaultPosition:I

    invoke-virtual {p1, v0, v2}, Lcom/samsung/android/settings/suggestionappbar/SecViewPagerAppBarView;->initIndicator(II)V

    iput-object p1, p0, Lcom/samsung/android/settings/suggestionappbar/SecViewPagerAppBarModel;->appBarView:Lcom/samsung/android/settings/suggestionappbar/SecViewPagerAppBarView;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const-string p0, "appBarView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string/jumbo p0, "viewPagerAdapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public final isEmpty()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/suggestionappbar/SecViewPagerAppBarModel;->viewPagerAdapter:Lcom/samsung/android/settings/suggestionappbar/SecViewPagerAdapter;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/suggestionappbar/SecViewPagerAdapter;->getItemCount()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    const-string/jumbo p0, "viewPagerAdapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final removeSuggestItemView(Lcom/google/android/material/appbar/model/AppBarModel;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/appbar/model/AppBarModel<",
            "+",
            "Lcom/google/android/material/appbar/model/view/AppBarView;",
            ">;)V"
        }
    .end annotation

    const-string v0, "appBarModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/suggestionappbar/SecViewPagerAppBarModel;->viewPagerAdapter:Lcom/samsung/android/settings/suggestionappbar/SecViewPagerAdapter;

    const/4 v1, 0x0

    const-string/jumbo v2, "viewPagerAdapter"

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/samsung/android/settings/suggestionappbar/SecViewPagerAdapter;->data:Ljava/util/List;

    const-string v3, "<this>"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/settings/suggestionappbar/SecViewPagerAppBarModel;->viewPagerAdapter:Lcom/samsung/android/settings/suggestionappbar/SecViewPagerAdapter;

    if-eqz v3, :cond_1

    iget-object v2, v3, Lcom/samsung/android/settings/suggestionappbar/SecViewPagerAdapter;->data:Ljava/util/List;

    invoke-static {v2}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object p0, p0, Lcom/samsung/android/settings/suggestionappbar/SecViewPagerAppBarModel;->appBarView:Lcom/samsung/android/settings/suggestionappbar/SecViewPagerAppBarView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/suggestionappbar/SecViewPagerAppBarView;->removeIndicator(I)V

    return-void

    :cond_0
    const-string p0, "appBarView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method
