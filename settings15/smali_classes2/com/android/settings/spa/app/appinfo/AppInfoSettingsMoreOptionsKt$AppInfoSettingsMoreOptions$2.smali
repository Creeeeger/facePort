.class final Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$AppInfoSettingsMoreOptions$2;
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u000b\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/android/settingslib/spa/widget/scaffold/MoreOptionsScope;",
        "invoke",
        "(Lcom/android/settingslib/spa/widget/scaffold/MoreOptionsScope;Landroidx/compose/runtime/Composer;I)V"
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
.field final synthetic $app:Landroid/content/pm/ApplicationInfo;

.field final synthetic $packageInfoPresenter:Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;

.field final synthetic $restrictedSettingsAllowed$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState;"
        }
    .end annotation
.end field

.field final synthetic $state:Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsState;


# direct methods
.method public constructor <init>(Landroid/content/pm/ApplicationInfo;Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsState;Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$AppInfoSettingsMoreOptions$2;->$app:Landroid/content/pm/ApplicationInfo;

    iput-object p2, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$AppInfoSettingsMoreOptions$2;->$state:Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsState;

    iput-object p3, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$AppInfoSettingsMoreOptions$2;->$packageInfoPresenter:Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;

    iput-object p4, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$AppInfoSettingsMoreOptions$2;->$restrictedSettingsAllowed$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    check-cast p1, Lcom/android/settingslib/spa/widget/scaffold/MoreOptionsScope;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    const-string v0, "$this$MoreOptionsAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v0, p3, 0xe

    const/4 v1, 0x4

    if-nez v0, :cond_1

    move-object v0, p2

    check-cast v0, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr p3, v0

    :cond_1
    and-int/lit8 v0, p3, 0x5b

    const/16 v2, 0x12

    if-ne v0, v2, :cond_3

    move-object v0, p2

    check-cast v0, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_2

    :cond_3
    :goto_1
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    new-instance v8, Lcom/android/settingslib/spaprivileged/model/enterprise/Restrictions;

    iget-object v0, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$AppInfoSettingsMoreOptions$2;->$app:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lcom/android/settingslib/spaprivileged/model/app/ApplicationInfosKt;->getUserId(Landroid/content/pm/ApplicationInfo;)I

    move-result v0

    const-string v2, "no_control_apps"

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v8, v0, v2, v1}, Lcom/android/settingslib/spaprivileged/model/enterprise/Restrictions;-><init>(ILjava/util/List;I)V

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x19bdbf52

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object v0, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$AppInfoSettingsMoreOptions$2;->$state:Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsState;

    iget-boolean v0, v0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsState;->shownUninstallUpdates:Z

    if-eqz v0, :cond_4

    const v0, 0x7f140367

    invoke-static {p2, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$AppInfoSettingsMoreOptions$2$1;

    iget-object v0, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$AppInfoSettingsMoreOptions$2;->$packageInfoPresenter:Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;

    invoke-direct {v4, v0}, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$AppInfoSettingsMoreOptions$2$1;-><init>(Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;)V

    and-int/lit8 v0, p3, 0xe

    or-int/lit16 v6, v0, 0x1000

    const/4 v7, 0x2

    const/4 v2, 0x0

    move-object v0, p1

    move-object v3, v8

    move-object v5, p2

    invoke-static/range {v0 .. v7}, Lcom/android/settingslib/spaprivileged/template/scaffold/RestrictedMenuItemKt;->RestrictedMenuItem(Lcom/android/settingslib/spa/widget/scaffold/MoreOptionsScope;Ljava/lang/String;ZLcom/android/settingslib/spaprivileged/model/enterprise/Restrictions;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    :cond_4
    const/4 v9, 0x0

    invoke-virtual {p2, v9}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v0, 0x19bdc086

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object v0, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$AppInfoSettingsMoreOptions$2;->$state:Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsState;

    iget-boolean v0, v0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsState;->shownUninstallForAllUsers:Z

    if-eqz v0, :cond_5

    const v0, 0x7f143027

    invoke-static {p2, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$AppInfoSettingsMoreOptions$2$2;

    iget-object v0, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$AppInfoSettingsMoreOptions$2;->$packageInfoPresenter:Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;

    invoke-direct {v4, v0}, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$AppInfoSettingsMoreOptions$2$2;-><init>(Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;)V

    and-int/lit8 v0, p3, 0xe

    or-int/lit16 v6, v0, 0x1000

    const/4 v7, 0x2

    const/4 v2, 0x0

    move-object v0, p1

    move-object v3, v8

    move-object v5, p2

    invoke-static/range {v0 .. v7}, Lcom/android/settingslib/spaprivileged/template/scaffold/RestrictedMenuItemKt;->RestrictedMenuItem(Lcom/android/settingslib/spa/widget/scaffold/MoreOptionsScope;Ljava/lang/String;ZLcom/android/settingslib/spaprivileged/model/enterprise/Restrictions;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    :cond_5
    invoke-virtual {p2, v9}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    iget-object v0, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$AppInfoSettingsMoreOptions$2;->$state:Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsState;

    iget-boolean v0, v0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsState;->shouldShowAccessRestrictedSettings:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$AppInfoSettingsMoreOptions$2;->$restrictedSettingsAllowed$delegate:Landroidx/compose/runtime/MutableState;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_6

    const v0, 0x7f1403aa

    invoke-static {p2, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$AppInfoSettingsMoreOptions$2$3;

    iget-object v0, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$AppInfoSettingsMoreOptions$2;->$app:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$AppInfoSettingsMoreOptions$2;->$packageInfoPresenter:Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;

    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$AppInfoSettingsMoreOptions$2;->$restrictedSettingsAllowed$delegate:Landroidx/compose/runtime/MutableState;

    invoke-direct {v3, v0, v2, p0}, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$AppInfoSettingsMoreOptions$2$3;-><init>(Landroid/content/pm/ApplicationInfo;Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;Landroidx/compose/runtime/MutableState;)V

    shl-int/lit8 p0, p3, 0x9

    and-int/lit16 v5, p0, 0x1c00

    const/4 v6, 0x2

    const/4 v2, 0x0

    move-object v0, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/settingslib/spa/widget/scaffold/MoreOptionsScope;->MenuItem(Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    :cond_6
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
