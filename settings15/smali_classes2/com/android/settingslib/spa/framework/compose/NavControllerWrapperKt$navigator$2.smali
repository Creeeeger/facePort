.class final Lcom/android/settingslib/spa/framework/compose/NavControllerWrapperKt$navigator$2;
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
.field final synthetic $navController:Lcom/android/settingslib/spa/framework/compose/NavControllerWrapper;

.field final synthetic $popUpCurrent:Z

.field final synthetic $route:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/spa/framework/compose/NavControllerWrapper;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/spa/framework/compose/NavControllerWrapperKt$navigator$2;->$navController:Lcom/android/settingslib/spa/framework/compose/NavControllerWrapper;

    iput-object p2, p0, Lcom/android/settingslib/spa/framework/compose/NavControllerWrapperKt$navigator$2;->$route:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/settingslib/spa/framework/compose/NavControllerWrapperKt$navigator$2;->$popUpCurrent:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/spa/framework/compose/NavControllerWrapperKt$navigator$2;->$navController:Lcom/android/settingslib/spa/framework/compose/NavControllerWrapper;

    iget-object v1, p0, Lcom/android/settingslib/spa/framework/compose/NavControllerWrapperKt$navigator$2;->$route:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/android/settingslib/spa/framework/compose/NavControllerWrapperKt$navigator$2;->$popUpCurrent:Z

    invoke-interface {v0, v1, p0}, Lcom/android/settingslib/spa/framework/compose/NavControllerWrapper;->navigate(Ljava/lang/String;Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
