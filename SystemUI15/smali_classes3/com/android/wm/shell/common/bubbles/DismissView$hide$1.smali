.class final Lcom/android/wm/shell/common/bubbles/DismissView$hide$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/common/bubbles/DismissView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/bubbles/DismissView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/common/bubbles/DismissView$hide$1;->this$0:Lcom/android/wm/shell/common/bubbles/DismissView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/common/bubbles/DismissView$hide$1;->this$0:Lcom/android/wm/shell/common/bubbles/DismissView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/wm/shell/common/bubbles/DismissView$hide$1;->this$0:Lcom/android/wm/shell/common/bubbles/DismissView;

    iget-object v0, v0, Lcom/android/wm/shell/common/bubbles/DismissView;->circle:Lcom/android/wm/shell/common/bubbles/DismissCircleView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    iget-object p0, p0, Lcom/android/wm/shell/common/bubbles/DismissView$hide$1;->this$0:Lcom/android/wm/shell/common/bubbles/DismissView;

    iget-object p0, p0, Lcom/android/wm/shell/common/bubbles/DismissView;->circle:Lcom/android/wm/shell/common/bubbles/DismissCircleView;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
