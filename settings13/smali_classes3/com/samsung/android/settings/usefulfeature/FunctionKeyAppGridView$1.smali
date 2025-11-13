.class Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$1;
.super Ljava/lang/Object;
.source "FunctionKeyAppGridView.java"

# interfaces
.implements Landroidx/apppickerview/widget/AppPickerView$OnBindListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;->setupOnBindListener(Landroidx/apppickerview/widget/AppPickerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$1;->this$0:Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/apppickerview/widget/AppPickerView$ViewHolder;ILjava/lang/String;)V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$1;->this$0:Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;->-$$Nest$fgetmAppRows(Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-ge p2, v0, :cond_3

    .line 209
    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$1;->this$0:Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;

    invoke-static {p2}, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;->-$$Nest$fgetmAppRows(Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 210
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "skipped unexpected package : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FunctionKeyAppGridView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 213
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$1;->this$0:Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;

    invoke-static {p2}, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;->-$$Nest$fgetmAppRows(Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$AppRow;

    .line 214
    iget p3, p2, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$AppRow;->mIcon:I

    const/4 v0, -0x1

    if-eq p3, v0, :cond_1

    .line 215
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getAppIcon()Landroid/widget/ImageView;

    move-result-object p3

    iget v0, p2, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$AppRow;->mIcon:I

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 217
    :cond_1
    iget-boolean p3, p2, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$AppRow;->mState:Z

    if-eqz p3, :cond_2

    .line 218
    iget-object p3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 219
    iget-object p3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p3, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 221
    :cond_2
    iget-object p3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 222
    iget-object p3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 224
    :goto_0
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getItem()Landroid/view/View;

    move-result-object p1

    new-instance p3, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$1$1;

    invoke-direct {p3, p0, p2}, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$1$1;-><init>(Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$1;Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$AppRow;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void
.end method
