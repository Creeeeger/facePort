.class public Landroid/widget/ImeAwareEditText;
.super Landroid/widget/EditText;
.source "ImeAwareEditText.java"


# instance fields
.field private blacklist mHasPendingShowSoftInputRequest:Z

.field final blacklist mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;


# direct methods
.method public static synthetic blacklist $r8$lambda$niL20ozaIPzxaXBJE8_tVpamRQI(Landroid/widget/ImeAwareEditText;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/ImeAwareEditText;->lambda$new$0()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/widget/ImeAwareEditText$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/widget/ImeAwareEditText$$ExternalSyntheticLambda0;-><init>(Landroid/widget/ImeAwareEditText;)V

    iput-object v0, p0, Landroid/widget/ImeAwareEditText;->mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/widget/ImeAwareEditText$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/widget/ImeAwareEditText$$ExternalSyntheticLambda0;-><init>(Landroid/widget/ImeAwareEditText;)V

    iput-object v0, p0, Landroid/widget/ImeAwareEditText;->mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/widget/ImeAwareEditText$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/widget/ImeAwareEditText$$ExternalSyntheticLambda0;-><init>(Landroid/widget/ImeAwareEditText;)V

    iput-object v0, p0, Landroid/widget/ImeAwareEditText;->mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Landroid/widget/ImeAwareEditText$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/widget/ImeAwareEditText$$ExternalSyntheticLambda0;-><init>(Landroid/widget/ImeAwareEditText;)V

    iput-object v0, p0, Landroid/widget/ImeAwareEditText;->mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic blacklist lambda$new$0()V
    .locals 0

    invoke-direct {p0}, Landroid/widget/ImeAwareEditText;->showSoftInputIfNecessary()V

    return-void
.end method

.method private blacklist showSoftInputIfNecessary()V
    .locals 2

    iget-boolean v0, p0, Landroid/widget/ImeAwareEditText;->mHasPendingShowSoftInputRequest:Z

    if-eqz v0, :cond_0

    nop

    invoke-virtual {p0}, Landroid/widget/ImeAwareEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    iput-boolean v1, p0, Landroid/widget/ImeAwareEditText;->mHasPendingShowSoftInputRequest:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public whitelist onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    iget-boolean v1, p0, Landroid/widget/ImeAwareEditText;->mHasPendingShowSoftInputRequest:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/ImeAwareEditText;->mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/ImeAwareEditText;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Landroid/widget/ImeAwareEditText;->mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/ImeAwareEditText;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-object v0
.end method

.method public blacklist scheduleShowSoftInput()V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/ImeAwareEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->hasActiveInputConnection(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/ImeAwareEditText;->mHasPendingShowSoftInputRequest:Z

    iget-object v2, p0, Landroid/widget/ImeAwareEditText;->mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/widget/ImeAwareEditText;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/ImeAwareEditText;->mHasPendingShowSoftInputRequest:Z

    return-void
.end method
