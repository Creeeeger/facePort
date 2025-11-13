.class public final Lcom/android/systemui/qs/tiles/MediaOutputTile$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/tiles/detail/MediaOutputDetailAdapter$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/MediaOutputTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/MediaOutputTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MediaOutputTile$1;->this$0:Lcom/android/systemui/qs/tiles/MediaOutputTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismissRequested()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MediaOutputTile$1;->this$0:Lcom/android/systemui/qs/tiles/MediaOutputTile;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->showDetail(Z)V

    return-void
.end method
