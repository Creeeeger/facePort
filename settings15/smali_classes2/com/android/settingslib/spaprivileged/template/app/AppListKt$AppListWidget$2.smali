.class final Lcom/android/settingslib/spaprivileged/template/app/AppListKt$AppListWidget$2;
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

.field final synthetic $appListData:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State;"
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

.field final synthetic $noItemMessage:Ljava/lang/String;

.field final synthetic $this_AppListWidget:Lcom/android/settingslib/spaprivileged/model/app/AppListModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settingslib/spaprivileged/model/app/AppListModel;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/settingslib/spaprivileged/model/app/AppListModel;Landroidx/compose/runtime/State;Lkotlin/jvm/functions/Function2;FLjava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListKt$AppListWidget$2;->$this_AppListWidget:Lcom/android/settingslib/spaprivileged/model/app/AppListModel;

    iput-object p2, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListKt$AppListWidget$2;->$appListData:Landroidx/compose/runtime/State;

    iput-object p3, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListKt$AppListWidget$2;->$header:Lkotlin/jvm/functions/Function2;

    iput p4, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListKt$AppListWidget$2;->$bottomPadding:F

    iput-object p5, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListKt$AppListWidget$2;->$noItemMessage:Ljava/lang/String;

    iput p6, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListKt$AppListWidget$2;->$$changed:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget-object v0, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListKt$AppListWidget$2;->$this_AppListWidget:Lcom/android/settingslib/spaprivileged/model/app/AppListModel;

    iget-object v1, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListKt$AppListWidget$2;->$appListData:Landroidx/compose/runtime/State;

    iget-object v2, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListKt$AppListWidget$2;->$header:Lkotlin/jvm/functions/Function2;

    iget v3, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListKt$AppListWidget$2;->$bottomPadding:F

    iget-object v4, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListKt$AppListWidget$2;->$noItemMessage:Ljava/lang/String;

    iget p0, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListKt$AppListWidget$2;->$$changed:I

    or-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v6

    invoke-static/range {v0 .. v6}, Lcom/android/settingslib/spaprivileged/template/app/AppListKt;->AppListWidget--jt2gSs(Lcom/android/settingslib/spaprivileged/model/app/AppListModel;Landroidx/compose/runtime/State;Lkotlin/jvm/functions/Function2;FLjava/lang/String;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
