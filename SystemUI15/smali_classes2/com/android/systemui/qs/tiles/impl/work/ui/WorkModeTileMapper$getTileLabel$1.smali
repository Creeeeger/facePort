.class public final Lcom/android/systemui/qs/tiles/impl/work/ui/WorkModeTileMapper$getTileLabel$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/impl/work/ui/WorkModeTileMapper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/impl/work/ui/WorkModeTileMapper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/impl/work/ui/WorkModeTileMapper$getTileLabel$1;->this$0:Lcom/android/systemui/qs/tiles/impl/work/ui/WorkModeTileMapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/work/ui/WorkModeTileMapper$getTileLabel$1;->this$0:Lcom/android/systemui/qs/tiles/impl/work/ui/WorkModeTileMapper;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/work/ui/WorkModeTileMapper;->resources:Landroid/content/res/Resources;

    const v0, 0x7f130f5a

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
