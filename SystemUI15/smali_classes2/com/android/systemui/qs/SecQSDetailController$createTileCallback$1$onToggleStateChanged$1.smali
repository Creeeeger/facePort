.class public final Lcom/android/systemui/qs/SecQSDetailController$createTileCallback$1$onToggleStateChanged$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $state:Z

.field public final synthetic this$0:Lcom/android/systemui/qs/SecQSDetailController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/SecQSDetailController;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/SecQSDetailController$createTileCallback$1$onToggleStateChanged$1;->this$0:Lcom/android/systemui/qs/SecQSDetailController;

    iput-boolean p2, p0, Lcom/android/systemui/qs/SecQSDetailController$createTileCallback$1$onToggleStateChanged$1;->$state:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetailController$createTileCallback$1$onToggleStateChanged$1;->this$0:Lcom/android/systemui/qs/SecQSDetailController;

    iget-boolean p0, p0, Lcom/android/systemui/qs/SecQSDetailController$createTileCallback$1$onToggleStateChanged$1;->$state:Z

    iget-object v1, v0, Lcom/android/systemui/qs/SecQSDetailController;->detailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getToggleEnabled()Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v2, v3

    :cond_0
    invoke-static {v0, p0, v2}, Lcom/android/systemui/qs/SecQSDetailController;->access$handleToggleStateChanged(Lcom/android/systemui/qs/SecQSDetailController;ZZ)V

    return-void
.end method
