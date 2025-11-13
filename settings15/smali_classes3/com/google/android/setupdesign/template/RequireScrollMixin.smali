.class public final Lcom/google/android/setupdesign/template/RequireScrollMixin;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/google/android/setupcompat/template/Mixin;


# instance fields
.field public delegate:Lcom/google/android/setupdesign/template/RequireScrollMixin$ScrollHandlingDelegate;

.field public everScrolledToBottom:Z

.field public final handler:Landroid/os/Handler;

.field public listener:Lcom/google/android/setupdesign/template/RequireScrollMixin$OnRequireScrollStateChangedListener;

.field public requiringScrollToBottom:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin;->requiringScrollToBottom:Z

    iput-boolean v0, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin;->everScrolledToBottom:Z

    return-void
.end method


# virtual methods
.method public final notifyScrollabilityChange(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin;->requiringScrollToBottom:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin;->everScrolledToBottom:Z

    if-nez p1, :cond_2

    new-instance p1, Lcom/google/android/setupdesign/template/RequireScrollMixin$5;

    invoke-direct {p1, p0, v1}, Lcom/google/android/setupdesign/template/RequireScrollMixin$5;-><init>(Lcom/google/android/setupdesign/template/RequireScrollMixin;Z)V

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput-boolean v1, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin;->requiringScrollToBottom:Z

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/google/android/setupdesign/template/RequireScrollMixin$5;

    const/4 v2, 0x0

    invoke-direct {p1, p0, v2}, Lcom/google/android/setupdesign/template/RequireScrollMixin$5;-><init>(Lcom/google/android/setupdesign/template/RequireScrollMixin;Z)V

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput-boolean v2, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin;->requiringScrollToBottom:Z

    iput-boolean v1, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin;->everScrolledToBottom:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final requireScrollWithButton(Landroid/content/Context;Lcom/google/android/setupcompat/template/FooterButton;ILandroid/view/View$OnClickListener;)V
    .locals 1

    invoke-virtual {p1, p3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iget-object p3, p2, Lcom/google/android/setupcompat/template/FooterButton;->text:Ljava/lang/CharSequence;

    new-instance v0, Lcom/google/android/setupdesign/template/RequireScrollMixin$1;

    invoke-direct {v0, p0, p4}, Lcom/google/android/setupdesign/template/RequireScrollMixin$1;-><init>(Lcom/google/android/setupdesign/template/RequireScrollMixin;Landroid/view/View$OnClickListener;)V

    iput-object v0, p2, Lcom/google/android/setupcompat/template/FooterButton;->onClickListener:Landroid/view/View$OnClickListener;

    new-instance p4, Lcom/google/android/setupdesign/template/RequireScrollMixin$4;

    invoke-direct {p4, p2, p1, p3}, Lcom/google/android/setupdesign/template/RequireScrollMixin$4;-><init>(Lcom/google/android/setupcompat/template/FooterButton;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    iput-object p4, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin;->listener:Lcom/google/android/setupdesign/template/RequireScrollMixin$OnRequireScrollStateChangedListener;

    iget-object p0, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin;->delegate:Lcom/google/android/setupdesign/template/RequireScrollMixin$ScrollHandlingDelegate;

    invoke-interface {p0}, Lcom/google/android/setupdesign/template/RequireScrollMixin$ScrollHandlingDelegate;->startListening()V

    return-void
.end method
