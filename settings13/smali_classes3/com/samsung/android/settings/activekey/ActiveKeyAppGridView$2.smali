.class Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$2;
.super Ljava/lang/Object;
.source "ActiveKeyAppGridView.java"

# interfaces
.implements Landroidx/apppickerview/widget/AppPickerView$OnBindListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->setupOnBindListener(Landroidx/apppickerview/widget/AppPickerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)V
    .locals 0

    .line 392
    iput-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$2;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/apppickerview/widget/AppPickerView$ViewHolder;ILjava/lang/String;)V
    .locals 2

    .line 395
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$2;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    invoke-static {v0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->-$$Nest$fgetmAppRows(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-ge p2, v0, :cond_3

    .line 396
    iget-object p2, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$2;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    invoke-static {p2}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->-$$Nest$fgetmAppRows(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 397
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "skipped unexpected package : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActiveKeyAppGridView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 400
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$2;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    invoke-static {p2}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->-$$Nest$fgetmAppRows(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppRow;

    .line 401
    iget v0, p2, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppRow;->mIcon:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 402
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getAppIcon()Landroid/widget/ImageView;

    move-result-object v0

    iget v1, p2, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppRow;->mIcon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 404
    :cond_1
    iget-boolean v0, p2, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppRow;->mState:Z

    if-eqz v0, :cond_2

    .line 405
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 406
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 408
    :cond_2
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 409
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 411
    :goto_0
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getItem()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$2$1;

    invoke-direct {v0, p0, p3, p2}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$2$1;-><init>(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$2;Ljava/lang/String;Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppRow;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void
.end method
