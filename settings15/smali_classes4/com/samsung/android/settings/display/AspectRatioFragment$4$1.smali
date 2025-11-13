.class public final Lcom/samsung/android/settings/display/AspectRatioFragment$4$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/settings/display/AspectRatioFragment$4;

.field public final synthetic val$row:Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/display/AspectRatioFragment$4;Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$4$1;->this$1:Lcom/samsung/android/settings/display/AspectRatioFragment$4;

    iput-object p2, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$4$1;->val$row:Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$4$1;->this$1:Lcom/samsung/android/settings/display/AspectRatioFragment$4;

    iget-object p1, p1, Lcom/samsung/android/settings/display/AspectRatioFragment$4;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/display/AspectRatioFragment$4$1$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/display/AspectRatioFragment$4$1$1;-><init>(Lcom/samsung/android/settings/display/AspectRatioFragment$4$1;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
