.class public Landroid/widget/EditText;
.super Landroid/widget/TextView;
.source "EditText.java"


# static fields
.field private static final blacklist ID_BOLD:I = 0x102005b

.field private static final blacklist ID_ITALIC:I = 0x102005c

.field private static final blacklist ID_UNDERLINE:I = 0x102005d

.field public static final blacklist LINE_HEIGHT_FOR_LOCALE:J = 0x121465f4L


# instance fields
.field private blacklist mStyleShortcutsEnabled:Z


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101006e

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/EditText;->mStyleShortcutsEnabled:Z

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/android/internal/R$styleable;->EditText:[I

    invoke-virtual {v1, p2, v2, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    :try_start_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {v2, v5, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Landroid/widget/EditText;->mStyleShortcutsEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    nop

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Lcom/android/internal/R$styleable;->TextView:[I

    invoke-virtual {v1, p2, v5, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    nop

    const/16 v6, 0x66

    :try_start_1
    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    move v3, v7

    if-eqz v3, :cond_1

    invoke-virtual {v5, v6, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v4, v0

    :cond_1
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    nop

    if-nez v3, :cond_2

    nop

    const-wide/32 v6, 0x121465f4

    invoke-static {v6, v7}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v4

    :cond_2
    invoke-virtual {p0, v4}, Landroid/widget/EditText;->setLocalePreferredLineHeightForMinimumUsed(Z)V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    :catchall_1
    move-exception v0

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist performStylingAction(I)Z
    .locals 7

    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    const/4 v2, 0x0

    if-ltz v0, :cond_4

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    const v6, 0x102005b

    if-ne p1, v6, :cond_1

    invoke-static {v5, v3, v4}, Landroid/text/style/SpanUtils;->toggleBold(Landroid/text/Spannable;II)Z

    move-result v2

    return v2

    :cond_1
    const v6, 0x102005c

    if-ne p1, v6, :cond_2

    invoke-static {v5, v3, v4}, Landroid/text/style/SpanUtils;->toggleItalic(Landroid/text/Spannable;II)Z

    move-result v2

    return v2

    :cond_2
    const v6, 0x102005d

    if-ne p1, v6, :cond_3

    invoke-static {v5, v3, v4}, Landroid/text/style/SpanUtils;->toggleUnderline(Landroid/text/Spannable;II)Z

    move-result v2

    return v2

    :cond_3
    return v2

    :cond_4
    :goto_0
    return v2
.end method


# virtual methods
.method public whitelist extendSelection(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    return-void
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist getDefaultEditable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected whitelist getDefaultMovementMethod()Landroid/text/method/MovementMethod;
    .locals 1

    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getFreezesText()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getText()Landroid/text/Editable;
    .locals 2

    invoke-super {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    instance-of v1, v0, Landroid/text/Editable;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/text/Editable;

    return-object v1

    :cond_1
    sget-object v1, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-super {p0, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    invoke-super {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Editable;

    return-object v1
.end method

.method public bridge synthetic whitelist getText()Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist isStyleShortcutEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/EditText;->mStyleShortcutsEnabled:Z

    return v0
.end method

.method public whitelist onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x1000

    invoke-virtual {p2, v0}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-boolean v0, p0, Landroid/widget/EditText;->mStyleShortcutsEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x102005d

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z

    move-result v0

    return v0

    :sswitch_1
    iget-boolean v0, p0, Landroid/widget/EditText;->mStyleShortcutsEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x102005c

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z

    move-result v0

    return v0

    :sswitch_2
    iget-boolean v0, p0, Landroid/widget/EditText;->mStyleShortcutsEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x102005b

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z

    move-result v0

    return v0

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1e -> :sswitch_2
        0x25 -> :sswitch_1
        0x31 -> :sswitch_0
    .end sparse-switch
.end method

.method public whitelist onTextContextMenuItem(I)Z
    .locals 1

    const v0, 0x102005b

    if-eq p1, v0, :cond_1

    const v0, 0x102005c

    if-eq p1, v0, :cond_1

    const v0, 0x102005d

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Landroid/widget/EditText;->performStylingAction(I)Z

    move-result v0

    return v0
.end method

.method public whitelist selectAll()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->selectAll(Landroid/text/Spannable;)V

    return-void
.end method

.method public whitelist semHideCursorControllers()V
    .locals 0

    invoke-super {p0}, Landroid/widget/TextView;->hideCursorControllers()V

    return-void
.end method

.method public whitelist setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 2

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EditText cannot use the ellipsize mode TextUtils.TruncateAt.MARQUEE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setSelection(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    return-void
.end method

.method public whitelist setSelection(II)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    return-void
.end method

.method public whitelist setStyleShortcutsEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/EditText;->mStyleShortcutsEnabled:Z

    return-void
.end method

.method public whitelist setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1

    sget-object v0, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-super {p0, p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method

.method protected greylist-max-o supportsAutoSizeText()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
