.class final Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$2;
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
        "\u0000 \n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u000b\u00a2\u0006\u0004\u0008\t\u0010\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "Lcom/android/settingslib/spaprivileged/model/app/AppRecord;",
        "bottomPadding",
        "Landroidx/compose/ui/unit/Dp;",
        "searchQuery",
        "Lkotlin/Function0;",
        "",
        "invoke-kHDZbjc",
        "(FLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V"
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

.field final synthetic $showInstantApps:Z

.field final synthetic $showSystem$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZZLandroidx/compose/runtime/MutableState;Lcom/android/settingslib/spaprivileged/model/app/AppListModel;Lkotlin/jvm/functions/Function2;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$2;->$showInstantApps:Z

    iput-boolean p2, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$2;->$matchAnyUserForAdmin:Z

    iput-object p3, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$2;->$showSystem$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p4, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$2;->$listModel:Lcom/android/settingslib/spaprivileged/model/app/AppListModel;

    iput-object p5, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$2;->$header:Lkotlin/jvm/functions/Function2;

    iput-object p6, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$2;->$noItemMessage:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$2;->$appList:Lkotlin/jvm/functions/Function3;

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    check-cast p1, Landroidx/compose/ui/unit/Dp;

    iget v8, p1, Landroidx/compose/ui/unit/Dp;->value:F

    move-object v4, p2

    check-cast v4, Lkotlin/jvm/functions/Function0;

    check-cast p3, Landroidx/compose/runtime/Composer;

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p1

    const-string p2, "searchQuery"

    invoke-static {v4, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 p2, p1, 0xe

    if-nez p2, :cond_1

    move-object p2, p3

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p2, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x4

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    :goto_0
    or-int/2addr p2, p1

    goto :goto_1

    :cond_1
    move p2, p1

    :goto_1
    and-int/lit8 p1, p1, 0x70

    if-nez p1, :cond_3

    move-object p1, p3

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p1, v4}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x20

    goto :goto_2

    :cond_2
    const/16 p1, 0x10

    :goto_2
    or-int/2addr p2, p1

    :cond_3
    and-int/lit16 p1, p2, 0x2db

    const/16 p2, 0x92

    if-ne p1, p2, :cond_5

    move-object p1, p3

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_4

    :cond_5
    :goto_3
    sget-object p1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    new-instance p1, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$2$1;

    iget-boolean v1, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$2;->$showInstantApps:Z

    iget-boolean v2, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$2;->$matchAnyUserForAdmin:Z

    iget-object v3, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$2;->$showSystem$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v5, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$2;->$listModel:Lcom/android/settingslib/spaprivileged/model/app/AppListModel;

    iget-object v6, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$2;->$header:Lkotlin/jvm/functions/Function2;

    iget-object v7, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$2;->$noItemMessage:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$2;->$appList:Lkotlin/jvm/functions/Function3;

    move-object v0, p1

    invoke-direct/range {v0 .. v9}, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$2$1;-><init>(ZZLandroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function0;Lcom/android/settingslib/spaprivileged/model/app/AppListModel;Lkotlin/jvm/functions/Function2;Ljava/lang/String;FLkotlin/jvm/functions/Function3;)V

    const p0, 0x6071ed53

    invoke-static {p0, p1, p3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object p0

    const/4 p1, 0x6

    invoke-static {p0, p3, p1}, Lcom/android/settingslib/spaprivileged/template/common/UserProfilePagerKt;->UserProfilePager(Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    :goto_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
