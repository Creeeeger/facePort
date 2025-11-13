.class public final Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

.field public final synthetic val$checkbox:Landroid/widget/CheckBox;

.field public final synthetic val$dragCell:Lcom/android/settings/localepicker/LocaleDragCell;


# direct methods
.method public constructor <init>(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;Lcom/android/settings/localepicker/LocaleDragCell;Landroid/widget/CheckBox;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$2;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    iput-object p2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$2;->val$dragCell:Lcom/android/settings/localepicker/LocaleDragCell;

    iput-object p3, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$2;->val$checkbox:Landroid/widget/CheckBox;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onClick called, Edit mode = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$2;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    iget-boolean v0, v0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mEditMode:Z

    const-string v1, "LocaleDragAndDropAdapter"

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$2;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {p1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->getItemCount()I

    move-result p1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$2;->val$dragCell:Lcom/android/settings/localepicker/LocaleDragCell;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$2;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    iget-boolean v2, v1, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mEditMode:Z

    if-eqz v2, :cond_3

    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$2;->val$checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    xor-int/2addr v1, v0

    invoke-virtual {p1, v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->setChecked(Z)V

    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$2;->val$checkbox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$2;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    iget-object p1, p1, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mListener:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$OnCheckChangeListener;

    if-eqz p1, :cond_1

    check-cast p1, Lcom/android/settings/localepicker/LocaleListEditor;

    invoke-virtual {p1}, Lcom/android/settings/localepicker/LocaleListEditor;->onCheckedChange()V

    :cond_1
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$2;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    iget-object p1, p1, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$2;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$2;->val$dragCell:Lcom/android/settings/localepicker/LocaleDragCell;

    iget p0, p0, Lcom/android/settings/localepicker/LocaleDragCell;->mPosition:I

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_2
    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$2;->val$dragCell:Lcom/android/settings/localepicker/LocaleDragCell;

    iget v2, v2, Lcom/android/settings/localepicker/LocaleDragCell;->mPosition:I

    if-nez v2, :cond_4

    invoke-virtual {v1, v0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->updateLanguageViewState(I)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->updateLanguageViewState(I)V

    :goto_0
    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$2;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {p0, p1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->updateSelectBoxState(Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    return-void
.end method
