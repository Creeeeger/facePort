.class final Landroid/view/inputmethod/InputMethodManager$BindState;
.super Ljava/lang/Object;
.source "InputMethodManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InputMethodManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BindState"
.end annotation


# instance fields
.field final blacklist mBindSequence:I

.field final blacklist mImeId:Ljava/lang/String;

.field final blacklist mImeSession:Landroid/view/inputmethod/IInputMethodSessionInvoker;

.field final blacklist mIsInputMethodSuppressingSpellChecker:Z


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/inputmethod/InputBindResult;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/android/internal/inputmethod/InputBindResult;->method:Lcom/android/internal/inputmethod/IInputMethodSession;

    invoke-static {v0}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->createOrNull(Lcom/android/internal/inputmethod/IInputMethodSession;)Landroid/view/inputmethod/IInputMethodSessionInvoker;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager$BindState;->mImeSession:Landroid/view/inputmethod/IInputMethodSessionInvoker;

    iget-boolean v0, p1, Lcom/android/internal/inputmethod/InputBindResult;->isInputMethodSuppressingSpellChecker:Z

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodManager$BindState;->mIsInputMethodSuppressingSpellChecker:Z

    iget-object v0, p1, Lcom/android/internal/inputmethod/InputBindResult;->id:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager$BindState;->mImeId:Ljava/lang/String;

    iget v0, p1, Lcom/android/internal/inputmethod/InputBindResult;->sequence:I

    iput v0, p0, Landroid/view/inputmethod/InputMethodManager$BindState;->mBindSequence:I

    return-void
.end method
