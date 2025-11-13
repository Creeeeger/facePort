.class public final Lcom/android/wm/shell/bubbles/ManageEducationView$show$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $expandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

.field public final synthetic this$0:Lcom/android/wm/shell/bubbles/ManageEducationView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/bubbles/ManageEducationView;Lcom/android/wm/shell/bubbles/BubbleExpandedView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/ManageEducationView$show$1$1;->this$0:Lcom/android/wm/shell/bubbles/ManageEducationView;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/ManageEducationView$show$1$1;->$expandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/ManageEducationView$show$1$1;->this$0:Lcom/android/wm/shell/bubbles/ManageEducationView;

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/ManageEducationView;->hide()V

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/ManageEducationView$show$1$1;->$expandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    const p1, 0x7f0a0b34

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    return-void
.end method
