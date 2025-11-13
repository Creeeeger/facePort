.class public Lcom/samsung/android/settings/display/FontPreviewBubbleListAdapter;
.super Landroid/widget/BaseAdapter;
.source "FontPreviewBubbleListAdapter.java"


# instance fields
.field private final mFontPreviewBubbleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/display/FontPreviewBubbleListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mTypeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewBubbleListAdapter;->mFontPreviewBubbleList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addItem(Ljava/lang/String;Z)V
    .locals 1

    .line 108
    new-instance v0, Lcom/samsung/android/settings/display/FontPreviewBubbleListItem;

    invoke-direct {v0}, Lcom/samsung/android/settings/display/FontPreviewBubbleListItem;-><init>()V

    .line 109
    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/display/FontPreviewBubbleListItem;->setMessageText(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0, p2}, Lcom/samsung/android/settings/display/FontPreviewBubbleListItem;->setIsIncoming(Z)V

    .line 111
    iget-object p0, p0, Lcom/samsung/android/settings/display/FontPreviewBubbleListAdapter;->mFontPreviewBubbleList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCount()I
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/samsung/android/settings/display/FontPreviewBubbleListAdapter;->mFontPreviewBubbleList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/samsung/android/settings/display/FontPreviewBubbleListAdapter;->mFontPreviewBubbleList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 48
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/android/settings/R$layout;->font_preview_bubble_list_item:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 52
    :cond_0
    sget v1, Lcom/android/settings/R$id;->font_preview_message_bubble_item:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 53
    sget v2, Lcom/android/settings/R$id;->font_preview_message_bubble_recv_icon:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 54
    sget v3, Lcom/android/settings/R$id;->font_preview_message_bubble_text:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 55
    sget v4, Lcom/android/settings/R$id;->font_preview_message_bubble_background:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 57
    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreviewBubbleListAdapter;->mFontPreviewBubbleList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/display/FontPreviewBubbleListItem;

    .line 59
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 60
    sget v5, Lcom/android/settings/R$dimen;->message_text_left_right_padding:I

    invoke-virtual {p3, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 61
    sget v6, Lcom/android/settings/R$dimen;->message_text_top_padding:I

    invoke-virtual {p3, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    .line 62
    sget v7, Lcom/android/settings/R$dimen;->message_text_bottom_padding:I

    invoke-virtual {p3, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    .line 66
    invoke-virtual {p1}, Lcom/samsung/android/settings/display/FontPreviewBubbleListItem;->isIncoming()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_1

    const v8, 0x800003

    .line 67
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 70
    sget v1, Lcom/android/settings/R$drawable;->font_preview_recv_message_background:I

    invoke-virtual {p3, v1, v9}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const-string v8, "A"

    .line 73
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    sget v8, Lcom/android/settings/R$color;->font_preview_recv_icon_text_color:I

    invoke-virtual {p3, v8, v9}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 75
    sget v8, Lcom/android/settings/R$drawable;->font_preview_recv_icon_background:I

    invoke-virtual {p3, v8, v9}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 76
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 78
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 79
    sget v2, Lcom/android/settings/R$dimen;->sec_font_preview_message_start_padding:I

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 80
    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    sget v0, Lcom/android/settings/R$color;->font_preview_recv_bubble_text_color:I

    invoke-virtual {p3, v0, v9}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p3

    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_1
    const v0, 0x800005

    .line 85
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 88
    sget v0, Lcom/android/settings/R$drawable;->font_preview_send_message_background:I

    invoke-virtual {p3, v0, v9}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v0, 0x8

    .line 91
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    sget v0, Lcom/android/settings/R$color;->font_preview_send_bubble_text_color:I

    invoke-virtual {p3, v0, v9}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p3

    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    const/4 p3, 0x1

    .line 96
    invoke-virtual {v1, p3}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 98
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 99
    invoke-virtual {v4, v5, v6, v5, v7}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    .line 101
    invoke-virtual {p1}, Lcom/samsung/android/settings/display/FontPreviewBubbleListItem;->getMessageText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object p0, p0, Lcom/samsung/android/settings/display/FontPreviewBubbleListAdapter;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-object p2
.end method

.method public setPreviewFont(Landroid/graphics/Typeface;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/samsung/android/settings/display/FontPreviewBubbleListAdapter;->mTypeface:Landroid/graphics/Typeface;

    return-void
.end method
