.class final Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$1$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
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

    iput-object p1, p0, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$1$2$1;->$uriInit:Landroid/net/Uri;

    iput-object p2, p0, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$1$2$1;->$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$1$2$1;->$navController:Lcom/android/settingslib/spa/framework/compose/NavControllerWrapper;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$1$2$1;->$uriInit:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$1$2$1;->$context:Landroid/content/Context;

    const-string v2, "uri"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$1$2$1;->$navController:Lcom/android/settingslib/spa/framework/compose/NavControllerWrapper;

    invoke-interface {p0}, Lcom/android/settingslib/spa/framework/compose/NavControllerWrapper;->navigateBack()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
