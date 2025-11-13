.class final Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u000b\u00a2\u0006\u0004\u0008\u0006\u0010\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "Lcom/android/settingslib/spaprivileged/model/app/AppRecord;",
        "userGroup",
        "Lcom/android/settingslib/spaprivileged/template/common/UserGroup;",
        "invoke",
        "(Lcom/android/settingslib/spaprivileged/template/common/UserGroup;Landroidx/compose/runtime/Composer;I)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $appList:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3;"
        }
    .end annotation
.end field

.field final synthetic $bottomPadding:F

.field final synthetic $header:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field

.field final synthetic $listModel:Lcom/android/settingslib/spaprivileged/model/app/AppListModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settingslib/spaprivileged/model/app/AppListModel;"
        }
    .end annotation
.end field

.field final synthetic $matchAnyUserForAdmin:Z

.field final synthetic $noItemMessage:Ljava/lang/String;

.field final synthetic $searchQuery:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field final synthetic $showInstantApps:Z

.field final synthetic $showSystem$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZZLandroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function0;Lcom/android/settingslib/spaprivileged/model/app/AppListModel;Lkotlin/jvm/functions/Function2;Ljava/lang/String;FLkotlin/jvm/functions/Function3;)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$2$1;->$showInstantApps:Z

    iput-boolean p2, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$2$1;->$matchAnyUserForAdmin:Z

    iput-object p3, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$2$1;->$showSystem$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p4, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$2$1;->$searchQuery:Lkotlin/jvm/functions/Function0;

    iput-object p5, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$2$1;->$listModel:Lcom/android/settingslib/spaprivileged/model/app/AppListModel;

    iput-object p6, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$2$1;->$header:Lkotlin/jvm/functions/Function2;

    iput-object p7, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$2$1;->$noItemMessage:Ljava/lang/String;

    iput p8, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$2$1;->$bottomPadding:F

    iput-object p9, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$2$1;->$appList:Lkotlin/jvm/functions/Function3;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    check-cast p1, Lcom/android/settingslib/spaprivileged/template/common/UserGroup;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    const-string p3, "userGroup"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p3, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object p1, p1, Lcom/android/settingslib/spaprivileged/template/common/UserGroup;->userInfos:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    new-instance p3, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$2$1;->$showInstantApps:Z

    iget-boolean v0, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$2$1;->$matchAnyUserForAdmin:Z

    new-instance v2, Lcom/android/settingslib/spaprivileged/template/app/AppListConfig;

    invoke-direct {v2, p3, p1, v0}, Lcom/android/settingslib/spaprivileged/template/app/AppListConfig;-><init>(Ljava/util/List;ZZ)V

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    const p1, 0x305f230

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object p1, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$2$1;->$showSystem$delegate:Landroidx/compose/runtime/MutableState;

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result p1

    iget-object p3, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$2$1;->$showSystem$delegate:Landroidx/compose/runtime/MutableState;

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-nez p1, :cond_1

    sget-object p1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v0, p1, :cond_2

    :cond_1
    new-instance v0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$2$1$appListInput$2$1;

    invoke-direct {v0, p3}, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$2$1$appListInput$2$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_2
    check-cast v0, Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    iget-object p1, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$2$1;->$searchQuery:Lkotlin/jvm/functions/Function0;

    new-instance v4, Lcom/android/settingslib/spaprivileged/template/app/AppListState;

    invoke-direct {v4, v0, p1}, Lcom/android/settingslib/spaprivileged/template/app/AppListState;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    new-instance p1, Lcom/android/settingslib/spaprivileged/template/app/AppListInput;

    iget-object v3, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$2$1;->$listModel:Lcom/android/settingslib/spaprivileged/model/app/AppListModel;

    iget-object v5, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$2$1;->$header:Lkotlin/jvm/functions/Function2;

    iget-object v6, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$2$1;->$noItemMessage:Ljava/lang/String;

    iget v7, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$2$1;->$bottomPadding:F

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/settingslib/spaprivileged/template/app/AppListInput;-><init>(Lcom/android/settingslib/spaprivileged/template/app/AppListConfig;Lcom/android/settingslib/spaprivileged/model/app/AppListModel;Lcom/android/settingslib/spaprivileged/template/app/AppListState;Lkotlin/jvm/functions/Function2;Ljava/lang/String;F)V

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$2$1;->$appList:Lkotlin/jvm/functions/Function3;

    const/16 p3, 0x8

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p0, p1, p2, p3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
