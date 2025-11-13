.class public final Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter$5;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter$5;->this$0:Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter$5;->this$0:Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mInstantHotspotItems:Lcom/android/systemui/qs/QSDetailItems;

    iget-object v0, v0, Lcom/android/systemui/qs/QSDetailItems;->mAdapter:Lcom/android/systemui/qs/QSDetailItems$Adapter;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSDetailItems$Adapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter$5;->this$0:Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mInstantHotspot:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
