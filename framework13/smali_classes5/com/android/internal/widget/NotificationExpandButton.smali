.class public Lcom/android/internal/widget/NotificationExpandButton;
.super Landroid/widget/FrameLayout;
.source "NotificationExpandButton.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# instance fields
.field private blacklist mDefaultPillColor:I

.field private blacklist mDefaultTextColor:I

.field private blacklist mExpanded:Z

.field private blacklist mHighlightPillColor:I

.field private blacklist mHighlightTextColor:I

.field private blacklist mIconView:Landroid/widget/ImageView;

.field private blacklist mNumber:I

.field private blacklist mNumberView:Landroid/widget/TextView;

.field private blacklist mPillView:Landroid/view/View;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 57
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/android/internal/widget/NotificationExpandButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 58
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/internal/widget/NotificationExpandButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 62
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/NotificationExpandButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 67
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 72
    return-void
.end method

.method private blacklist shouldShowNumber()Z
    .locals 2

    .line 180
    iget-boolean v0, p0, Lcom/android/internal/widget/NotificationExpandButton;->mExpanded:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/NotificationExpandButton;->mNumber:I

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private blacklist updateColors()V
    .locals 3

    .line 158
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationExpandButton;->shouldShowNumber()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    iget v0, p0, Lcom/android/internal/widget/NotificationExpandButton;->mHighlightPillColor:I

    if-eqz v0, :cond_0

    .line 160
    iget-object v1, p0, Lcom/android/internal/widget/NotificationExpandButton;->mPillView:Landroid/view/View;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/NotificationExpandButton;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/internal/widget/NotificationExpandButton;->mDefaultTextColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 164
    iget v0, p0, Lcom/android/internal/widget/NotificationExpandButton;->mHighlightTextColor:I

    if-eqz v0, :cond_3

    .line 165
    iget-object v1, p0, Lcom/android/internal/widget/NotificationExpandButton;->mNumberView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 168
    :cond_1
    iget v0, p0, Lcom/android/internal/widget/NotificationExpandButton;->mDefaultPillColor:I

    if-eqz v0, :cond_2

    .line 169
    iget-object v1, p0, Lcom/android/internal/widget/NotificationExpandButton;->mPillView:Landroid/view/View;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 171
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/NotificationExpandButton;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/internal/widget/NotificationExpandButton;->mDefaultTextColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 173
    iget v0, p0, Lcom/android/internal/widget/NotificationExpandButton;->mHighlightTextColor:I

    if-eqz v0, :cond_3

    .line 174
    iget-object v1, p0, Lcom/android/internal/widget/NotificationExpandButton;->mNumberView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 177
    :cond_3
    :goto_0
    return-void
.end method

.method private blacklist updateExpandedState()V
    .locals 4

    .line 128
    iget-boolean v0, p0, Lcom/android/internal/widget/NotificationExpandButton;->mExpanded:Z

    if-eqz v0, :cond_0

    .line 129
    const v0, 0x108039b

    .line 130
    .local v0, "drawableId":I
    const v1, 0x10404a9

    .local v1, "contentDescriptionId":I
    goto :goto_0

    .line 132
    .end local v0    # "drawableId":I
    .end local v1    # "contentDescriptionId":I
    :cond_0
    const v0, 0x10803d9

    .line 133
    .restart local v0    # "drawableId":I
    const v1, 0x10404a8

    .line 135
    .restart local v1    # "contentDescriptionId":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/NotificationExpandButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/NotificationExpandButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v2, p0, Lcom/android/internal/widget/NotificationExpandButton;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationExpandButton;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 139
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationExpandButton;->updateNumber()V

    .line 140
    return-void
.end method

.method private blacklist updateNumber()V
    .locals 5

    .line 143
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationExpandButton;->shouldShowNumber()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    iget v0, p0, Lcom/android/internal/widget/NotificationExpandButton;->mNumber:I

    const/16 v1, 0x64

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationExpandButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040e51

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v4, 0x63

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 146
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/internal/widget/NotificationExpandButton;->mNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "%d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    nop

    .line 147
    .local v0, "text":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/internal/widget/NotificationExpandButton;->mNumberView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v1, p0, Lcom/android/internal/widget/NotificationExpandButton;->mNumberView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    .end local v0    # "text":Ljava/lang/CharSequence;
    goto :goto_1

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/NotificationExpandButton;->mNumberView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationExpandButton;->updateColors()V

    .line 155
    return-void
