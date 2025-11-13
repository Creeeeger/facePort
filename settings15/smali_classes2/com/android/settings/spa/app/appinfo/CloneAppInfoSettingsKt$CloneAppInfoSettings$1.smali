.class final Lcom/android/settings/spa/app/appinfo/CloneAppInfoSettingsKt$CloneAppInfoSettings$1;
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
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\u000b\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "(Landroidx/compose/runtime/Composer;I)V"
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
.field final synthetic $packageInfo:Landroid/content/pm/PackageInfo;

.field final synthetic $packageInfoPresenter:Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;


# direct methods
.method public constructor <init>(Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;Landroid/content/pm/PackageInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/CloneAppInfoSettingsKt$CloneAppInfoSettings$1;->$packageInfoPresenter:Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;

    iput-object p2, p0, Lcom/android/settings/spa/app/appinfo/CloneAppInfoSettingsKt$CloneAppInfoSettings$1;->$packageInfo:Landroid/content/pm/PackageInfo;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    and-int/lit8 p2, p2, 0xb

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    move-object p2, p1

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p2, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const p2, 0x575df668

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object p2, p0, Lcom/android/settings/spa/app/appinfo/CloneAppInfoSettingsKt$CloneAppInfoSettings$1;->$packageInfo:Landroid/content/pm/PackageInfo;

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v0, v1, :cond_2

    new-instance v0, Lcom/android/settingslib/spaprivileged/template/app/AppInfoProvider;

    invoke-direct {v0, p2}, Lcom/android/settingslib/spaprivileged/template/app/AppInfoProvider;-><init>(Landroid/content/pm/PackageInfo;)V

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_2
    check-cast v0, Lcom/android/settingslib/spaprivileged/template/app/AppInfoProvider;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/16 v4, 0x230

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/settingslib/spaprivileged/template/app/AppInfoProvider;->AppInfo(ZZLandroidx/compose/runtime/Composer;II)V

    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/CloneAppInfoSettingsKt$CloneAppInfoSettings$1;->$packageInfoPresenter:Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;

    const/16 p2, 0x8

    invoke-static {p0, p1, p2}, Lcom/android/settings/spa/app/appinfo/ClonePageAppButtonsKt;->ClonePageAppButtons(Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;Landroidx/compose/runtime/Composer;I)V

    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
