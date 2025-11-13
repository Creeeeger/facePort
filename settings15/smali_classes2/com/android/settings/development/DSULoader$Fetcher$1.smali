.class public final Lcom/android/settings/development/DSULoader$Fetcher$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/settings/development/DSULoader$1;


# direct methods
.method public constructor <init>(Lcom/android/settings/development/DSULoader$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/development/DSULoader$Fetcher$1;->this$1:Lcom/android/settings/development/DSULoader$1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/development/DSULoader$Fetcher$1;->this$1:Lcom/android/settings/development/DSULoader$1;

    iget-object v0, v0, Lcom/android/settings/development/DSULoader$1;->this$0:Lcom/android/settings/development/DSULoader;

    iget-object v0, v0, Lcom/android/settings/development/DSULoader;->mAdapter:Lcom/android/settings/development/DSULoader$DSUPackageListAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    iget-object v0, p0, Lcom/android/settings/development/DSULoader$Fetcher$1;->this$1:Lcom/android/settings/development/DSULoader$1;

    iget-object v0, v0, Lcom/android/settings/development/DSULoader$1;->this$0:Lcom/android/settings/development/DSULoader;

    iget-object v1, v0, Lcom/android/settings/development/DSULoader;->mAdapter:Lcom/android/settings/development/DSULoader$DSUPackageListAdapter;

    iget-object v0, v0, Lcom/android/settings/development/DSULoader;->mDSUList:Ljava/util/List;

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    iget-object p0, p0, Lcom/android/settings/development/DSULoader$Fetcher$1;->this$1:Lcom/android/settings/development/DSULoader$1;

    iget-object p0, p0, Lcom/android/settings/development/DSULoader$1;->this$0:Lcom/android/settings/development/DSULoader;

    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/development/DSULoader;->mAdapter:Lcom/android/settings/development/DSULoader$DSUPackageListAdapter;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/settings/development/DSULoader$DSUPackageListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/ListView;->getWidth()I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object p0, p0, Lcom/android/settings/development/DSULoader;->mAdapter:Lcom/android/settings/development/DSULoader$DSUPackageListAdapter;

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    mul-int/2addr p0, v1

    iput p0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "resizeListView height="

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "DSULOADER"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Landroid/widget/ListView;->requestLayout()V

    return-void
.end method
