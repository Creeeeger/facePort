.class public final Lcom/android/systemui/media/MediaOutputHelper$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/tiles/detail/MediaOutputDetailAdapter$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/MediaOutputHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/MediaOutputHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/MediaOutputHelper$1;->this$0:Lcom/android/systemui/media/MediaOutputHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismissRequested()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaOutputHelper$1;->this$0:Lcom/android/systemui/media/MediaOutputHelper;

    iget-object p0, p0, Lcom/android/systemui/media/MediaOutputHelper;->qsDetailController:Lcom/android/systemui/qs/SecQSDetailController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSDetailController;->closeDetail()V

    return-void
.end method
