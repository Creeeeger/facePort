.class public Lcom/samsung/android/settings/display/NewConversationMessageView;
.super Landroid/widget/LinearLayout;
.source "NewConversationMessageView.java"


# instance fields
.field private mContactRecvIconView:Landroid/widget/TextView;

.field private mConversationItemView:Landroid/widget/LinearLayout;

.field private final mIconBackgroundColor:I

.field private final mIconText:Ljava/lang/CharSequence;

.field private final mIconTextColor:I

.field private final mIncoming:Z

.field private final mMessageText:Ljava/lang/CharSequence;

.field private mMessageTextAndInfoView:Landroid/view/ViewGroup;

.field private mMessageTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/display/NewConversationMessageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/display/NewConversationMessageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/display/NewConversationMessageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 67
    sget-object p3, Lcom/android/settings/R$styleable;->ConversationMessageView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 70
    sget p3, Lcom/android/settings/R$styleable;->ConversationMessageView_incoming:I

    const/4 p4, 0x1

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/samsung/android/settings/display/NewConversationMessageView;->mIncoming:Z

    .line 71
    sget p3, Lcom/android/settings/R$styleable;->ConversationMessageView_messageText:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/samsung/android/settings/display/NewConversationMessageView;->mMessageText:Ljava/lang/CharSequence;

    .line 72
    sget p3, Lcom/android/settings/R$styleable;->ConversationMessageView_iconText:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/samsung/android/settings/display/NewConversationMessageView;->mIconText:Ljava/lang/CharSequence;

    .line 73
    sget p3, Lcom/android/settings/R$styleable;->ConversationMessageView_iconTextColor:I

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/samsung/android/settings/display/NewConversationMessageView;->mIconTextColor:I

    .line 74
    sget p3, Lcom/android/settings/R$styleable;->ConversationMessageView_iconBackgroundColor:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/samsung/android/settings/display/NewConversationMessageView;->mIconBackgroundColor:I

    .line 76
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 77
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/android/settings/R$layout;->sec_new_conversation_message_content:I

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method private updateTextAppearance()V
    .locals 2

    .line 147
    iget-boolean v0, p0, Lcom/samsung/android/settings/display/NewConversationMessageView;->mIncoming:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/android/settings/R$color;->sec_font_preview_recv_message_color:I

    goto :goto_0

    .line 148
    :cond_0
    sget v0, Lcom/android/settings/R$color;->sec_font_preview_sent_message_color:I

    .line 149
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 151
    iget-object p0, p0, Lcom/samsung/android/settings/display/NewConversationMessageView;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private updateViewAppearance()V
    .locals 5

    .line 106
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 108
    sget v1, Lcom/android/settings/R$dimen;->message_text_left_right_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 110
    sget v2, Lcom/android/settings/R$dimen;->message_text_top_padding:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 112
    sget v3, Lcom/android/settings/R$dimen;->message_text_bottom_padding:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 114
    iget-object v4, p0, Lcom/samsung/android/settings/display/NewConversationMessageView;->mMessageTextAndInfoView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1, v2, v1, v3}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    .line 118
    iget-boolean v1, p0, Lcom/samsung/android/settings/display/NewConversationMessageView;->mIncoming:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/android/settings/R$drawable;->sec_conversation_recv_message_bg:I

    goto :goto_0

    .line 119
    :cond_0
    sget v1, Lcom/android/settings/R$drawable;->sec_conversation_sent_message_bg:I

    :goto_0
    const/4 v2, 0x0

    .line 120
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x1

    .line 121
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 122
    iget-object v2, p0, Lcom/samsung/android/settings/display/NewConversationMessageView;->mMessageTextAndInfoView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 124
    iget-boolean v1, p0, Lcom/samsung/android/settings/display/NewConversationMessageView;->mIncoming:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 125
    sget v1, Lcom/android/settings/R$dimen;->sec_font_preview_message_start_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 127
    iget-object v3, p0, Lcom/samsung/android/settings/display/NewConversationMessageView;->mMessageTextAndInfoView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 128
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 129
    iget-object v1, p0, Lcom/samsung/android/settings/display/NewConversationMessageView;->mMessageTextAndInfoView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    iget-object v1, p0, Lcom/samsung/android/settings/display/NewConversationMessageView;->mConversationItemView:Landroid/widget/LinearLayout;

    const v3, 0x800003

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 132
    iget-object v1, p0, Lcom/samsung/android/settings/display/NewConversationMessageView;->mContactRecvIconView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 134
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/display/NewConversationMessageView;->mConversationItemView:Landroid/widget/LinearLayout;

    const v3, 0x800005

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 137
    :goto_1
    sget v1, Lcom/android/settings/R$dimen;->sec_font_preview_message_list_bottom_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 139
    iget-object v1, p0, Lcom/samsung/android/settings/display/NewConversationMessageView;->mConversationItemView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 140
    invoke-virtual {v1, v2, v2, v2, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 141
    iget-object v0, p0, Lcom/samsung/android/settings/display/NewConversationMessageView;->mConversationItemView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    invoke-direct {p0}, Lcom/samsung/android/settings/display/NewConversationMessageView;->updateTextAppearance()V

    return-void
.end method

.method private updateViewContent()V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/samsung/android/settings/display/NewConversationMessageView;->mMessageTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/display/NewConversationMessageView;->mMessageText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p0, Lcom/samsung/android/settings/display/NewConversationMessageView;->mContactRecvIconView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/display/NewConversationMessageView;->mIconText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lcom/samsung/android/settings/display/NewConversationMessageView;->mContactRecvIconView:Landroid/widget/TextView;

    iget v1, p0, Lcom/samsung/android/settings/display/NewConversationMessageView;->mIconTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    iget-object v0, p0, Lcom/samsung/android/settings/display/NewConversationMessageView;->mContactRecvIconView:Landroid/widget/TextView;

    .line 102
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v1, Lcom/android/settings/R$drawable;->ic_04_profile_image_a:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 82
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 83
    sget v0, Lcom/android/settings/R$id;->conversation_item:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/display/NewConversationMessageView;->mConversationItemView:Landroid/widget/LinearLayout;

    .line 84
    sget v0, Lcom/android/settings/R$id;->message_text_and_info:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/samsung/android/settings/display/NewConversationMessageView;->mMessageTextAndInfoView:Landroid/view/ViewGroup;

    .line 85
    sget v0, Lcom/android/settings/R$id;->message_text:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/display/NewConversationMessageView;->mMessageTextView:Landroid/widget/TextView;

    .line 86
    sget v0, Lcom/android/settings/R$id;->conversation_icon_recv:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/display/NewConversationMessageView;->mContactRecvIconView:Landroid/widget/TextView;

    .line 87
    invoke-direct {p0}, Lcom/samsung/android/settings/display/NewConversationMessageView;->updateViewContent()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/samsung/android/settings/display/NewConversationMessageView;->updateViewAppearance()V

    .line 93
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public setTextScale(F)V
    .locals 1

    .line 155
    iget-object p0, p0, Lcom/samsung/android/settings/display/NewConversationMessageView;->mMessageTextView:Landroid/widget/TextView;

    const/high16 v0, 0x41700000    # 15.0f

    mul-float/2addr p1, v0

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method
