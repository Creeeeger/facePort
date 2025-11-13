.class final Lcom/android/settingslib/spaprivileged/template/app/AppListKt$AppListWidget$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\u0006\u001a\u00020\u0003\"\u0008\u0008\u0000\u0010\u0001*\u00020\u0000*\u00020\u0002H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "Lcom/android/settingslib/spaprivileged/model/app/AppRecord;",
        "T",
        "Landroidx/compose/foundation/lazy/LazyListIntervalContent;",
        "",
        "invoke",
        "(Landroidx/compose/foundation/lazy/LazyListIntervalContent;)V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field final synthetic $header:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field

.field final synthetic $list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/spaprivileged/model/app/AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $option:I

.field final synthetic $this_AppListWidget:Lcom/android/settingslib/spaprivileged/model/app/AppListModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settingslib/spaprivileged/model/app/AppListModel;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lkotlin/jvm/functions/Function2;ILcom/android/settingslib/spaprivileged/model/app/AppListModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListKt$AppListWidget$1$2;->$list:Ljava/util/List;

    iput-object p2, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListKt$AppListWidget$1$2;->$header:Lkotlin/jvm/functions/Function2;

    iput p3, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListKt$AppListWidget$1$2;->$option:I

    iput-object p4, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListKt$AppListWidget$1$2;->$this_AppListWidget:Lcom/android/settingslib/spaprivileged/model/app/AppListModel;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    const-string v0, "$this$LazyColumn"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/settingslib/spaprivileged/template/app/AppListKt$AppListWidget$1$2$1;

    iget-object v1, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListKt$AppListWidget$1$2;->$header:Lkotlin/jvm/functions/Function2;

    invoke-direct {v0, v1}, Lcom/android/settingslib/spaprivileged/template/app/AppListKt$AppListWidget$1$2$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v2, 0x186e2fc8

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {p1, v1}, Landroidx/compose/foundation/lazy/LazyListIntervalContent;->item$default(Landroidx/compose/foundation/lazy/LazyListIntervalContent;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    iget-object v0, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListKt$AppListWidget$1$2;->$list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Lcom/android/settingslib/spaprivileged/template/app/AppListKt$AppListWidget$1$2$2;

    iget-object v2, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListKt$AppListWidget$1$2;->$list:Ljava/util/List;

    iget v4, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListKt$AppListWidget$1$2;->$option:I

    invoke-direct {v1, v4, v2}, Lcom/android/settingslib/spaprivileged/template/app/AppListKt$AppListWidget$1$2$2;-><init>(ILjava/util/List;)V

    new-instance v5, Lcom/android/settingslib/spaprivileged/template/app/AppListKt$AppListWidget$1$2$3;

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListKt$AppListWidget$1$2;->$this_AppListWidget:Lcom/android/settingslib/spaprivileged/model/app/AppListModel;

    invoke-direct {v5, v2, p0, v4}, Lcom/android/settingslib/spaprivileged/template/app/AppListKt$AppListWidget$1$2$3;-><init>(Ljava/util/List;Lcom/android/settingslib/spaprivileged/model/app/AppListModel;I)V

    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v2, 0x2fe7db9f

    invoke-direct {p0, v2, v3, v5}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {p1, v0, v1, p0}, Landroidx/compose/foundation/lazy/LazyListIntervalContent;->items$default(Landroidx/compose/foundation/lazy/LazyListIntervalContent;ILkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
