.class public Lcom/google/android/material/appbar/model/SuggestAppBarModel;
.super Lcom/google/android/material/appbar/model/AppBarModel;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/material/appbar/model/view/SuggestAppBarView;",
        ">",
        "Lcom/google/android/material/appbar/model/AppBarModel<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final buttonListModel:Lcom/google/android/material/appbar/model/ButtonListModel;

.field private final closeClickListener:Lcom/google/android/material/appbar/model/AppBarModel$OnClickListener;

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lkotlin/reflect/KClass;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/material/appbar/model/AppBarModel$OnClickListener;Lcom/google/android/material/appbar/model/ButtonListModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClass;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/google/android/material/appbar/model/AppBarModel$OnClickListener;",
            "Lcom/google/android/material/appbar/model/ButtonListModel;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/model/AppBarModel;-><init>(Lkotlin/reflect/KClass;Landroid/content/Context;)V

    iput-object p3, p0, Lcom/google/android/material/appbar/model/SuggestAppBarModel;->title:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/material/appbar/model/SuggestAppBarModel;->closeClickListener:Lcom/google/android/material/appbar/model/AppBarModel$OnClickListener;

    iput-object p5, p0, Lcom/google/android/material/appbar/model/SuggestAppBarModel;->buttonListModel:Lcom/google/android/material/appbar/model/ButtonListModel;

    return-void
.end method


# virtual methods
.method public final getButtonListModel()Lcom/google/android/material/appbar/model/ButtonListModel;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/appbar/model/SuggestAppBarModel;->buttonListModel:Lcom/google/android/material/appbar/model/ButtonListModel;

    return-object p0
.end method

.method public final getCloseClickListener()Lcom/google/android/material/appbar/model/AppBarModel$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/appbar/model/SuggestAppBarModel;->closeClickListener:Lcom/google/android/material/appbar/model/AppBarModel$OnClickListener;

    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/appbar/model/SuggestAppBarModel;->title:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic init(Lcom/google/android/material/appbar/model/view/AppBarView;)Lcom/google/android/material/appbar/model/view/AppBarView;
    .locals 0

    check-cast p1, Lcom/google/android/material/appbar/model/view/SuggestAppBarView;

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/model/SuggestAppBarModel;->init(Lcom/google/android/material/appbar/model/view/SuggestAppBarView;)Lcom/google/android/material/appbar/model/view/SuggestAppBarView;

    move-result-object p0

    return-object p0
.end method

.method public init(Lcom/google/android/material/appbar/model/view/SuggestAppBarView;)Lcom/google/android/material/appbar/model/view/SuggestAppBarView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    invoke-virtual {p1, p0}, Lcom/google/android/material/appbar/model/view/SuggestAppBarView;->setModel(Lcom/google/android/material/appbar/model/SuggestAppBarModel;)V

    iget-object v0, p0, Lcom/google/android/material/appbar/model/SuggestAppBarModel;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/material/appbar/model/view/SuggestAppBarView;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/material/appbar/model/SuggestAppBarModel;->closeClickListener:Lcom/google/android/material/appbar/model/AppBarModel$OnClickListener;

    invoke-virtual {p1, v0}, Lcom/google/android/material/appbar/model/view/SuggestAppBarView;->setCloseClickListener(Lcom/google/android/material/appbar/model/AppBarModel$OnClickListener;)V

    iget-object p0, p0, Lcom/google/android/material/appbar/model/SuggestAppBarModel;->buttonListModel:Lcom/google/android/material/appbar/model/ButtonListModel;

    invoke-virtual {p1, p0}, Lcom/google/android/material/appbar/model/view/SuggestAppBarView;->setButtonModules(Lcom/google/android/material/appbar/model/ButtonListModel;)V

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/material/appbar/model/view/SuggestAppBarView;->updateResource(Landroid/content/Context;)V

    return-object p1
.end method
