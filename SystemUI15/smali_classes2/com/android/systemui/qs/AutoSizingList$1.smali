.class public final Lcom/android/systemui/qs/AutoSizingList$1;
.super Landroid/database/DataSetObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/AutoSizingList;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/AutoSizingList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/AutoSizingList$1;->this$0:Lcom/android/systemui/qs/AutoSizingList;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/AutoSizingList$1;->this$0:Lcom/android/systemui/qs/AutoSizingList;

    sget v1, Lcom/android/systemui/qs/AutoSizingList;->$r8$clinit:I

    iget-object v1, v0, Lcom/android/systemui/qs/AutoSizingList;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput v1, v0, Lcom/android/systemui/qs/AutoSizingList;->mCount:I

    iget-object p0, p0, Lcom/android/systemui/qs/AutoSizingList$1;->this$0:Lcom/android/systemui/qs/AutoSizingList;

    iget-object v0, p0, Lcom/android/systemui/qs/AutoSizingList;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/qs/AutoSizingList;->mBindChildren:Lcom/android/systemui/qs/AutoSizingList$$ExternalSyntheticLambda0;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onInvalidated()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/AutoSizingList$1;->this$0:Lcom/android/systemui/qs/AutoSizingList;

    sget v0, Lcom/android/systemui/qs/AutoSizingList;->$r8$clinit:I

    iget-object v0, p0, Lcom/android/systemui/qs/AutoSizingList;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/qs/AutoSizingList;->mBindChildren:Lcom/android/systemui/qs/AutoSizingList$$ExternalSyntheticLambda0;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
