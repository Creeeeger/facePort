.class public final Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter$1;->this$0:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3

    sget-object v0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onViewAttachedToWindow: v="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter$1;->this$0:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;

    invoke-static {v1}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;->-$$Nest$fgetmViewHost(Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter$1;->this$0:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;

    invoke-static {p0}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;->-$$Nest$mshowTipPopup(Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "HostView is not matched with the view attached, hostView="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter$1;->this$0:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;

    invoke-static {v1}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;->-$$Nest$fgetmViewHost(Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter$1;->this$0:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;

    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;->dismissTipPopup()V

    :goto_0
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    sget-object p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onViewDetachedFromWindow: v="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