.end method


# virtual methods
.method public blacklist getBoundsOnScreen(Landroid/graphics/Rect;Z)V
    .locals 3
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "clipToParent"    # Z

    .line 88
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationExpandButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 89
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    const v2, 0x10202dd

    if-ne v1, v2, :cond_0

    .line 90
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->getBoundsOnScreen(Landroid/graphics/Rect;Z)V

    goto :goto_0

    .line 92
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->getBoundsOnScreen(Landroid/graphics/Rect;Z)V

    .line 94
    :goto_0
    return-void
.end method

.method protected whitelist onFinishInflate()V
    .locals 1

    .line 76
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 77
    const v0, 0x10202dc

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/NotificationExpandButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/NotificationExpandButton;->mPillView:Landroid/view/View;

    .line 78
    const v0, 0x10202db

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/NotificationExpandButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/widget/NotificationExpandButton;->mNumberView:Landroid/widget/TextView;

    .line 79
    const v0, 0x10202da

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/NotificationExpandButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/widget/NotificationExpandButton;->mIconView:Landroid/widget/ImageView;

    .line 80
    return-void
.end method

.method public whitelist onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 112
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 113
    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 114
    return-void
.end method

.method public blacklist pointInView(FFF)Z
    .locals 3
    .param p1, "localX"    # F
    .param p2, "localY"    # F
    .param p3, "slop"    # F

    .line 102
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationExpandButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 103
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    const v2, 0x10202dd

    if-ne v1, v2, :cond_0

    .line 105
    const/4 v1, 0x1

    return v1

    .line 107
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->pointInView(FFF)Z

    move-result v1

    return v1
.end method

.method public blacklist setDefaultPillColor(I)V
    .locals 0
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 197
    iput p1, p0, Lcom/android/internal/widget/NotificationExpandButton;->mDefaultPillColor:I

    .line 198
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationExpandButton;->updateColors()V

    .line 199
    return-void
.end method

.method public blacklist setDefaultTextColor(I)V
    .locals 0
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 188
    iput p1, p0, Lcom/android/internal/widget/NotificationExpandButton;->mDefaultTextColor:I

    .line 189
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationExpandButton;->updateColors()V

    .line 190
    return-void
.end method

.method public blacklist setExpanded(Z)V
    .locals 0
    .param p1, "expanded"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 121
    iput-boolean p1, p0, Lcom/android/internal/widget/NotificationExpandButton;->mExpanded:Z

    .line 122
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationExpandButton;->updateExpandedState()V

    .line 123
    return-void
.end method

.method public blacklist setHighlightPillColor(I)V
    .locals 0
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 215
    iput p1, p0, Lcom/android/internal/widget/NotificationExpandButton;->mHighlightPillColor:I

    .line 216
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationExpandButton;->updateColors()V

    .line 217
    return-void
.end method

.method public blacklist setHighlightTextColor(I)V
    .locals 0
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 206
    iput p1, p0, Lcom/android/internal/widget/NotificationExpandButton;->mHighlightTextColor:I

    .line 207
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationExpandButton;->updateColors()V

    .line 208
    return-void
.end method

.method public blacklist setNumber(I)V
    .locals 1
    .param p1, "number"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 225
    iget v0, p0, Lcom/android/internal/widget/NotificationExpandButton;->mNumber:I

    if-eq v0, p1, :cond_0

    .line 226
    iput p1, p0, Lcom/android/internal/widget/NotificationExpandButton;->mNumber:I

    .line 227
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationExpandButton;->updateNumber()V

    .line 229
    :cond_0
    return-void
.end method

.method public blacklist updateContentDescription()V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 235
    iget-boolean v0, p0, Lcom/android/internal/widget/NotificationExpandButton;->mExpanded:Z

    if-eqz v0, :cond_0

    .line 236
    const v0, 0x10404a9

    .local v0, "contentDescriptionId":I
    goto :goto_0

    .line 238
    .end local v0    # "contentDescriptionId":I
    :cond_0
    const v0, 0x10404a8

    .line 240
    .restart local v0    # "contentDescriptionId":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/NotificationExpandButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/NotificationExpandButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 241
    return-void
.end method
