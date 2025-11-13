.class Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$2;
.super Ljava/lang/Object;
.source "LocaleDragAndDropAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->onBindViewHolder(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

.field final synthetic val$checkbox:Landroid/widget/CheckBox;

.field final synthetic val$dragCell:Lcom/android/settings/localepicker/LocaleDragCell;


# direct methods
.method constructor <init>(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;Lcom/android/settings/localepicker/LocaleDragCell;Landroid/widget/CheckBox;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$2;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    iput-object p2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$2;->val$dragCell:Lcom/android/settings/localepicker/LocaleDragCell;

    iput-object p3, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$2;->val$checkbox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 290
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onClick called, Edit mode = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$2;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-static {v0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->-$$Nest$fgetmEditMode(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LocaleDragAndDropAdapter"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$2;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {p1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->getItemCount()I

    move-result p1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    return-void

    .line 294
    :cond_0
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$2;->val$dragCell:Lcom/android/settings/localepicker/LocaleDragCell;

    .line 295
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 297
    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$2;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-static {v1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->-$$Nest$fgetmEditMode(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 298
    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$2;->val$checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    xor-int/2addr v1, v0

    invoke-virtual {p1, v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->setChecked(Z)V

    .line 299
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$2;->val$checkbox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 300
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$2;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-static {p1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->-$$Nest$fgetmListener(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$OnCheckChangeListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 301
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$2;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-static {p1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->-$$Nest$fgetmListener(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$OnCheckChangeListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$OnCheckChangeListener;->onCheckedChange()V

    .line 303
    :cond_1
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$2;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-static {p1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->-$$Nest$fgetmContext(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 304
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$2;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$2;->val$dragCell:Lcom/android/settings/localepicker/LocaleDragCell;

    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleDragCell;->getPosition()I

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_2
    return-void

    .line 308
    :cond_3
    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$2;->val$dragCell:Lcom/android/settings/localepicker/LocaleDragCell;

    invoke-virtual {v1}, Lcom/android/settings/localepicker/LocaleDragCell;->getPosition()I

    move-result v1

    if-nez v1, :cond_4

    .line 309
    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$2;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v1, v0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->updateLanguageViewState(I)V

    goto :goto_0

    .line 311
    :cond_4
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$2;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->updateLanguageViewState(I)V

    .line 313
    :goto_0
    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$2;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {p0, p1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->updateSelectBoxState(Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    return-void
.end method
