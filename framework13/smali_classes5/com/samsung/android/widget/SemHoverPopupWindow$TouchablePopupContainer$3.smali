.class Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer$3;
.super Ljava/lang/Object;
.source "SemHoverPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    .line 1793
    iput-object p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer$3;->this$1:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 1

    .line 1795
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer$3;->this$1:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->dismiss()V

    .line 1796
    return-void
.end method
