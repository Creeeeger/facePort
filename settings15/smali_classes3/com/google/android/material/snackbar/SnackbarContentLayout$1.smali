.class public final Lcom/google/android/material/snackbar/SnackbarContentLayout$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/snackbar/SnackbarContentLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/material/snackbar/SnackbarContentLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout$1;->this$0:Lcom/google/android/material/snackbar/SnackbarContentLayout;

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout$1;->this$0:Lcom/google/android/material/snackbar/SnackbarContentLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout$1;->this$0:Lcom/google/android/material/snackbar/SnackbarContentLayout;

    iget-object v1, v0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->mSnackBarContentLayout:Lcom/google/android/material/snackbar/SnackbarContentLayout;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->actionView:Landroid/widget/Button;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout$1;->this$0:Lcom/google/android/material/snackbar/SnackbarContentLayout;

    iget-object v0, v0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->mSnackBarContentLayout:Lcom/google/android/material/snackbar/SnackbarContentLayout;

    new-instance v1, Lcom/google/android/material/snackbar/SnackbarContentLayout$1$1;

    invoke-direct {v1, p0}, Lcom/google/android/material/snackbar/SnackbarContentLayout$1$1;-><init>(Lcom/google/android/material/snackbar/SnackbarContentLayout$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
