.class public Lcom/google/android/setupdesign/view/RichTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/google/android/setupdesign/span/LinkSpan$OnLinkClickListener;


# static fields
.field static spanTypeface:Landroid/graphics/Typeface;


# instance fields
.field public final accessibilityHelper:Lcom/google/android/setupdesign/accessibility/LinkAccessibilityHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/android/setupdesign/accessibility/LinkAccessibilityHelper;

    new-instance v0, Landroidx/core/view/AccessibilityDelegateCompat;

    invoke-direct {v0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    invoke-direct {p1, v0}, Lcom/google/android/setupdesign/accessibility/LinkAccessibilityHelper;-><init>(Landroidx/core/view/AccessibilityDelegateCompat;)V

    iput-object p1, p0, Lcom/google/android/setupdesign/view/RichTextView;->accessibilityHelper:Lcom/google/android/setupdesign/accessibility/LinkAccessibilityHelper;

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/android/setupdesign/accessibility/LinkAccessibilityHelper;

    new-instance p2, Landroidx/core/view/AccessibilityDelegateCompat;

    invoke-direct {p2}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    invoke-direct {p1, p2}, Lcom/google/android/setupdesign/accessibility/LinkAccessibilityHelper;-><init>(Landroidx/core/view/AccessibilityDelegateCompat;)V

    iput-object p1, p0, Lcom/google/android/setupdesign/view/RichTextView;->accessibilityHelper:Lcom/google/android/setupdesign/accessibility/LinkAccessibilityHelper;

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    :goto_0
    return-void
.end method

.method public static setSpanTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    sput-object p0, Lcom/google/android/setupdesign/view/RichTextView;->spanTypeface:Landroid/graphics/Typeface;

    return-void
.end method


# virtual methods
.method public final dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/setupdesign/view/RichTextView;->accessibilityHelper:Lcom/google/android/setupdesign/accessibility/LinkAccessibilityHelper;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/setupdesign/accessibility/LinkAccessibilityHelper;->delegate:Landroidx/core/view/AccessibilityDelegateCompat;

    instance-of v1, v0, Landroidx/customview/widget/ExploreByTouchHelper;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/customview/widget/ExploreByTouchHelper;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final drawableStateChanged()V
    .locals 6

    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatTextView;->drawableStateChanged()V

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object p0

    instance-of v1, p0, Lcom/google/android/setupdesign/view/TouchableMovementMethod;

    if-eqz v1, :cond_0

    check-cast p0, Lcom/google/android/setupdesign/view/TouchableMovementMethod;

    move-object v1, p0

    check-cast v1, Lcom/google/android/setupdesign/view/TouchableMovementMethod$TouchableLinkMovementMethod;

    iget-object v1, v1, Lcom/google/android/setupdesign/view/TouchableMovementMethod$TouchableLinkMovementMethod;->lastEvent:Landroid/view/MotionEvent;

    if-ne v1, p1, :cond_0

    check-cast p0, Lcom/google/android/setupdesign/view/TouchableMovementMethod$TouchableLinkMovementMethod;

    iget-boolean p0, p0, Lcom/google/android/setupdesign/view/TouchableMovementMethod$TouchableLinkMovementMethod;->lastEventResult:Z

    return p0

    :cond_0
    return v0
.end method

.method public final setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 10

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, p1, Landroid/text/Spanned;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result p1

    const-class v3, Landroid/text/Annotation;

    invoke-virtual {v1, v2, p1, v3}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/Annotation;

    array-length v3, p1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_5

    aget-object v5, p1, v4

    invoke-virtual {v5}, Landroid/text/Annotation;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "textAppearance"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v5}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string/jumbo v8, "style"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v6, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_0

    const-string v7, "Cannot find resource: "

    const-string v8, "RichTextView"

    invoke-static {v6, v7, v8}, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v7, Landroid/text/style/TextAppearanceSpan;

    invoke-direct {v7, v0, v6}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v5}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {v1, v5}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v1, v5}, Landroid/text/SpannableString;->removeSpan(Ljava/lang/Object;)V

    aget-object v5, v6, v2

    invoke-virtual {v1, v5, v7, v8, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_4

    :cond_1
    const-string v7, "link"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {}, Lcom/google/android/setupcompat/util/BuildCompatUtils;->isAtLeastU()Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v6, Lcom/google/android/setupdesign/span/BoldLinkSpan;

    invoke-virtual {v5}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v0, v7}, Lcom/google/android/setupdesign/span/BoldLinkSpan;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance v6, Lcom/google/android/setupdesign/span/LinkSpan;

    invoke-virtual {v5}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/android/setupdesign/span/LinkSpan;-><init>(Ljava/lang/String;)V

    :goto_1
    sget-object v7, Lcom/google/android/setupdesign/view/RichTextView;->spanTypeface:Landroid/graphics/Typeface;

    if-eqz v7, :cond_3

    new-instance v7, Landroid/text/style/TypefaceSpan;

    sget-object v8, Lcom/google/android/setupdesign/view/RichTextView;->spanTypeface:Landroid/graphics/Typeface;

    invoke-direct {v7, v8}, Landroid/text/style/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    goto :goto_2

    :cond_3
    new-instance v7, Landroid/text/style/TypefaceSpan;

    const-string/jumbo v8, "sans-serif-medium"

    invoke-direct {v7, v8}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    :goto_2
    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v5}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {v1, v5}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v1, v5}, Landroid/text/SpannableString;->removeSpan(Ljava/lang/Object;)V

    move v5, v2

    :goto_3
    const/4 v9, 0x2

    if-ge v5, v9, :cond_4

    aget-object v9, v6, v5

    invoke-virtual {v1, v9, v7, v8, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_5
    move-object p1, v1

    :cond_6
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    instance-of p2, p1, Landroid/text/Spanned;

    if-eqz p2, :cond_7

    move-object p2, p1

    check-cast p2, Landroid/text/Spanned;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const-class v0, Landroid/text/style/ClickableSpan;

    invoke-interface {p2, v2, p1, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/style/ClickableSpan;

    array-length p1, p1

    if-lez p1, :cond_7

    const/4 p1, 0x1

    goto :goto_5

    :cond_7
    move p1, v2

    :goto_5
    if-eqz p1, :cond_8

    new-instance p2, Lcom/google/android/setupdesign/view/TouchableMovementMethod$TouchableLinkMovementMethod;

    invoke-direct {p2}, Landroid/text/method/LinkMovementMethod;-><init>()V

    iput-boolean v2, p2, Lcom/google/android/setupdesign/view/TouchableMovementMethod$TouchableLinkMovementMethod;->lastEventResult:Z

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_6

    :cond_8
    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :goto_6
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setFocusable(Z)V

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setRevealOnFocusHint(Z)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    return-void
.end method
