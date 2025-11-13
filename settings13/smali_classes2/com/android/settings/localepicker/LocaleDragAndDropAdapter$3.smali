.class Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$3;
.super Ljava/lang/Object;
.source "LocaleDragAndDropAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

    .line 317
    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$3;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    iput-object p2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$3;->val$dragCell:Lcom/android/settings/localepicker/LocaleDragCell;

    iput-object p3, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$3;->val$checkbox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 320
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$3;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-static {p1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->-$$Nest$fgetmSelectMode(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$3;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-static {p1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->-$$Nest$fgetmEditMode(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$3;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {p1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->getItemCount()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    .line 321
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$3;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->updateLanguageViewState(I)V

    .line 322
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$3;->val$dragCell:Lcom/android/settings/localepicker/LocaleDragCell;

    .line 323
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 324
    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$3;->val$checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    xor-int/2addr v1, v0

    invoke-virtual {p1, v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->setChecked(Z)V

    .line 325
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$3;->val$checkbox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 327
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$3;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-static {p1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->-$$Nest$fgetmListener(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$OnCheckChangeListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 328
    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$3;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-static {p0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->-$$Nest$fgetmListener(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$OnCheckChangeListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$OnCheckChangeListener;->onCheckedChange()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
