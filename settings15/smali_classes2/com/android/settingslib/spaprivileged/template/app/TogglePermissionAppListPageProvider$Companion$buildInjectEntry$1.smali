.class final Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListPageProvider$Companion$buildInjectEntry$1;
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u000b\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/os/Bundle;",
        "invoke",
        "(Landroid/os/Bundle;Landroidx/compose/runtime/Composer;I)V"
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
.field final synthetic $listModelSupplier:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field final synthetic $permissionType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p2, p0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListPageProvider$Companion$buildInjectEntry$1;->$listModelSupplier:Lkotlin/jvm/functions/Function1;

    iput-object p1, p0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListPageProvider$Companion$buildInjectEntry$1;->$permissionType:Ljava/lang/String;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/os/Bundle;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object p1, p0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListPageProvider$Companion$buildInjectEntry$1;->$listModelSupplier:Lkotlin/jvm/functions/Function1;

    invoke-static {p1, p2}, Lcom/android/settingslib/spa/framework/compose/RuntimeUtilsKt;->rememberContext(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;

    new-instance p3, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListPageProvider$Companion$buildInjectEntry$1$1;

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListPageProvider$Companion$buildInjectEntry$1;->$permissionType:Ljava/lang/String;

    invoke-direct {p3, p1, p2, p0}, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListPageProvider$Companion$buildInjectEntry$1$1;-><init>(Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const/4 p0, 0x2

    const/4 p1, 0x0

    invoke-static {p3, p1, p2, p1, p0}, Lcom/android/settingslib/spa/widget/preference/PreferenceKt;->Preference(Lcom/android/settingslib/spa/widget/preference/PreferenceModel;ZLandroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
