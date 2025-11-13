.class Lcom/samsung/android/settings/display/AspectRatioFragment$3$1;
.super Ljava/lang/Object;
.source "AspectRatioFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/AspectRatioFragment$3;->onBindViewHolder(Landroidx/apppickerview/widget/AppPickerView$ViewHolder;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/display/AspectRatioFragment$3;

.field final synthetic val$row:Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/AspectRatioFragment$3;Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;)V
    .locals 0

    .line 554
    iput-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$3$1;->this$1:Lcom/samsung/android/settings/display/AspectRatioFragment$3;

    iput-object p2, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$3$1;->val$row:Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 557
    iget-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$3$1;->this$1:Lcom/samsung/android/settings/display/AspectRatioFragment$3;

    iget-object p1, p1, Lcom/samsung/android/settings/display/AspectRatioFragment$3;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    .line 558
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 559
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/display/AspectRatioFragment$3$1$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/display/AspectRatioFragment$3$1$1;-><init>(Lcom/samsung/android/settings/display/AspectRatioFragment$3$1;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
