.class public final Landroidx/slice/widget/RemoteInputView$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic this$0:Landroidx/slice/widget/RemoteInputView;


# direct methods
.method public constructor <init>(Landroidx/slice/widget/RemoteInputView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/slice/widget/RemoteInputView$1;->this$0:Landroidx/slice/widget/RemoteInputView;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-nez p3, :cond_1

    const/4 v1, 0x6

    if-eq p2, v1, :cond_0

    const/4 v1, 0x5

    if-eq p2, v1, :cond_0

    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    :cond_0
    move p2, v0

    goto :goto_0

    :cond_1
    move p2, p1

    :goto_0
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sget-object v2, Landroidx/slice/widget/RemoteInputView;->VIEW_TAG:Ljava/lang/Object;

    const/16 v2, 0x17

    if-eq v1, v2, :cond_2

    const/16 v2, 0x3e

    if-eq v1, v2, :cond_2

    const/16 v2, 0x42

    if-eq v1, v2, :cond_2

    const/16 v2, 0xa0

    if-eq v1, v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p3

    if-nez p3, :cond_3

    move p3, v0

    goto :goto_2

    :cond_3
    :goto_1
    move p3, p1

    :goto_2
    if-nez p2, :cond_5

    if-eqz p3, :cond_4

    goto :goto_3

    :cond_4
    return p1

    :cond_5
    :goto_3
    iget-object p1, p0, Landroidx/slice/widget/RemoteInputView$1;->this$0:Landroidx/slice/widget/RemoteInputView;

    iget-object p1, p1, Landroidx/slice/widget/RemoteInputView;->mEditText:Landroidx/slice/widget/RemoteInputView$RemoteEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->length()I

    move-result p1

    if-lez p1, :cond_6

    iget-object p0, p0, Landroidx/slice/widget/RemoteInputView$1;->this$0:Landroidx/slice/widget/RemoteInputView;

    invoke-virtual {p0}, Landroidx/slice/widget/RemoteInputView;->sendRemoteInput()V

    :cond_6
    return v0
.end method
