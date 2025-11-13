.class public final Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;

.field public final synthetic val$btn:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;Landroid/widget/ImageButton;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$2;->this$0:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;

    iput-object p2, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$2;->val$btn:Landroid/widget/ImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$2;->this$0:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;

    invoke-static {p1}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->access$000(Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_1

    const p2, 0x7f0101fe

    goto :goto_0

    :cond_1
    const p2, 0x7f0101ff

    :goto_0
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$2;->val$btn:Landroid/widget/ImageButton;

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_1
    const/4 p0, 0x0

    return p0
.end method
