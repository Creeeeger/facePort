.class public final Lcom/android/wm/shell/common/bubbles/RelativeTouchListener$onTouch$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $v:Landroid/view/View;

.field public final synthetic this$0:Lcom/android/wm/shell/common/bubbles/RelativeTouchListener;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/wm/shell/common/bubbles/RelativeTouchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/common/bubbles/RelativeTouchListener$onTouch$1;->$v:Landroid/view/View;

    iput-object p2, p0, Lcom/android/wm/shell/common/bubbles/RelativeTouchListener$onTouch$1;->this$0:Lcom/android/wm/shell/common/bubbles/RelativeTouchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/common/bubbles/RelativeTouchListener$onTouch$1;->$v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/common/bubbles/RelativeTouchListener$onTouch$1;->this$0:Lcom/android/wm/shell/common/bubbles/RelativeTouchListener;

    iget-object p0, p0, Lcom/android/wm/shell/common/bubbles/RelativeTouchListener$onTouch$1;->$v:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->performLongClick()Z

    move-result p0

    iput-boolean p0, v0, Lcom/android/wm/shell/common/bubbles/RelativeTouchListener;->performedLongClick:Z

    :cond_0
    return-void
.end method
