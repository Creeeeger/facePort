.class Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$1$1;
.super Ljava/lang/Object;
.source "MouseButtonAppGridView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$1;->onBindViewHolder(Landroidx/apppickerview/widget/AppPickerView$ViewHolder;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$1;

.field final synthetic val$row:Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$AppRow;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$1;Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$AppRow;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$1$1;->this$1:Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$1;

    iput-object p2, p0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$1$1;->val$row:Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$AppRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 157
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$1$1;->this$1:Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$1;

    iget-object p1, p1, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$1;->this$0:Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;

    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$1$1;->val$row:Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$AppRow;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;->savePressActionApp(Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$AppRow;)V

    return-void
.end method
