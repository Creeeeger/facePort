.class public final Lcom/samsung/android/settings/display/FontPreviewBubbleListAdapter;
.super Landroid/widget/BaseAdapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mFontPreviewBubbleList:Ljava/util/ArrayList;

.field public mTypeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewBubbleListAdapter;->mFontPreviewBubbleList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final addItem(Ljava/lang/String;Z)V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/display/FontPreviewBubbleListItem;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p1, v0, Lcom/samsung/android/settings/display/FontPreviewBubbleListItem;->mMessageText:Ljava/lang/String;

    iput-boolean p2, v0, Lcom/samsung/android/settings/display/FontPreviewBubbleListItem;->mIsIncoming:Z

    iget-object p0, p0, Lcom/samsung/android/settings/display/FontPreviewBubbleListAdapter;->mFontPreviewBubbleList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final getCount()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/FontPreviewBubbleListAdapter;->mFontPreviewBubbleList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/FontPreviewBubbleListAdapter;->mFontPreviewBubbleList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const p2, 0x7f0d023c

    invoke-static {p3, p2, p3, v0}, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter$$ExternalSyntheticOutline0;->m(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    const v1, 0x7f0a0682

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a0683

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a0684

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0a0681

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreviewBubbleListAdapter;->mFontPreviewBubbleList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/display/FontPreviewBubbleListItem;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v5, 0x7f0706b5

    invoke-virtual {p3, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    const v6, 0x7f0706b6

    invoke-virtual {p3, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    const v7, 0x7f0706b4

    invoke-virtual {p3, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    iget-boolean v8, p1, Lcom/samsung/android/settings/display/FontPreviewBubbleListItem;->mIsIncoming:Z

    const/4 v9, 0x0

    if-eqz v8, :cond_1

    const v8, 0x800003

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    const v1, 0x7f0802d0

    invoke-virtual {p3, v1, v9}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const-string v8, "A"

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v8, 0x7f06017a

    invoke-virtual {p3, v8, v9}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    const v8, 0x7f0802cf

    invoke-virtual {p3, v8, v9}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const v2, 0x7f070ab7

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f060178

    invoke-virtual {p3, v0, v9}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p3

    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_1
    const v0, 0x800005

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    const v0, 0x7f0802d3

    invoke-virtual {p3, v0, v9}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f06017c

    invoke-virtual {p3, v0, v9}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p3

    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    const/4 p3, 0x1

    invoke-virtual {v1, p3}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4, v5, v6, v5, v7}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    iget-object p1, p1, Lcom/samsung/android/settings/display/FontPreviewBubbleListItem;->mMessageText:Ljava/lang/String;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/samsung/android/settings/display/FontPreviewBubbleListAdapter;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-object p2
.end method
