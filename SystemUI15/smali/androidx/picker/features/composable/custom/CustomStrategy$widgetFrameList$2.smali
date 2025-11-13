.class final Landroidx/picker/features/composable/custom/CustomStrategy$widgetFrameList$2;
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
.field final synthetic this$0:Landroidx/picker/features/composable/custom/CustomStrategy;


# direct methods
.method public constructor <init>(Landroidx/picker/features/composable/custom/CustomStrategy;)V
    .locals 0

    iput-object p1, p0, Landroidx/picker/features/composable/custom/CustomStrategy$widgetFrameList$2;->this$0:Landroidx/picker/features/composable/custom/CustomStrategy;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Landroidx/picker/features/composable/widget/WidgetFrame;->values()[Landroidx/picker/features/composable/widget/WidgetFrame;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/ArraysKt___ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iget-object p0, p0, Landroidx/picker/features/composable/custom/CustomStrategy$widgetFrameList$2;->this$0:Landroidx/picker/features/composable/custom/CustomStrategy;

    invoke-static {p0}, Landroidx/picker/features/composable/custom/CustomStrategy;->access$getCustomWidgetList(Landroidx/picker/features/composable/custom/CustomStrategy;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
