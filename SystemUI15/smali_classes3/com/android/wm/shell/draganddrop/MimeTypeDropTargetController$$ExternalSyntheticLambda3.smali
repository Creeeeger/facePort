.class public final synthetic Lcom/android/wm/shell/draganddrop/MimeTypeDropTargetController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/draganddrop/MimeTypeDropTargetController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/draganddrop/MimeTypeDropTargetController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/MimeTypeDropTargetController$$ExternalSyntheticLambda3;->f$0:Lcom/android/wm/shell/draganddrop/MimeTypeDropTargetController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/MimeTypeDropTargetController$$ExternalSyntheticLambda3;->f$0:Lcom/android/wm/shell/draganddrop/MimeTypeDropTargetController;

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/MimeTypeDropTargetController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->semForceHideSoftInput()Z

    const-string p0, "DragAndDropController_Mime"

    const-string v0, "Hide the Ime when Drag Layout is shown"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
