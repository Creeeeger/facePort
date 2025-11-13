.class Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$1$1;
.super Ljava/lang/Object;
.source "FunctionKeyAppGridView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$1;->onBindViewHolder(Landroidx/apppickerview/widget/AppPickerView$ViewHolder;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$1;

.field final synthetic val$row:Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$AppRow;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$1;Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$AppRow;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$1$1;->this$1:Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$1;

    iput-object p2, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$1$1;->val$row:Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$AppRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 227
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$1$1;->this$1:Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$1;

    iget-object p1, p1, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$1;->this$0:Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$1$1;->val$row:Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$AppRow;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;->savePressActionApp(Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$AppRow;)V

    return-void
.end method
