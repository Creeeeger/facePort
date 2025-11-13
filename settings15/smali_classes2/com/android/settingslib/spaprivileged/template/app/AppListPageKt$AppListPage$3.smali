.class final Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$3;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $$changed:I

.field final synthetic $$default:I

.field final synthetic $appList:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3;"
        }
    .end annotation
.end field

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

.field final synthetic $moreOptions:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3;"
        }
    .end annotation
.end field

.field final synthetic $noItemMessage:Ljava/lang/String;

.field final synthetic $noMoreOptions:Z

.field final synthetic $showInstantApps:Z

.field final synthetic $title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/settingslib/spaprivileged/model/app/AppListModel;ZZZLjava/lang/String;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$3;->$title:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$3;->$listModel:Lcom/android/settingslib/spaprivileged/model/app/AppListModel;

    iput-boolean p3, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$3;->$showInstantApps:Z

    iput-boolean p4, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$3;->$noMoreOptions:Z

    iput-boolean p5, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$3;->$matchAnyUserForAdmin:Z

    iput-object p6, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$3;->$noItemMessage:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$3;->$moreOptions:Lkotlin/jvm/functions/Function3;

    iput-object p8, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$3;->$header:Lkotlin/jvm/functions/Function2;

    iput-object p9, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$3;->$appList:Lkotlin/jvm/functions/Function3;

    iput p10, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$3;->$$changed:I

    iput p11, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$3;->$$default:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    move-object v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget-object v0, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$3;->$title:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$3;->$listModel:Lcom/android/settingslib/spaprivileged/model/app/AppListModel;

    iget-boolean v2, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$3;->$showInstantApps:Z

    iget-boolean v3, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$3;->$noMoreOptions:Z

    iget-boolean v4, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$3;->$matchAnyUserForAdmin:Z

    iget-object v5, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$3;->$noItemMessage:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$3;->$moreOptions:Lkotlin/jvm/functions/Function3;

    iget-object v7, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$3;->$header:Lkotlin/jvm/functions/Function2;

    iget-object v8, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$3;->$appList:Lkotlin/jvm/functions/Function3;

    iget p1, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$3;->$$changed:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v10

    iget v11, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$3;->$$default:I

    invoke-static/range {v0 .. v11}, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt;->AppListPage(Ljava/lang/String;Lcom/android/settingslib/spaprivileged/model/app/AppListModel;ZZZLjava/lang/String;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
