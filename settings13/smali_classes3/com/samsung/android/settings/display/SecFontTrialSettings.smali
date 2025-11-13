.class Lcom/samsung/android/settings/display/SecFontTrialSettings;
.super Ljava/lang/Object;
.source "SecFontTrialSettings.java"


# instance fields
.field private mBubbleListViewAdapter:Lcom/samsung/android/settings/display/FontPreviewBubbleListAdapter;

.field private final mContext:Landroid/content/Context;

.field private final mIntent:Landroid/content/Intent;


# direct methods
.method public static synthetic $r8$lambda$5FbZ9spLTITX_RwucAwDu-3NS18(Landroid/widget/ListView;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-static/range {p0 .. p9}, Lcom/samsung/android/settings/display/SecFontTrialSettings;->lambda$generateContent$0(Landroid/widget/ListView;Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static synthetic $r8$lambda$yA8Y2dflBsfemYFgA-_aF5lKd3g(Lcom/samsung/android/settings/display/SecFontTrialSettings;Landroid/widget/EditText;Landroid/widget/ListView;Landroid/widget/ImageButton;Landroid/content/res/Resources;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/settings/display/SecFontTrialSettings;->lambda$generateContent$1(Landroid/widget/EditText;Landroid/widget/ListView;Landroid/widget/ImageButton;Landroid/content/res/Resources;Landroid/widget/TextView;Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/display/SecFontTrialSettings;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecFontTrialSettings;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/samsung/android/settings/display/SecFontTrialSettings;->mContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/samsung/android/settings/display/SecFontTrialSettings;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method static create(Landroid/content/Context;Landroid/content/Intent;)Lcom/samsung/android/settings/display/SecFontTrialSettings;
    .locals 2

    const-string v0, "fromStore"

    const/4 v1, 0x0

    .line 36
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    new-instance v0, Lcom/samsung/android/settings/display/SecFontTrialSettings;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/settings/display/SecFontTrialSettings;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private static synthetic lambda$generateContent$0(Landroid/widget/ListView;Landroid/view/View;IIIIIIII)V
    .locals 0

    sub-int/2addr p9, p5

    if-lez p9, :cond_0

    .line 61
    invoke-virtual {p0, p9}, Landroid/widget/ListView;->semSmoothScrollBy(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$generateContent$1(Landroid/widget/EditText;Landroid/widget/ListView;Landroid/widget/ImageButton;Landroid/content/res/Resources;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 2

    .line 122
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p6

    .line 123
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontTrialSettings;->mBubbleListViewAdapter:Lcom/samsung/android/settings/display/FontPreviewBubbleListAdapter;

    invoke-virtual {v0, p6, v1}, Lcom/samsung/android/settings/display/FontPreviewBubbleListAdapter;->addItem(Ljava/lang/String;Z)V

    .line 125
    iget-object p6, p0, Lcom/samsung/android/settings/display/SecFontTrialSettings;->mBubbleListViewAdapter:Lcom/samsung/android/settings/display/FontPreviewBubbleListAdapter;

    invoke-virtual {p6}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    const-string p6, ""

    .line 126
    invoke-virtual {p1, p6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object p6, p0, Lcom/samsung/android/settings/display/SecFontTrialSettings;->mBubbleListViewAdapter:Lcom/samsung/android/settings/display/FontPreviewBubbleListAdapter;

    invoke-virtual {p6}, Lcom/samsung/android/settings/display/FontPreviewBubbleListAdapter;->getCount()I

    move-result p6

    invoke-virtual {p2, p6}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 130
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/settings/display/SecFontTrialSettings;->mBubbleListViewAdapter:Lcom/samsung/android/settings/display/FontPreviewBubbleListAdapter;

    invoke-virtual {p2}, Lcom/samsung/android/settings/display/FontPreviewBubbleListAdapter;->getCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x3

    const/16 p6, 0x14

    if-lt p2, p6, :cond_1

    .line 131
    invoke-virtual {p3, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 132
    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 133
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecFontTrialSettings;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->font_preview_max_bubble_toast_message:I

    invoke-virtual {p4, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 136
    :cond_1
    invoke-virtual {p5}, Landroid/widget/TextView;->getVisibility()I

    move-result p0

    if-nez p0, :cond_2

    const/16 p0, 0x8

    .line 137
    invoke-virtual {p5, p0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method generateContent(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10

    .line 50
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontTrialSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontTrialSettings;->mIntent:Landroid/content/Intent;

    const-string v2, "fontFileUri"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 52
    iget-object v2, p0, Lcom/samsung/android/settings/display/SecFontTrialSettings;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getPreviewFont(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 54
    new-instance v2, Lcom/samsung/android/settings/display/FontPreviewBubbleListAdapter;

    invoke-direct {v2}, Lcom/samsung/android/settings/display/FontPreviewBubbleListAdapter;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/display/SecFontTrialSettings;->mBubbleListViewAdapter:Lcom/samsung/android/settings/display/FontPreviewBubbleListAdapter;

    .line 55
    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/display/FontPreviewBubbleListAdapter;->setPreviewFont(Landroid/graphics/Typeface;)V

    .line 57
    sget v2, Lcom/android/settings/R$id;->font_preview_bubble_list_view:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/widget/ListView;

    .line 58
    iget-object v2, p0, Lcom/samsung/android/settings/display/SecFontTrialSettings;->mBubbleListViewAdapter:Lcom/samsung/android/settings/display/FontPreviewBubbleListAdapter;

    invoke-virtual {v4, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 59
    new-instance v2, Lcom/samsung/android/settings/display/SecFontTrialSettings$$ExternalSyntheticLambda0;

    invoke-direct {v2, v4}, Lcom/samsung/android/settings/display/SecFontTrialSettings$$ExternalSyntheticLambda0;-><init>(Landroid/widget/ListView;)V

    invoke-virtual {v4, v2}, Landroid/widget/ListView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_1

    const-string v5, "PreviewFontMessageList"

    .line 66
    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    move v5, v3

    .line 67
    :goto_0
    array-length v6, p2

    if-ge v5, v6, :cond_2

    .line 68
    iget-object v6, p0, Lcom/samsung/android/settings/display/SecFontTrialSettings;->mBubbleListViewAdapter:Lcom/samsung/android/settings/display/FontPreviewBubbleListAdapter;

    aget-object v7, p2, v5

    if-ne v5, v2, :cond_0

    move v8, v2

    goto :goto_1

    :cond_0
    move v8, v3

    :goto_1
    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/settings/display/FontPreviewBubbleListAdapter;->addItem(Ljava/lang/String;Z)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 71
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/settings/display/SecFontTrialSettings;->mBubbleListViewAdapter:Lcom/samsung/android/settings/display/FontPreviewBubbleListAdapter;

    sget v5, Lcom/android/settings/R$string;->font_preview_bubble_list_header_message1:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5, v3}, Lcom/samsung/android/settings/display/FontPreviewBubbleListAdapter;->addItem(Ljava/lang/String;Z)V

    .line 73
    iget-object p2, p0, Lcom/samsung/android/settings/display/SecFontTrialSettings;->mBubbleListViewAdapter:Lcom/samsung/android/settings/display/FontPreviewBubbleListAdapter;

    sget v5, Lcom/android/settings/R$string;->font_preview_bubble_list_header_message2:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5, v2}, Lcom/samsung/android/settings/display/FontPreviewBubbleListAdapter;->addItem(Ljava/lang/String;Z)V

    .line 75
    iget-object p2, p0, Lcom/samsung/android/settings/display/SecFontTrialSettings;->mIntent:Landroid/content/Intent;

    const-string v5, "fontName"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 77
    iget-object v5, p0, Lcom/samsung/android/settings/display/SecFontTrialSettings;->mBubbleListViewAdapter:Lcom/samsung/android/settings/display/FontPreviewBubbleListAdapter;

    sget v6, Lcom/android/settings/R$string;->font_preview_bubble_list_header_message3:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-virtual {v0, v6, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2, v3}, Lcom/samsung/android/settings/display/FontPreviewBubbleListAdapter;->addItem(Ljava/lang/String;Z)V

    .line 81
    :cond_2
    sget p2, Lcom/android/settings/R$id;->font_preview_bubble_count_text_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    move-object v7, p2

    check-cast v7, Landroid/widget/TextView;

    .line 82
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 84
    sget p2, Lcom/android/settings/R$id;->font_preview_edit_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    .line 85
    invoke-virtual {p2}, Landroid/widget/EditText;->requestFocus()Z

    .line 86
    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 87
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontTrialSettings;->mBubbleListViewAdapter:Lcom/samsung/android/settings/display/FontPreviewBubbleListAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/settings/display/FontPreviewBubbleListAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    const/16 v2, 0x14

    if-lt v1, v2, :cond_3

    .line 88
    invoke-virtual {p2, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 90
    :cond_3
    new-instance v1, Lcom/samsung/android/settings/display/SecFontTrialSettings$1;

    invoke-direct {v1, p0, v7, v0}, Lcom/samsung/android/settings/display/SecFontTrialSettings$1;-><init>(Lcom/samsung/android/settings/display/SecFontTrialSettings;Landroid/widget/TextView;Landroid/content/res/Resources;)V

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 116
    sget v1, Lcom/android/settings/R$drawable;->font_preview_send_button_icon:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 117
    sget v3, Lcom/android/settings/R$color;->font_preview_send_button_tint_color:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 119
    sget v2, Lcom/android/settings/R$id;->font_preview_send_button:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/ImageButton;

    .line 120
    invoke-virtual {v8, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 121
    new-instance v9, Lcom/samsung/android/settings/display/SecFontTrialSettings$$ExternalSyntheticLambda1;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move-object v5, v8

    move-object v6, v0

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/settings/display/SecFontTrialSettings$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/display/SecFontTrialSettings;Landroid/widget/EditText;Landroid/widget/ListView;Landroid/widget/ImageButton;Landroid/content/res/Resources;Landroid/widget/TextView;)V

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    sget p0, Lcom/android/settings/R$id;->ScreenPreview:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/16 p1, 0xf

    .line 142
    invoke-virtual {p0, p1}, Landroid/view/View;->semSetRoundedCorners(I)V

    .line 143
    sget p2, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    return-void
.end method

.method getFragmentLayoutResId()I
    .locals 0

    .line 46
    sget p0, Lcom/android/settings/R$layout;->sec_font_trial:I

    return p0
.end method

.method invalid()Z
    .locals 1

    .line 147
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecFontTrialSettings;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isSemAvailable(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget p0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v0, 0x18894

    if-ge p0, v0, :cond_0

    .line 149
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid: cause: Build.VERSION.SEM_PLATFORM_INT="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SecFontTrialSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method release()V
    .locals 0

    .line 156
    invoke-static {}, Lcom/samsung/android/settings/display/SecDisplayUtils;->deletePreviewFont()V

    return-void
.end method

.method saveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 160
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontTrialSettings;->mBubbleListViewAdapter:Lcom/samsung/android/settings/display/FontPreviewBubbleListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/FontPreviewBubbleListAdapter;->getCount()I

    move-result v0

    .line 161
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 164
    iget-object v3, p0, Lcom/samsung/android/settings/display/SecFontTrialSettings;->mBubbleListViewAdapter:Lcom/samsung/android/settings/display/FontPreviewBubbleListAdapter;

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/display/FontPreviewBubbleListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/display/FontPreviewBubbleListItem;

    .line 165
    invoke-virtual {v3}, Lcom/samsung/android/settings/display/FontPreviewBubbleListItem;->getMessageText()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "PreviewFontMessageList"

    .line 167
    invoke-virtual {p1, p0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
