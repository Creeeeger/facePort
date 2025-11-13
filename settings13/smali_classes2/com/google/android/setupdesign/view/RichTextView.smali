.class public Lcom/google/android/setupdesign/view/RichTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "RichTextView.java"

# interfaces
.implements Lcom/google/android/setupdesign/span/LinkSpan$OnLinkClickListener;


# static fields
.field static spanTypeface:Landroid/graphics/Typeface;


# instance fields
.field private accessibilityHelper:Lcom/google/android/setupdesign/accessibility/LinkAccessibilityHelper;

.field private onLinkClickListener:Lcom/google/android/setupdesign/span/LinkSpan$OnLinkClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    .line 111
    invoke-direct {p0}, Lcom/google/android/setupdesign/view/RichTextView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 115
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 116
    invoke-direct {p0}, Lcom/google/android/setupdesign/view/RichTextView;->init()V

    return-void
.end method

.method public static getRichText(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    .line 74
    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_5

    .line 75
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 76
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result p1

    const-class v1, Landroid/text/Annotation;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1, v1}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/Annotation;

    .line 77
    array-length v1, p1

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, p1, v3

    .line 78
    invoke-virtual {v4}, Landroid/text/Annotation;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "textAppearance"

    .line 79
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_1

    .line 80
    invoke-virtual {v4}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "style"

    invoke-virtual {v6, v5, v9, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 86
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot find resource: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "RichTextView"

    invoke-static {v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_0
    new-instance v6, Landroid/text/style/TextAppearanceSpan;

    invoke-direct {v6, p0, v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v6, v5, v2

    .line 89
    invoke-static {v0, v4, v5}, Lcom/google/android/setupdesign/span/SpanHelper;->replaceSpan(Landroid/text/Spannable;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    const-string v6, "link"

    .line 90
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 91
    new-instance v5, Lcom/google/android/setupdesign/span/LinkSpan;

    invoke-virtual {v4}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/android/setupdesign/span/LinkSpan;-><init>(Ljava/lang/String;)V

    .line 93
    sget-object v6, Lcom/google/android/setupdesign/view/RichTextView;->spanTypeface:Landroid/graphics/Typeface;

    if-eqz v6, :cond_2

    .line 94
    new-instance v6, Landroid/text/style/TypefaceSpan;

    sget-object v8, Lcom/google/android/setupdesign/view/RichTextView;->spanTypeface:Landroid/graphics/Typeface;

    invoke-direct {v6, v8}, Landroid/text/style/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    goto :goto_1

    .line 95
    :cond_2
    new-instance v6, Landroid/text/style/TypefaceSpan;

    const-string/jumbo v8, "sans-serif-medium"

    invoke-direct {v6, v8}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    :goto_1
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v5, v8, v2

    aput-object v6, v8, v7

    .line 96
    invoke-static {v0, v4, v8}, Lcom/google/android/setupdesign/span/SpanHelper;->replaceSpan(Landroid/text/Spannable;Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-object v0

    :cond_5
    return-object p1
.end method

.method private hasLinks(Ljava/lang/CharSequence;)Z
    .locals 2

    .line 176
    instance-of p0, p1, Landroid/text/Spanned;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 177
    move-object p0, p1

    check-cast p0, Landroid/text/Spanned;

    .line 178
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const-class v1, Landroid/text/style/ClickableSpan;

    invoke-interface {p0, v0, p1, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/text/style/ClickableSpan;

    .line 179
    array-length p0, p0

    if-lez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private init()V
    .locals 1

    .line 120
    invoke-virtual {p0}, Landroid/widget/TextView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 124
    :cond_0
    new-instance v0, Lcom/google/android/setupdesign/accessibility/LinkAccessibilityHelper;

    invoke-direct {v0, p0}, Lcom/google/android/setupdesign/accessibility/LinkAccessibilityHelper;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lcom/google/android/setupdesign/view/RichTextView;->accessibilityHelper:Lcom/google/android/setupdesign/accessibility/LinkAccessibilityHelper;

    .line 125
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method


# virtual methods
.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/google/android/setupdesign/view/RichTextView;->accessibilityHelper:Lcom/google/android/setupdesign/accessibility/LinkAccessibilityHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/setupdesign/accessibility/LinkAccessibilityHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 207
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected drawableStateChanged()V
    .locals 6

    .line 212
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatTextView;->drawableStateChanged()V

    .line 217
    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v0

    .line 218
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    .line 220
    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 221
    invoke-virtual {p0, v4}, Landroid/widget/TextView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getOnLinkClickListener()Lcom/google/android/setupdesign/span/LinkSpan$OnLinkClickListener;
    .locals 0

    .line 233
    iget-object p0, p0, Lcom/google/android/setupdesign/view/RichTextView;->onLinkClickListener:Lcom/google/android/setupdesign/span/LinkSpan$OnLinkClickListener;

    return-object p0
.end method

.method public onLinkClick(Lcom/google/android/setupdesign/span/LinkSpan;)Z
    .locals 0

    .line 238
    iget-object p0, p0, Lcom/google/android/setupdesign/view/RichTextView;->onLinkClickListener:Lcom/google/android/setupdesign/span/LinkSpan$OnLinkClickListener;

    if-eqz p0, :cond_0

    .line 239
    invoke-interface {p0, p1}, Lcom/google/android/setupdesign/span/LinkSpan$OnLinkClickListener;->onLinkClick(Lcom/google/android/setupdesign/span/LinkSpan;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 191
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 192
    invoke-virtual {p0}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object p0

    .line 193
    instance-of v1, p0, Lcom/google/android/setupdesign/view/TouchableMovementMethod;

    if-eqz v1, :cond_0

    .line 194
    check-cast p0, Lcom/google/android/setupdesign/view/TouchableMovementMethod;

    .line 195
    invoke-interface {p0}, Lcom/google/android/setupdesign/view/TouchableMovementMethod;->getLastTouchEvent()Landroid/view/MotionEvent;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 196
    invoke-interface {p0}, Lcom/google/android/setupdesign/view/TouchableMovementMethod;->isLastTouchEventHandled()Z

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public setOnLinkClickListener(Lcom/google/android/setupdesign/span/LinkSpan$OnLinkClickListener;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/google/android/setupdesign/view/RichTextView;->onLinkClickListener:Lcom/google/android/setupdesign/span/LinkSpan$OnLinkClickListener;

    return-void
.end method

.method public setSpanTypeface(Landroid/graphics/Typeface;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    .line 136
    sput-object p1, Lcom/google/android/setupdesign/view/RichTextView;->spanTypeface:Landroid/graphics/Typeface;

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1

    .line 141
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/setupdesign/view/RichTextView;->getRichText(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 144
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 145
    invoke-direct {p0, p1}, Lcom/google/android/setupdesign/view/RichTextView;->hasLinks(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 153
    invoke-static {}, Lcom/google/android/setupdesign/view/TouchableMovementMethod$TouchableLinkMovementMethod;->getInstance()Lcom/google/android/setupdesign/view/TouchableMovementMethod$TouchableLinkMovementMethod;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 155
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 161
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setFocusable(Z)V

    const/4 p2, 0x0

    .line 166
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setRevealOnFocusHint(Z)V

    .line 171
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    return-void
.end method
