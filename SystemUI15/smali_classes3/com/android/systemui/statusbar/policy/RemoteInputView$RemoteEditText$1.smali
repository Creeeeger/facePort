.class public final Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText$1;->this$0:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText$1;->this$0:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1, v0}, Landroid/view/inputmethod/InputMethodManager;->viewClicked(Landroid/view/View;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText$1;->this$0:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
