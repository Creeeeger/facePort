.class final Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$1$2;
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
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $navController:Lcom/android/settingslib/spa/framework/compose/NavControllerWrapper;

.field final synthetic $uriInit:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/content/Context;Lcom/android/settingslib/spa/framework/compose/NavControllerWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$1$2;->$uriInit:Landroid/net/Uri;

    iput-object p2, p0, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$1$2;->$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$1$2;->$navController:Lcom/android/settingslib/spa/framework/compose/NavControllerWrapper;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    check-cast p1, Lcom/android/settingslib/spa/widget/scaffold/MoreOptionsScope;

    move-object v9, p2

    check-cast v9, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p2

    const-string p3, "$this$MoreOptionsAction"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 p1, p2, 0x51

    const/16 p2, 0x10

    if-ne p1, p2, :cond_1

    move-object p1, v9

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Lcom/android/settings/network/apn/ComposableSingletons$ApnEditPageProviderKt;->lambda-2:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    new-instance v1, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$1$2$1;

    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$1$2;->$uriInit:Landroid/net/Uri;

    iget-object p2, p0, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$1$2;->$context:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$1$2;->$navController:Lcom/android/settingslib/spa/framework/compose/NavControllerWrapper;

    invoke-direct {v1, p1, p2, p0}, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$1$2$1;-><init>(Landroid/net/Uri;Landroid/content/Context;Lcom/android/settingslib/spa/framework/compose/NavControllerWrapper;)V

    const/4 v10, 0x6

    const/16 v11, 0x1fc

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v0 .. v11}, Landroidx/compose/material3/AndroidMenu_androidKt;->DropdownMenuItem(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/MenuItemColors;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V

    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
