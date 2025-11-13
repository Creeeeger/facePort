.class public final Lcom/google/android/setupdesign/template/RequireScrollMixin$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/google/android/setupdesign/template/RequireScrollMixin;

.field public final synthetic val$listener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/google/android/setupdesign/template/RequireScrollMixin;Landroid/view/View$OnClickListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin$1;->this$0:Lcom/google/android/setupdesign/template/RequireScrollMixin;

    iput-object p2, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin$1;->val$listener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin$1;->this$0:Lcom/google/android/setupdesign/template/RequireScrollMixin;

    iget-boolean v1, v0, Lcom/google/android/setupdesign/template/RequireScrollMixin;->requiringScrollToBottom:Z

    if-eqz v1, :cond_0

    iget-object p0, v0, Lcom/google/android/setupdesign/template/RequireScrollMixin;->delegate:Lcom/google/android/setupdesign/template/RequireScrollMixin$ScrollHandlingDelegate;

    invoke-interface {p0}, Lcom/google/android/setupdesign/template/RequireScrollMixin$ScrollHandlingDelegate;->pageScrollDown()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin$1;->val$listener:Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method
