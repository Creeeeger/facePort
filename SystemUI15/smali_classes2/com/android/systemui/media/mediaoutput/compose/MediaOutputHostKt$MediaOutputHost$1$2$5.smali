.class final Lcom/android/systemui/media/mediaoutput/compose/MediaOutputHostKt$MediaOutputHost$1$2$5;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic $dismissCallback:Lcom/android/systemui/media/mediaoutput/compose/common/DismissCallback;

.field final synthetic $isSupportMultipleMediaSession$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State;"
        }
    .end annotation
.end field

.field final synthetic $navController:Landroidx/navigation/NavHostController;


# direct methods
.method public constructor <init>(Landroidx/navigation/NavHostController;Landroidx/compose/runtime/State;Lcom/android/systemui/media/mediaoutput/compose/common/DismissCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/NavHostController;",
            "Landroidx/compose/runtime/State;",
            "Lcom/android/systemui/media/mediaoutput/compose/common/DismissCallback;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaOutputHostKt$MediaOutputHost$1$2$5;->$navController:Landroidx/navigation/NavHostController;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaOutputHostKt$MediaOutputHost$1$2$5;->$isSupportMultipleMediaSession$delegate:Landroidx/compose/runtime/State;

    iput-object p3, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaOutputHostKt$MediaOutputHost$1$2$5;->$dismissCallback:Lcom/android/systemui/media/mediaoutput/compose/common/DismissCallback;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Landroidx/navigation/NavGraphBuilder;

    sget-object v0, Lcom/android/systemui/media/mediaoutput/compose/Screen$Phone;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/Screen$Phone;

    iget-object v1, v0, Lcom/android/systemui/media/mediaoutput/compose/Screen;->route:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/systemui/media/mediaoutput/compose/Screen;->navArgument:Ljava/util/List;

    new-instance v2, Lcom/android/systemui/media/mediaoutput/compose/MediaOutputHostKt$MediaOutputHost$1$2$5$1;

    iget-object v3, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaOutputHostKt$MediaOutputHost$1$2$5;->$navController:Landroidx/navigation/NavHostController;

    invoke-direct {v2, v3}, Lcom/android/systemui/media/mediaoutput/compose/MediaOutputHostKt$MediaOutputHost$1$2$5$1;-><init>(Landroidx/navigation/NavHostController;)V

    new-instance v3, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v4, -0x456652a3

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5, v2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    const/16 v2, 0xfc

    invoke-static {p1, v1, v0, v3, v2}, Landroidx/navigation/compose/NavGraphBuilderKt;->composable$default(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    sget-object v0, Lcom/android/systemui/media/mediaoutput/compose/Screen$TV;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/Screen$TV;

    iget-object v1, v0, Lcom/android/systemui/media/mediaoutput/compose/Screen;->route:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/systemui/media/mediaoutput/compose/Screen;->navArgument:Ljava/util/List;

    new-instance v3, Lcom/android/systemui/media/mediaoutput/compose/MediaOutputHostKt$MediaOutputHost$1$2$5$2;

    iget-object v4, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaOutputHostKt$MediaOutputHost$1$2$5;->$navController:Landroidx/navigation/NavHostController;

    invoke-direct {v3, v4}, Lcom/android/systemui/media/mediaoutput/compose/MediaOutputHostKt$MediaOutputHost$1$2$5$2;-><init>(Landroidx/navigation/NavHostController;)V

    new-instance v4, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v6, -0x2094b12c

    invoke-direct {v4, v6, v5, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {p1, v1, v0, v4, v2}, Landroidx/navigation/compose/NavGraphBuilderKt;->composable$default(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    sget-object v0, Lcom/android/systemui/media/mediaoutput/compose/Screen$Selector;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/Screen$Selector;

    iget-object v0, v0, Lcom/android/systemui/media/mediaoutput/compose/Screen;->route:Ljava/lang/String;

    new-instance v1, Lcom/android/systemui/media/mediaoutput/compose/MediaOutputHostKt$MediaOutputHost$1$2$5$3;

    iget-object v2, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaOutputHostKt$MediaOutputHost$1$2$5;->$navController:Landroidx/navigation/NavHostController;

    iget-object v3, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaOutputHostKt$MediaOutputHost$1$2$5;->$isSupportMultipleMediaSession$delegate:Landroidx/compose/runtime/State;

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/media/mediaoutput/compose/MediaOutputHostKt$MediaOutputHost$1$2$5$3;-><init>(Landroidx/navigation/NavHostController;Landroidx/compose/runtime/State;)V

    new-instance v2, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v3, -0x3816d12b

    invoke-direct {v2, v3, v5, v1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    const/4 v1, 0x0

    const/16 v3, 0xfe

    invoke-static {p1, v0, v1, v2, v3}, Landroidx/navigation/compose/NavGraphBuilderKt;->composable$default(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    sget-object v0, Lcom/android/systemui/media/mediaoutput/compose/Screen$SettingHome;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/Screen$SettingHome;

    iget-object v0, v0, Lcom/android/systemui/media/mediaoutput/compose/Screen;->route:Ljava/lang/String;

    new-instance v2, Lcom/android/systemui/media/mediaoutput/compose/MediaOutputHostKt$MediaOutputHost$1$2$5$4;

    iget-object v4, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaOutputHostKt$MediaOutputHost$1$2$5;->$navController:Landroidx/navigation/NavHostController;

    iget-object v6, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaOutputHostKt$MediaOutputHost$1$2$5;->$dismissCallback:Lcom/android/systemui/media/mediaoutput/compose/common/DismissCallback;

    invoke-direct {v2, v4, v6}, Lcom/android/systemui/media/mediaoutput/compose/MediaOutputHostKt$MediaOutputHost$1$2$5$4;-><init>(Landroidx/navigation/NavHostController;Lcom/android/systemui/media/mediaoutput/compose/common/DismissCallback;)V

    new-instance v4, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v6, -0x4f98f12a

    invoke-direct {v4, v6, v5, v2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {p1, v0, v1, v4, v3}, Landroidx/navigation/compose/NavGraphBuilderKt;->composable$default(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    sget-object v0, Lcom/android/systemui/media/mediaoutput/compose/Screen$CastSetting;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/Screen$CastSetting;

    iget-object v0, v0, Lcom/android/systemui/media/mediaoutput/compose/Screen;->route:Ljava/lang/String;

    new-instance v2, Lcom/android/systemui/media/mediaoutput/compose/MediaOutputHostKt$MediaOutputHost$1$2$5$5;

    iget-object v4, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaOutputHostKt$MediaOutputHost$1$2$5;->$navController:Landroidx/navigation/NavHostController;

    invoke-direct {v2, v4}, Lcom/android/systemui/media/mediaoutput/compose/MediaOutputHostKt$MediaOutputHost$1$2$5$5;-><init>(Landroidx/navigation/NavHostController;)V

    new-instance v4, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v6, -0x671b1129

    invoke-direct {v4, v6, v5, v2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {p1, v0, v1, v4, v3}, Landroidx/navigation/compose/NavGraphBuilderKt;->composable$default(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    sget-object v0, Lcom/android/systemui/media/mediaoutput/compose/Screen$LabsHome;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/Screen$LabsHome;

    iget-object v0, v0, Lcom/android/systemui/media/mediaoutput/compose/Screen;->route:Ljava/lang/String;

    new-instance v2, Lcom/android/systemui/media/mediaoutput/compose/MediaOutputHostKt$MediaOutputHost$1$2$5$6;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaOutputHostKt$MediaOutputHost$1$2$5;->$navController:Landroidx/navigation/NavHostController;

    invoke-direct {v2, p0}, Lcom/android/systemui/media/mediaoutput/compose/MediaOutputHostKt$MediaOutputHost$1$2$5$6;-><init>(Landroidx/navigation/NavHostController;)V

    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v4, -0x7e9d3128

    invoke-direct {p0, v4, v5, v2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {p1, v0, v1, p0, v3}, Landroidx/navigation/compose/NavGraphBuilderKt;->composable$default(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
