.class final Landroid/view/inputmethod/ViewFocusParameterInfo;
.super Ljava/lang/Object;
.source "ViewFocusParameterInfo.java"


# instance fields
.field final blacklist mPreviousEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field final blacklist mPreviousSoftInputMode:I

.field final blacklist mPreviousStartInputFlags:I

.field final blacklist mPreviousStartInputReason:I

.field final blacklist mPreviousWindowFlags:I


# direct methods
.method constructor blacklist <init>(Landroid/view/inputmethod/EditorInfo;IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/inputmethod/ViewFocusParameterInfo;->mPreviousEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iput p2, p0, Landroid/view/inputmethod/ViewFocusParameterInfo;->mPreviousStartInputFlags:I

    iput p3, p0, Landroid/view/inputmethod/ViewFocusParameterInfo;->mPreviousStartInputReason:I

    iput p4, p0, Landroid/view/inputmethod/ViewFocusParameterInfo;->mPreviousSoftInputMode:I

    iput p5, p0, Landroid/view/inputmethod/ViewFocusParameterInfo;->mPreviousWindowFlags:I

    return-void
.end method


# virtual methods
.method blacklist sameAs(Landroid/view/inputmethod/EditorInfo;IIII)Z
    .locals 1

    iget v0, p0, Landroid/view/inputmethod/ViewFocusParameterInfo;->mPreviousStartInputFlags:I

    if-ne v0, p2, :cond_1

    iget v0, p0, Landroid/view/inputmethod/ViewFocusParameterInfo;->mPreviousStartInputReason:I

    if-ne v0, p3, :cond_1

    iget v0, p0, Landroid/view/inputmethod/ViewFocusParameterInfo;->mPreviousSoftInputMode:I

    if-ne v0, p4, :cond_1

    iget v0, p0, Landroid/view/inputmethod/ViewFocusParameterInfo;->mPreviousWindowFlags:I

    if-ne v0, p5, :cond_1

    iget-object v0, p0, Landroid/view/inputmethod/ViewFocusParameterInfo;->mPreviousEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroid/view/inputmethod/ViewFocusParameterInfo;->mPreviousEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/inputmethod/ViewFocusParameterInfo;->mPreviousEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {v0, p1}, Landroid/view/inputmethod/EditorInfo;->kindofEquals(Landroid/view/inputmethod/EditorInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
