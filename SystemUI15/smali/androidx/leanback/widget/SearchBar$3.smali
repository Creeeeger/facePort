.class public final Landroidx/leanback/widget/SearchBar$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic this$0:Landroidx/leanback/widget/SearchBar;

.field public final synthetic val$mOnTextChangedRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/SearchBar;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/leanback/widget/SearchBar$3;->this$0:Landroidx/leanback/widget/SearchBar;

    iput-object p2, p0, Landroidx/leanback/widget/SearchBar$3;->val$mOnTextChangedRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-object p1, p0, Landroidx/leanback/widget/SearchBar$3;->this$0:Landroidx/leanback/widget/SearchBar;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Landroidx/leanback/widget/SearchBar;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Landroidx/leanback/widget/SearchBar$3;->val$mOnTextChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Landroidx/leanback/widget/SearchBar$3;->this$0:Landroidx/leanback/widget/SearchBar;

    iget-object p1, p1, Landroidx/leanback/widget/SearchBar;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Landroidx/leanback/widget/SearchBar$3;->val$mOnTextChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
