.class public final Lcom/android/settings/spa/development/UsageStatsPageProvider;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/spa/framework/common/SettingsPageProvider;


# static fields
.field public static final INSTANCE:Lcom/android/settings/spa/development/UsageStatsPageProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/spa/development/UsageStatsPageProvider;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/spa/development/UsageStatsPageProvider;->INSTANCE:Lcom/android/settings/spa/development/UsageStatsPageProvider;

    return-void
.end method


# virtual methods
.method public final Page(Landroid/os/Bundle;Landroidx/compose/runtime/Composer;I)V
    .locals 12

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x219a49b7

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const v0, 0x7f142ec6

    invoke-static {p2, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/settings/spa/development/UsageStatsPageProvider$Page$1;->INSTANCE:Lcom/android/settings/spa/development/UsageStatsPageProvider$Page$1;

    invoke-static {v1, p2}, Lcom/android/settingslib/spa/framework/compose/RuntimeUtilsKt;->rememberContext(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/spaprivileged/model/app/AppListModel;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v10, 0x40

    const/16 v11, 0x1fc

    move-object v9, p2

    invoke-static/range {v0 .. v11}, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt;->AppListPage(Ljava/lang/String;Lcom/android/settingslib/spaprivileged/model/app/AppListModel;ZZZLjava/lang/String;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    :goto_1
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_2

    new-instance v0, Lcom/android/settings/spa/development/UsageStatsPageProvider$Page$2;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/settings/spa/development/UsageStatsPageProvider$Page$2;-><init>(Lcom/android/settings/spa/development/UsageStatsPageProvider;Landroid/os/Bundle;I)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_2
    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    const-string p0, "UsageStats"

    return-object p0
.end method
