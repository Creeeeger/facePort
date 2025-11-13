.class final Lcom/android/settingslib/spaprivileged/template/app/AppListTwoTargetSwitchItemKt$AppListTwoTargetSwitchItem$1$icon$1;
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003H\u000b\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "Lcom/android/settingslib/spaprivileged/model/app/AppRecord;",
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
.field final synthetic $this_AppListTwoTargetSwitchItem:Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListTwoTargetSwitchItemKt$AppListTwoTargetSwitchItem$1$icon$1;->$this_AppListTwoTargetSwitchItem:Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

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

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListTwoTargetSwitchItemKt$AppListTwoTargetSwitchItem$1$icon$1;->$this_AppListTwoTargetSwitchItem:Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;->record:Lcom/android/settingslib/spaprivileged/model/app/AppRecord;

    invoke-interface {p0}, Lcom/android/settingslib/spaprivileged/model/app/AppRecord;->getApp()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    sget p2, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->appIconItemSize:F

    const/16 v0, 0x8

    invoke-static {p0, p2, p1, v0}, Lcom/android/settingslib/spaprivileged/template/app/AppInfoKt;->AppIcon-ziNgDLE(Landroid/content/pm/ApplicationInfo;FLandroidx/compose/runtime/Composer;I)V

    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
