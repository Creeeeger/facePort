.class public final Lcom/android/systemui/common/ui/compose/SelectedUserAwareInputConnectionKt$SelectedUserAwareInputConnection$1$1$modifiedRequest$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/compose/ui/platform/PlatformTextInputMethodRequest;


# instance fields
.field public final synthetic $request:Landroidx/compose/ui/platform/PlatformTextInputMethodRequest;

.field public final synthetic $selectedUserId:I


# direct methods
.method public constructor <init>(Landroidx/compose/ui/platform/PlatformTextInputMethodRequest;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/common/ui/compose/SelectedUserAwareInputConnectionKt$SelectedUserAwareInputConnection$1$1$modifiedRequest$1;->$request:Landroidx/compose/ui/platform/PlatformTextInputMethodRequest;

    iput p2, p0, Lcom/android/systemui/common/ui/compose/SelectedUserAwareInputConnectionKt$SelectedUserAwareInputConnection$1$1$modifiedRequest$1;->$selectedUserId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/common/ui/compose/SelectedUserAwareInputConnectionKt$SelectedUserAwareInputConnection$1$1$modifiedRequest$1;->$request:Landroidx/compose/ui/platform/PlatformTextInputMethodRequest;

    invoke-interface {v0, p1}, Landroidx/compose/ui/platform/PlatformTextInputMethodRequest;->createInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    iget p0, p0, Lcom/android/systemui/common/ui/compose/SelectedUserAwareInputConnectionKt$SelectedUserAwareInputConnection$1$1$modifiedRequest$1;->$selectedUserId:I

    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    iput-object p0, p1, Landroid/view/inputmethod/EditorInfo;->targetInputMethodUser:Landroid/os/UserHandle;

    return-object v0
.end method
