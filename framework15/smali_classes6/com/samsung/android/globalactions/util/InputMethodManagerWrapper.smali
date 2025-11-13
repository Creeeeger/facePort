.class public Lcom/samsung/android/globalactions/util/InputMethodManagerWrapper;
.super Ljava/lang/Object;
.source "InputMethodManagerWrapper.java"


# instance fields
.field private final blacklist mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/samsung/android/globalactions/util/InputMethodManagerWrapper;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-void
.end method


# virtual methods
.method public blacklist hideSoftInputFromWindow(Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/InputMethodManagerWrapper;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method
