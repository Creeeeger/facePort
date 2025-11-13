.class public final Lcom/android/systemui/qs/QSDetailItems$Adapter$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$1:Lcom/android/systemui/qs/QSDetailItems$Adapter;

.field public final synthetic val$item:Lcom/android/systemui/qs/QSDetailItems$Item;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSDetailItems$Adapter;Lcom/android/systemui/qs/QSDetailItems$Item;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter$1;->this$1:Lcom/android/systemui/qs/QSDetailItems$Adapter;

    iput-object p2, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter$1;->val$item:Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter$1;->this$1:Lcom/android/systemui/qs/QSDetailItems$Adapter;

    iget-object v0, v0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    iget-object v0, v0, Lcom/android/systemui/qs/QSDetailItems;->mCallback:Lcom/android/systemui/qs/QSDetailItems$Callback;

    if-eqz v0, :cond_1

    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter$1;->val$item:Lcom/android/systemui/qs/QSDetailItems$Item;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSDetailItems$Item;->isClickable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter$1;->this$1:Lcom/android/systemui/qs/QSDetailItems$Adapter;

    iget-object v0, v0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060681

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter$1;->this$1:Lcom/android/systemui/qs/QSDetailItems$Adapter;

    iget-object v0, v0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    iget-object v0, v0, Lcom/android/systemui/qs/QSDetailItems;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter$1;->this$1:Lcom/android/systemui/qs/QSDetailItems$Adapter;

    iget-object p1, p1, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    iget-object p1, p1, Lcom/android/systemui/qs/QSDetailItems;->mCallback:Lcom/android/systemui/qs/QSDetailItems$Callback;

    iget-object p0, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter$1;->val$item:Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-interface {p1, p0}, Lcom/android/systemui/qs/QSDetailItems$Callback;->onDetailItemClick(Lcom/android/systemui/qs/QSDetailItems$Item;)V

    :cond_1
    return-void
.end method
