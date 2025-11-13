.class public final Lcom/android/wm/shell/windowdecor/DexWindowDecoration$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/windowdecor/DexWindowDecoration;

.field public final synthetic val$mainLayout:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/windowdecor/DexWindowDecoration;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/DexWindowDecoration$1;->this$0:Lcom/android/wm/shell/windowdecor/DexWindowDecoration;

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/DexWindowDecoration$1;->val$mainLayout:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/DexWindowDecoration$1;->this$0:Lcom/android/wm/shell/windowdecor/DexWindowDecoration;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DexWindowDecoration$1;->val$mainLayout:Landroid/view/View;

    sget v0, Lcom/android/wm/shell/windowdecor/DexWindowDecoration;->$r8$clinit:I

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/windowdecor/DexWindowDecoration;->showRestartSnackbar(Landroid/view/View;)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
