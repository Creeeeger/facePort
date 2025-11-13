.class public final Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment$1;->this$0:Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment;

    return-void
.end method


# virtual methods
.method public final onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result p3

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment$1;->this$0:Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment;

    iput-boolean p2, p3, Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment;->mScrollToBottom:Z

    iget-object p3, p3, Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment;->mAgreeButton:Landroid/widget/Button;

    invoke-virtual {p3, p2}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_0
    return-void
.end method
