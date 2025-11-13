.class public final Landroidx/emoji2/viewsintegration/EmojiInputConnection;
.super Landroid/view/inputmethod/InputConnectionWrapper;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mEmojiCompatDeleteHelper:Landroidx/emoji2/viewsintegration/EmojiInputConnection$EmojiCompatDeleteHelper;

.field public final mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V
    .locals 1

    new-instance v0, Landroidx/emoji2/viewsintegration/EmojiInputConnection$EmojiCompatDeleteHelper;

    invoke-direct {v0}, Landroidx/emoji2/viewsintegration/EmojiInputConnection$EmojiCompatDeleteHelper;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/emoji2/viewsintegration/EmojiInputConnection;-><init>(Landroid/widget/TextView;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroidx/emoji2/viewsintegration/EmojiInputConnection$EmojiCompatDeleteHelper;)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroidx/emoji2/viewsintegration/EmojiInputConnection$EmojiCompatDeleteHelper;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    iput-object p1, p0, Landroidx/emoji2/viewsintegration/EmojiInputConnection;->mTextView:Landroid/widget/TextView;

    iput-object p4, p0, Landroidx/emoji2/viewsintegration/EmojiInputConnection;->mEmojiCompatDeleteHelper:Landroidx/emoji2/viewsintegration/EmojiInputConnection$EmojiCompatDeleteHelper;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->isConfigured()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->get()Landroidx/emoji2/text/EmojiCompat;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroidx/emoji2/text/EmojiCompat;->updateEditorInfo(Landroid/view/inputmethod/EditorInfo;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final deleteSurroundingText(II)Z
    .locals 2

    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiInputConnection;->mEmojiCompatDeleteHelper:Landroidx/emoji2/viewsintegration/EmojiInputConnection$EmojiCompatDeleteHelper;

    iget-object v1, p0, Landroidx/emoji2/viewsintegration/EmojiInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-static {p0, v1, p1, p2, v0}, Landroidx/emoji2/viewsintegration/EmojiInputConnection$EmojiCompatDeleteHelper;->handleDeleteSurroundingText(Landroid/view/inputmethod/InputConnection;Landroid/text/Editable;IIZ)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->deleteSurroundingText(II)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final deleteSurroundingTextInCodePoints(II)Z
    .locals 2

    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiInputConnection;->mEmojiCompatDeleteHelper:Landroidx/emoji2/viewsintegration/EmojiInputConnection$EmojiCompatDeleteHelper;

    iget-object v1, p0, Landroidx/emoji2/viewsintegration/EmojiInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    invoke-static {p0, v1, p1, p2, v0}, Landroidx/emoji2/viewsintegration/EmojiInputConnection$EmojiCompatDeleteHelper;->handleDeleteSurroundingText(Landroid/view/inputmethod/InputConnection;Landroid/text/Editable;IIZ)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->deleteSurroundingTextInCodePoints(II)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method
