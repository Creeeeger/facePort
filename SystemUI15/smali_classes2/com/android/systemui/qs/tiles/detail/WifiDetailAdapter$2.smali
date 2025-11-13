.class public final Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter$2;->this$0:Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter$2;->this$0:Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mConnected:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter$2;->this$0:Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->mAvailable:Landroid/view/ViewGroup;

    const v0, 0x7f0a0135

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
