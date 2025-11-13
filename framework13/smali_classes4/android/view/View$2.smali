.class Landroid/view/View$2;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/View;->semSetDisplayCutoutBackgroundColor(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/View;

.field final synthetic blacklist val$color:I


# direct methods
.method constructor blacklist <init>(Landroid/view/View;I)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/View;

    .line 16456
    iput-object p1, p0, Landroid/view/View$2;->this$0:Landroid/view/View;

    iput p2, p0, Landroid/view/View$2;->val$color:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 6

    .line 16458
    iget-object v0, p0, Landroid/view/View$2;->this$0:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 16459
    .local v0, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 16460
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v1

    .line 16461
    .local v1, "rootView":Landroid/view/View;
    instance-of v2, v1, Lcom/android/internal/policy/DecorView;

    if-eqz v2, :cond_0

    .line 16462
    move-object v2, v1

    check-cast v2, Lcom/android/internal/policy/DecorView;

    .line 16463
    .local v2, "decorView":Lcom/android/internal/policy/DecorView;
    iget v3, p0, Landroid/view/View$2;->val$color:I

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/DecorView;->setDisplayCutoutBackgroundColor(I)V

    .line 16464
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getTag()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DecorView.setDisplayCutoutBackgroundColor() #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/view/View$2;->val$color:I

    .line 16465
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 16464
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16468
    .end local v1    # "rootView":Landroid/view/View;
    .end local v2    # "decorView":Lcom/android/internal/policy/DecorView;
    :cond_0
    return-void
.end method
