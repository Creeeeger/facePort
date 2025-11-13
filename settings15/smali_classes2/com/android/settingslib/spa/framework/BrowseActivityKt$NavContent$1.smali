.class final Lcom/android/settingslib/spa/framework/BrowseActivityKt$NavContent$1;
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
        "Landroidx/navigation/NavGraphBuilder;",
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
.field final synthetic $allProvider:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/android/settingslib/spa/framework/common/SettingsPageProvider;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $content:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;Lkotlin/jvm/functions/Function3;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/spa/framework/BrowseActivityKt$NavContent$1;->$allProvider:Ljava/util/Collection;

    iput-object p2, p0, Lcom/android/settingslib/spa/framework/BrowseActivityKt$NavContent$1;->$content:Lkotlin/jvm/functions/Function3;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    check-cast p1, Landroidx/navigation/NavGraphBuilder;

    const-string v0, "$this$NavHost"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v8, Lcom/android/settingslib/spa/framework/ComposableSingletons$BrowseActivityKt;->lambda-1:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const/4 v6, 0x0

    const/16 v9, 0xfe

    const-string v1, "NULL"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v9}, Landroidx/navigation/compose/NavGraphBuilderKt;->composable$default(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    iget-object v0, p0, Lcom/android/settingslib/spa/framework/BrowseActivityKt$NavContent$1;->$allProvider:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/spa/framework/common/SettingsPageProvider;

    new-instance v2, Lcom/android/settingslib/spa/framework/BrowseActivityKt$NavContent$1$1;

    iget-object v3, p0, Lcom/android/settingslib/spa/framework/BrowseActivityKt$NavContent$1;->$content:Lkotlin/jvm/functions/Function3;

    invoke-direct {v2, v3, v1}, Lcom/android/settingslib/spa/framework/BrowseActivityKt$NavContent$1$1;-><init>(Lkotlin/jvm/functions/Function3;Lcom/android/settingslib/spa/framework/common/SettingsPageProvider;)V

    new-instance v3, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v4, -0x13886839

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5, v2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-interface {v1}, Lcom/android/settingslib/spa/framework/common/SettingsPageProvider;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lcom/android/settingslib/spa/framework/common/SettingsPageProvider;->getParameter()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settingslib/spa/framework/util/ParameterKt;->navRoute(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/android/settingslib/spa/framework/common/SettingsPageProvider$NavType;->$VALUES:[Lcom/android/settingslib/spa/framework/common/SettingsPageProvider$NavType;

    invoke-interface {v1}, Lcom/android/settingslib/spa/framework/common/SettingsPageProvider;->getParameter()Ljava/util/List;

    move-result-object v1

    new-instance v4, Lcom/android/settingslib/spa/framework/BrowseActivityKt$destination$1;

    invoke-direct {v4, v3}, Lcom/android/settingslib/spa/framework/BrowseActivityKt$destination$1;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    new-instance v3, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v6, -0x4695b555

    invoke-direct {v3, v6, v5, v4}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {p1, v2, v1, v3}, Lcom/android/settingslib/spa/framework/compose/AnimatedNavGraphBuilderKt;->animatedComposable$default(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
