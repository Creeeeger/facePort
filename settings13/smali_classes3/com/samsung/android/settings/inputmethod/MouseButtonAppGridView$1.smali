.class Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$1;
.super Ljava/lang/Object;
.source "MouseButtonAppGridView.java"

# interfaces
.implements Landroidx/apppickerview/widget/AppPickerView$OnBindListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;->setupOnBindListener(Landroidx/apppickerview/widget/AppPickerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$1;->this$0:Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/apppickerview/widget/AppPickerView$ViewHolder;ILjava/lang/String;)V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$1;->this$0:Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;

    invoke-static {v0}, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;->-$$Nest$fgetmAppRows(Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-ge p2, v0, :cond_2

    .line 142
    iget-object p2, p0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$1;->this$0:Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;

    invoke-static {p2}, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;->-$$Nest$fgetmAppRows(Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 143
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "skipped unexpected package : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MouseButtonAppGridView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 146
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$1;->this$0:Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;

    invoke-static {p2}, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;->-$$Nest$fgetmAppRows(Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$AppRow;

    .line 147
    iget-boolean p3, p2, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$AppRow;->mState:Z

    if-eqz p3, :cond_1

    .line 148
    iget-object p3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 149
    iget-object p3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p3, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 151
    :cond_1
    iget-object p3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 152
    iget-object p3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 154
    :goto_0
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getItem()Landroid/view/View;

    move-result-object p1

    new-instance p3, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$1$1;

    invoke-direct {p3, p0, p2}, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$1$1;-><init>(Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$1;Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$AppRow;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method
