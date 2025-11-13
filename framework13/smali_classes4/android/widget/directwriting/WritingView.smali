.class public abstract Landroid/widget/directwriting/WritingView;
.super Ljava/lang/Object;
.source "WritingView.java"


# instance fields
.field protected blacklist ic:Landroid/view/inputmethod/InputConnection;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/directwriting/WritingView;->ic:Landroid/view/inputmethod/InputConnection;

    return-void
.end method


# virtual methods
.method abstract blacklist getBaseline()I
.end method

.method abstract blacklist getBottom()I
.end method

.method abstract blacklist getContext()Landroid/content/Context;
.end method

.method abstract blacklist getGlobalVisibleRect(Landroid/graphics/Rect;)V
.end method

.method abstract blacklist getHeight()I
.end method

.method abstract blacklist getImeOptions()I
.end method

.method abstract blacklist getInputType()I
.end method

.method abstract blacklist getLeft()I
.end method

.method abstract blacklist getLineAscent(I)I
.end method

.method abstract blacklist getLineBaseline(I)I
.end method

.method abstract blacklist getLineBottom(I)I
.end method

.method abstract blacklist getLineCount()I
.end method

.method abstract blacklist getLineDescent(I)I
.end method

.method abstract blacklist getLineEnd(I)I
.end method

.method abstract blacklist getLineForOffset(I)I
.end method

.method abstract blacklist getLineHeight()I
.end method

.method abstract blacklist getLineMax(I)F
.end method

.method abstract blacklist getLineStart(I)I
.end method

.method abstract blacklist getLineTop(I)I
.end method

.method abstract blacklist getLineVisibleEnd(I)I
.end method

.method abstract blacklist getLocationOnScreen([I)V
.end method

.method abstract blacklist getOffsetForPosition(FF)I
.end method

.method abstract blacklist getPaddingBottom()I
.end method

.method abstract blacklist getPaddingEnd()I
.end method

.method abstract blacklist getPaddingLeft()I
.end method

.method abstract blacklist getPaddingStart()I
.end method

.method abstract blacklist getPaddingTop()I
.end method

.method abstract blacklist getParagraphDirection(I)I
.end method

.method abstract blacklist getPrimaryHorizontal(I)F
.end method

.method abstract blacklist getPrivateImeOptions()Ljava/lang/String;
.end method

.method abstract blacklist getRight()I
.end method

.method abstract blacklist getScrollX()I
.end method

.method abstract blacklist getScrollY()I
.end method

.method abstract blacklist getSelectionEnd()I
.end method

.method abstract blacklist getSelectionStart()I
.end method

.method abstract blacklist getSkipHoverCursorChange()Z
.end method

.method abstract blacklist getText()Landroid/text/Editable;
.end method

.method abstract blacklist getTop()I
.end method

.method abstract blacklist getView()Landroid/view/View;
.end method

.method abstract blacklist getVisibility()I
.end method

.method abstract blacklist getWidth()I
.end method

.method abstract blacklist hasFocus()Z
.end method

.method abstract blacklist hasSelection()Z
.end method

.method abstract blacklist isCursorVisible()Z
.end method

.method abstract blacklist isEnabled()Z
.end method

.method abstract blacklist isFocusable()Z
.end method

.method abstract blacklist isVisibleToUser()Z
.end method

.method abstract blacklist length()I
.end method

.method abstract blacklist onEditorAction(I)V
.end method

.method abstract blacklist requestFocus()Z
.end method

.method abstract blacklist semGetTranslatedRectOnScreen(Landroid/graphics/Rect;)V
.end method

.method abstract blacklist setDWSelectionFlag(Z)V
.end method

.method abstract blacklist setInputConnection(Landroid/view/inputmethod/InputConnection;)V
.end method

.method abstract blacklist setSelection(I)V
.end method

.method abstract blacklist setSkipHoverCursorChange(Z)V
.end method

.method abstract blacklist setText(Ljava/lang/CharSequence;)V
.end method
