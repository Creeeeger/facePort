.class public Lcom/google/android/material/appbar/model/SuggestAppBarItemWhiteCaseModel;
.super Lcom/google/android/material/appbar/model/SuggestAppBarItemModel;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/appbar/model/SuggestAppBarItemWhiteCaseModel$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/material/appbar/model/view/SuggestAppBarItemWhiteCaseView;",
        ">",
        "Lcom/google/android/material/appbar/model/SuggestAppBarItemModel<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0017\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003:\u0001\u0012B7\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0002\u0010\u000eJ\u0015\u0010\u000f\u001a\u00028\u00002\u0006\u0010\u0010\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u0011\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/google/android/material/appbar/model/SuggestAppBarItemWhiteCaseModel;",
        "T",
        "Lcom/google/android/material/appbar/model/view/SuggestAppBarItemWhiteCaseView;",
        "Lcom/google/android/material/appbar/model/SuggestAppBarItemModel;",
        "kclazz",
        "Lkotlin/reflect/KClass;",
        "context",
        "Landroid/content/Context;",
        "title",
        "",
        "closeClickListener",
        "Lcom/google/android/material/appbar/model/AppBarModel$OnClickListener;",
        "buttonListModel",
        "Lcom/google/android/material/appbar/model/ButtonListModel;",
        "(Lkotlin/reflect/KClass;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/material/appbar/model/AppBarModel$OnClickListener;Lcom/google/android/material/appbar/model/ButtonListModel;)V",
        "init",
        "moduleView",
        "(Lcom/google/android/material/appbar/model/view/SuggestAppBarItemWhiteCaseView;)Lcom/google/android/material/appbar/model/view/SuggestAppBarItemWhiteCaseView;",
        "Builder",
        "material_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Lkotlin/reflect/KClass;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/material/appbar/model/AppBarModel$OnClickListener;Lcom/google/android/material/appbar/model/ButtonListModel;)V
    .locals 1
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

    const-string v0, "kclazz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buttonListModel"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p5}, Lcom/google/android/material/appbar/model/SuggestAppBarItemModel;-><init>(Lkotlin/reflect/KClass;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/material/appbar/model/AppBarModel$OnClickListener;Lcom/google/android/material/appbar/model/ButtonListModel;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic init(Lcom/google/android/material/appbar/model/view/AppBarView;)Lcom/google/android/material/appbar/model/view/AppBarView;
    .locals 0

    check-cast p1, Lcom/google/android/material/appbar/model/view/SuggestAppBarItemWhiteCaseView;

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/model/SuggestAppBarItemWhiteCaseModel;->init(Lcom/google/android/material/appbar/model/view/SuggestAppBarItemWhiteCaseView;)Lcom/google/android/material/appbar/model/view/SuggestAppBarItemWhiteCaseView;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic init(Lcom/google/android/material/appbar/model/view/SuggestAppBarItemView;)Lcom/google/android/material/appbar/model/view/SuggestAppBarItemView;
    .locals 0

    check-cast p1, Lcom/google/android/material/appbar/model/view/SuggestAppBarItemWhiteCaseView;

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/model/SuggestAppBarItemWhiteCaseModel;->init(Lcom/google/android/material/appbar/model/view/SuggestAppBarItemWhiteCaseView;)Lcom/google/android/material/appbar/model/view/SuggestAppBarItemWhiteCaseView;

    move-result-object p0

    return-object p0
.end method

.method public init(Lcom/google/android/material/appbar/model/view/SuggestAppBarItemWhiteCaseView;)Lcom/google/android/material/appbar/model/view/SuggestAppBarItemWhiteCaseView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    const-string v0, "moduleView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/google/android/material/appbar/model/view/SuggestAppBarView;->setModel(Lcom/google/android/material/appbar/model/SuggestAppBarModel;)V

    invoke-virtual {p0}, Lcom/google/android/material/appbar/model/SuggestAppBarModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/appbar/model/view/SuggestAppBarView;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/material/appbar/model/SuggestAppBarModel;->getCloseClickListener()Lcom/google/android/material/appbar/model/AppBarModel$OnClickListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/appbar/model/view/SuggestAppBarView;->setCloseClickListener(Lcom/google/android/material/appbar/model/AppBarModel$OnClickListener;)V

    invoke-virtual {p0}, Lcom/google/android/material/appbar/model/SuggestAppBarModel;->getButtonListModel()Lcom/google/android/material/appbar/model/ButtonListModel;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/material/appbar/model/view/SuggestAppBarView;->setButtonModules(Lcom/google/android/material/appbar/model/ButtonListModel;)V

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/google/android/material/appbar/model/view/SuggestAppBarItemWhiteCaseView;->updateResource(Landroid/content/Context;)V

    return-object p1
.end method

.method public bridge synthetic init(Lcom/google/android/material/appbar/model/view/SuggestAppBarView;)Lcom/google/android/material/appbar/model/view/SuggestAppBarView;
    .locals 0

    check-cast p1, Lcom/google/android/material/appbar/model/view/SuggestAppBarItemWhiteCaseView;

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/model/SuggestAppBarItemWhiteCaseModel;->init(Lcom/google/android/material/appbar/model/view/SuggestAppBarItemWhiteCaseView;)Lcom/google/android/material/appbar/model/view/SuggestAppBarItemWhiteCaseView;

    move-result-object p0

    return-object p0
.end method
