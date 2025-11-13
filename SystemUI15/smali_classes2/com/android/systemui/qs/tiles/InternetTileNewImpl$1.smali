.class public final Lcom/android/systemui/qs/tiles/InternetTileNewImpl$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/InternetTileNewImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/InternetTileNewImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/InternetTileNewImpl$1;->this$0:Lcom/android/systemui/qs/tiles/InternetTileNewImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/pipeline/shared/ui/model/InternetTileModel;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/InternetTileNewImpl$1;->this$0:Lcom/android/systemui/qs/tiles/InternetTileNewImpl;

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/InternetTileNewImpl;->model:Lcom/android/systemui/statusbar/pipeline/shared/ui/model/InternetTileModel;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method
