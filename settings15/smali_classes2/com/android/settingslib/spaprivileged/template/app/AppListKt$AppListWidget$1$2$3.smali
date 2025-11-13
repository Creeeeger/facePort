.class final Lcom/android/settingslib/spaprivileged/template/app/AppListKt$AppListWidget$1$2$3;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function4;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\u0008\u001a\u00020\u0005\"\u0008\u0008\u0000\u0010\u0001*\u00020\u0000*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0003H\u000b\u00a2\u0006\u0004\u0008\u0006\u0010\u0007"
    }
    d2 = {
        "Lcom/android/settingslib/spaprivileged/model/app/AppRecord;",
        "T",
        "Landroidx/compose/foundation/lazy/LazyItemScopeImpl;",
        "",
        "it",
        "",
        "invoke",
        "(Landroidx/compose/foundation/lazy/LazyItemScopeImpl;ILandroidx/compose/runtime/Composer;I)V",
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
.method public constructor <init>(Ljava/util/List;Lcom/android/settingslib/spaprivileged/model/app/AppListModel;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListKt$AppListWidget$1$2$3;->$list:Ljava/util/List;

    iput-object p2, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListKt$AppListWidget$1$2$3;->$this_AppListWidget:Lcom/android/settingslib/spaprivileged/model/app/AppListModel;

    iput p3, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListKt$AppListWidget$1$2$3;->$option:I

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    check-cast p3, Landroidx/compose/runtime/Composer;

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4

    const-string v0, "$this$items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 p1, p4, 0x70

    if-nez p1, :cond_1

    move-object p1, p3

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x20

    goto :goto_0

    :cond_0
    const/16 p1, 0x10

    :goto_0
    or-int/2addr p4, p1

    :cond_1
    and-int/lit16 p1, p4, 0x2d1

    const/16 p4, 0x90

    if-ne p1, p4, :cond_3

    move-object p1, p3

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result p4

    if-nez p4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_3

    :cond_3
    :goto_1
    sget-object p1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    check-cast p3, Landroidx/compose/runtime/ComposerImpl;

    const p1, -0x5a541d4b

    invoke-virtual {p3, p1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object p1, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListKt$AppListWidget$1$2$3;->$list:Ljava/util/List;

    invoke-virtual {p3, p1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result p1

    iget-object p4, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListKt$AppListWidget$1$2$3;->$this_AppListWidget:Lcom/android/settingslib/spaprivileged/model/app/AppListModel;

    iget-object v0, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListKt$AppListWidget$1$2$3;->$list:Ljava/util/List;

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez p1, :cond_4

    if-ne v1, v2, :cond_7

    :cond_4
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/spaprivileged/model/app/AppEntry;

    iget-object p1, p1, Lcom/android/settingslib/spaprivileged/model/app/AppEntry;->record:Lcom/android/settingslib/spaprivileged/model/app/AppRecord;

    invoke-interface {p4, p1}, Lcom/android/settingslib/spaprivileged/model/app/AppListModel;->getGroupTitle(Lcom/android/settingslib/spaprivileged/model/app/AppRecord;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    if-eqz p2, :cond_5

    add-int/lit8 v3, p2, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/spaprivileged/model/app/AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/spaprivileged/model/app/AppEntry;->record:Lcom/android/settingslib/spaprivileged/model/app/AppRecord;

    invoke-interface {p4, v0}, Lcom/android/settingslib/spaprivileged/model/app/AppListModel;->getGroupTitle(Lcom/android/settingslib/spaprivileged/model/app/AppRecord;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_6

    :cond_5
    move-object v1, p1

    :cond_6
    invoke-virtual {p3, v1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_7
    check-cast v1, Ljava/lang/String;

    const/4 p1, 0x0

    invoke-virtual {p3, p1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const p4, -0x5a541cfb

    invoke-virtual {p3, p4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    if-nez v1, :cond_8

    goto :goto_2

    :cond_8
    invoke-static {v1, p3, p1}, Lcom/android/settingslib/spa/widget/ui/CategoryKt;->CategoryTitle(Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    :goto_2
    invoke-virtual {p3, p1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    iget-object p4, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListKt$AppListWidget$1$2$3;->$list:Ljava/util/List;

    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settingslib/spaprivileged/model/app/AppEntry;

    iget-object p4, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListKt$AppListWidget$1$2$3;->$this_AppListWidget:Lcom/android/settingslib/spaprivileged/model/app/AppListModel;

    iget v0, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListKt$AppListWidget$1$2$3;->$option:I

    iget-object v1, p2, Lcom/android/settingslib/spaprivileged/model/app/AppEntry;->record:Lcom/android/settingslib/spaprivileged/model/app/AppRecord;

    invoke-interface {p4, v0, v1, p3}, Lcom/android/settingslib/spaprivileged/model/app/AppListModel;->getSummary(ILcom/android/settingslib/spaprivileged/model/app/AppRecord;Landroidx/compose/runtime/Composer;)Lkotlin/jvm/functions/Function0;

    move-result-object p4

    if-nez p4, :cond_9

    sget-object p4, Lcom/android/settingslib/spaprivileged/template/app/AppListKt$AppListWidget$1$2$3$summary$1;->INSTANCE:Lcom/android/settingslib/spaprivileged/template/app/AppListKt$AppListWidget$1$2$3$summary$1;

    :cond_9
    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListKt$AppListWidget$1$2$3;->$this_AppListWidget:Lcom/android/settingslib/spaprivileged/model/app/AppListModel;

    const v0, -0x5a541c48

    invoke-virtual {p3, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p3, p2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_a

    if-ne v1, v2, :cond_b

    :cond_a
    new-instance v1, Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;

    iget-object v0, p2, Lcom/android/settingslib/spaprivileged/model/app/AppEntry;->record:Lcom/android/settingslib/spaprivileged/model/app/AppRecord;

    iget-object p2, p2, Lcom/android/settingslib/spaprivileged/model/app/AppEntry;->label:Ljava/lang/String;

    invoke-direct {v1, v0, p2, p4}, Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;-><init>(Lcom/android/settingslib/spaprivileged/model/app/AppRecord;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p3, v1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_b
    check-cast v1, Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;

    invoke-virtual {p3, p1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-interface {p0, v1, p3, p1}, Lcom/android/settingslib/spaprivileged/model/app/AppListModel;->AppItem(Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;Landroidx/compose/runtime/Composer;I)V

    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
