.class public final Lcom/android/systemui/qs/tiles/RecordIssueTile$handleDestroy$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/RecordIssueTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/RecordIssueTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/RecordIssueTile$handleDestroy$1;->this$0:Lcom/android/systemui/qs/tiles/RecordIssueTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/RecordIssueTile$handleDestroy$1;->this$0:Lcom/android/systemui/qs/tiles/RecordIssueTile;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RecordIssueTile;->traceurMessageSender:Lcom/android/systemui/recordissue/TraceurMessageSender;

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    iget-boolean v1, v0, Lcom/android/systemui/recordissue/TraceurMessageSender;->isBound:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/android/systemui/recordissue/TraceurMessageSender;->traceurConnection:Lcom/android/systemui/recordissue/TraceurMessageSender$traceurConnection$1;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    return-void
.end method
