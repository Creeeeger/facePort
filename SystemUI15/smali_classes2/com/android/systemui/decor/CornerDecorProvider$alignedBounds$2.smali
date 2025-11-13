.class final Lcom/android/systemui/decor/CornerDecorProvider$alignedBounds$2;
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
.field final synthetic this$0:Lcom/android/systemui/decor/CornerDecorProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/decor/CornerDecorProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/decor/CornerDecorProvider$alignedBounds$2;->this$0:Lcom/android/systemui/decor/CornerDecorProvider;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/decor/CornerDecorProvider$alignedBounds$2;->this$0:Lcom/android/systemui/decor/CornerDecorProvider;

    invoke-virtual {v0}, Lcom/android/systemui/decor/CornerDecorProvider;->getAlignedBound1()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/decor/CornerDecorProvider$alignedBounds$2;->this$0:Lcom/android/systemui/decor/CornerDecorProvider;

    invoke-virtual {p0}, Lcom/android/systemui/decor/CornerDecorProvider;->getAlignedBound2()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
