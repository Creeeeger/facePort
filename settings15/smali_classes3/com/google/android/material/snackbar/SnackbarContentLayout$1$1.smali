.class public final Lcom/google/android/material/snackbar/SnackbarContentLayout$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/google/android/material/snackbar/SnackbarContentLayout$1;


# direct methods
.method public constructor <init>(Lcom/google/android/material/snackbar/SnackbarContentLayout$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout$1$1;->this$1:Lcom/google/android/material/snackbar/SnackbarContentLayout$1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    new-instance v0, Landroidx/core/view/SeslTouchTargetDelegate;

    iget-object v1, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout$1$1;->this$1:Lcom/google/android/material/snackbar/SnackbarContentLayout$1;

    iget-object v1, v1, Lcom/google/android/material/snackbar/SnackbarContentLayout$1;->this$0:Lcom/google/android/material/snackbar/SnackbarContentLayout;

    iget-object v1, v1, Lcom/google/android/material/snackbar/SnackbarContentLayout;->mSnackBarContentLayout:Lcom/google/android/material/snackbar/SnackbarContentLayout;

    invoke-direct {v0, v1}, Landroidx/core/view/SeslTouchTargetDelegate;-><init>(Landroid/view/View;)V

    iget-object v1, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout$1$1;->this$1:Lcom/google/android/material/snackbar/SnackbarContentLayout$1;

    iget-object v1, v1, Lcom/google/android/material/snackbar/SnackbarContentLayout$1;->this$0:Lcom/google/android/material/snackbar/SnackbarContentLayout;

    iget-object v1, v1, Lcom/google/android/material/snackbar/SnackbarContentLayout;->actionView:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout$1$1;->this$1:Lcom/google/android/material/snackbar/SnackbarContentLayout$1;

    iget-object v2, v2, Lcom/google/android/material/snackbar/SnackbarContentLayout$1;->this$0:Lcom/google/android/material/snackbar/SnackbarContentLayout;

    iget-object v2, v2, Lcom/google/android/material/snackbar/SnackbarContentLayout;->actionView:Landroid/widget/Button;

    invoke-static {v1, v1, v1, v1}, Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;->of(IIII)Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroidx/core/view/SeslTouchTargetDelegate;->addTouchDelegate(Landroid/view/View;Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;)V

    iget-object p0, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout$1$1;->this$1:Lcom/google/android/material/snackbar/SnackbarContentLayout$1;

    iget-object p0, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout$1;->this$0:Lcom/google/android/material/snackbar/SnackbarContentLayout;

    iget-object p0, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->mSnackBarContentLayout:Lcom/google/android/material/snackbar/SnackbarContentLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    return-void
.end method
