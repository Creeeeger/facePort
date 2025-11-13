.class final Lcom/android/systemui/media/mediaoutput/compose/MediaOutputHostKt$MediaOutputHost$1$2$5$5$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $navController:Landroidx/navigation/NavHostController;


# direct methods
.method public constructor <init>(Landroidx/navigation/NavHostController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaOutputHostKt$MediaOutputHost$1$2$5$5$1;->$navController:Landroidx/navigation/NavHostController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaOutputHostKt$MediaOutputHost$1$2$5$5$1;->$navController:Landroidx/navigation/NavHostController;

    invoke-virtual {p0}, Landroidx/navigation/NavController;->popBackStack()Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
