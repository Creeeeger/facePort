.class public final Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/SubAppListViewHolder$initAppInfoIcon$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/ViewStub$OnInflateListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/SubAppListViewHolder;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/SubAppListViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/SubAppListViewHolder$initAppInfoIcon$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/SubAppListViewHolder;

    return-void
.end method


# virtual methods
.method public final onInflate(Landroid/view/ViewStub;Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/SubAppListViewHolder$initAppInfoIcon$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/SubAppListViewHolder;

    const v0, 0x7f0a0110

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/SubAppListViewHolder;->appInfoIcon:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/SubAppListViewHolder$initAppInfoIcon$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/SubAppListViewHolder;

    const p1, 0x7f0a10ec

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/SubAppListViewHolder;->verticalDivider:Landroid/view/View;

    return-void
.end method
