.class public final Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

.field public final synthetic val$checkbox:Landroid/widget/CheckBox;

.field public final synthetic val$dragCell:Lcom/android/settings/localepicker/LocaleDragCell;


# direct methods
.method public constructor <init>(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;Lcom/android/settings/localepicker/LocaleDragCell;Landroid/widget/CheckBox;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$3;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    iput-object p2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$3;->val$dragCell:Lcom/android/settings/localepicker/LocaleDragCell;

    iput-object p3, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$3;->val$checkbox:Landroid/widget/CheckBox;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$3;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    iget-boolean v1, v0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mSelectMode:Z

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mEditMode:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$3;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->updateLanguageViewState(I)V

    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$3;->val$dragCell:Lcom/android/settings/localepicker/LocaleDragCell;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    iget-object v2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$3;->val$checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    xor-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$3;->val$checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$3;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mListener:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$OnCheckChangeListener;

    if-eqz p0, :cond_0

    check-cast p0, Lcom/android/settings/localepicker/LocaleListEditor;

    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->onCheckedChange()V

    :cond_0
    const p0, 0xc369

    invoke-virtual {p1, p0}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
