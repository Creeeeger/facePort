.class final Lcom/android/settingslib/spa/framework/BrowseActivityKt$InitialDestination$3$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/navigation/NavOptionsBuilder;",
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
.field final synthetic $this_InitialDestination:Lcom/android/settingslib/spa/framework/compose/NavControllerWrapperImpl;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/spa/framework/compose/NavControllerWrapperImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/spa/framework/BrowseActivityKt$InitialDestination$3$1;->$this_InitialDestination:Lcom/android/settingslib/spa/framework/compose/NavControllerWrapperImpl;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroidx/navigation/NavOptionsBuilder;

    const-string v0, "$this$navigate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Landroidx/navigation/NavGraph;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/settingslib/spa/framework/BrowseActivityKt$InitialDestination$3$1;->$this_InitialDestination:Lcom/android/settingslib/spa/framework/compose/NavControllerWrapperImpl;

    iget-object p0, p0, Lcom/android/settingslib/spa/framework/compose/NavControllerWrapperImpl;->navController:Landroidx/navigation/NavHostController;

    invoke-virtual {p0}, Landroidx/navigation/NavController;->getGraph()Landroidx/navigation/NavGraph;

    move-result-object p0

    invoke-static {p0}, Landroidx/navigation/NavGraph$Companion;->findStartDestination(Landroidx/navigation/NavGraph;)Landroidx/navigation/NavDestination;

    move-result-object p0

    iget p0, p0, Landroidx/navigation/NavDestination;->id:I

    sget-object v0, Lcom/android/settingslib/spa/framework/BrowseActivityKt$InitialDestination$3$1$1;->INSTANCE:Lcom/android/settingslib/spa/framework/BrowseActivityKt$InitialDestination$3$1$1;

    invoke-virtual {p1, p0, v0}, Landroidx/navigation/NavOptionsBuilder;->popUpTo(ILkotlin/jvm/functions/Function1;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
