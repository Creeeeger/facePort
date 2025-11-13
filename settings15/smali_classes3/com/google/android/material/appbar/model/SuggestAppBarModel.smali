.class public Lcom/google/android/material/appbar/model/SuggestAppBarModel;
.super Lcom/google/android/material/appbar/model/AppBarModel;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/appbar/model/SuggestAppBarModel$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/material/appbar/model/view/SuggestAppBarView;",
        ">",
        "Lcom/google/android/material/appbar/model/AppBarModel<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008\u0017\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003:\u0001\u0018B9\u0008\u0000\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0002\u0010\u000eJ\u0015\u0010\u0015\u001a\u00028\u00002\u0006\u0010\u0016\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u0017R\u0011\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0013\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/google/android/material/appbar/model/SuggestAppBarModel;",
        "T",
        "Lcom/google/android/material/appbar/model/view/SuggestAppBarView;",
        "Lcom/google/android/material/appbar/model/AppBarModel;",
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
        "getButtonListModel",
        "()Lcom/google/android/material/appbar/model/ButtonListModel;",
        "getCloseClickListener",
        "()Lcom/google/android/material/appbar/model/AppBarModel$OnClickListener;",
        "getTitle",
        "()Ljava/lang/String;",
        "init",
        "moduleView",
        "(Lcom/google/android/material/appbar/model/view/SuggestAppBarView;)Lcom/google/android/material/appbar/model/view/SuggestAppBarView;",
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


# instance fields
.field private final buttonListModel:Lcom/google/android/material/appbar/model/ButtonListModel;

.field private final closeClickListener:Lcom/google/android/material/appbar/model/AppBarModel$OnClickListener;

.field private final title:Ljava/lang/String;


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

    const-string v0, "moduleView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/google/android/material/appbar/model/view/SuggestAppBarView;->setModel(Lcom/google/android/material/appbar/model/SuggestAppBarModel;)V

    iget-object v0, p0, Lcom/google/android/material/appbar/model/SuggestAppBarModel;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/material/appbar/model/view/SuggestAppBarView;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/material/appbar/model/SuggestAppBarModel;->closeClickListener:Lcom/google/android/material/appbar/model/AppBarModel$OnClickListener;

    invoke-virtual {p1, v0}, Lcom/google/android/material/appbar/model/view/SuggestAppBarView;->setCloseClickListener(Lcom/google/android/material/appbar/model/AppBarModel$OnClickListener;)V

    iget-object p0, p0, Lcom/google/android/material/appbar/model/SuggestAppBarModel;->buttonListModel:Lcom/google/android/material/appbar/model/ButtonListModel;

    invoke-virtual {p1, p0}, Lcom/google/android/material/appbar/model/view/SuggestAppBarView;->setButtonModules(Lcom/google/android/material/appbar/model/ButtonListModel;)V

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/google/android/material/appbar/model/view/SuggestAppBarView;->updateResource(Landroid/content/Context;)V

    return-object p1
.end method
