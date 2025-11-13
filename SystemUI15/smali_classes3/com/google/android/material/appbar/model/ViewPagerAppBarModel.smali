.class public Lcom/google/android/material/appbar/model/ViewPagerAppBarModel;
.super Lcom/google/android/material/appbar/model/AppBarModel;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;",
        ">",
        "Lcom/google/android/material/appbar/model/AppBarModel<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final appBarModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/appbar/model/AppBarModel<",
            "+",
            "Lcom/google/android/material/appbar/model/view/AppBarView;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/reflect/KClass;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClass;",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/material/appbar/model/AppBarModel<",
            "+",
            "Lcom/google/android/material/appbar/model/view/AppBarView;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/model/AppBarModel;-><init>(Lkotlin/reflect/KClass;Landroid/content/Context;)V

    iput-object p3, p0, Lcom/google/android/material/appbar/model/ViewPagerAppBarModel;->appBarModels:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/KClass;Landroid/content/Context;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    sget-object p3, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/appbar/model/ViewPagerAppBarModel;-><init>(Lkotlin/reflect/KClass;Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic init(Lcom/google/android/material/appbar/model/view/AppBarView;)Lcom/google/android/material/appbar/model/view/AppBarView;
    .locals 0

    check-cast p1, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/model/ViewPagerAppBarModel;->init(Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;)Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;

    move-result-object p0

    return-object p0
.end method

.method public init(Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;)Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    return-object p1
.end method
