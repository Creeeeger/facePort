.class public final Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter$2;->this$0:Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter$2;->this$0:Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter;->mMenuOptions:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter;->mDNDActivationItems:Lcom/android/systemui/qs/DNDDetailItems;

    iget-object p0, p0, Lcom/android/systemui/qs/DNDDetailItems;->mAdapter:Lcom/android/systemui/qs/DNDDetailItems$Adapter;

    invoke-virtual {p0}, Lcom/android/systemui/qs/DNDDetailItems$Adapter;->getCount()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
