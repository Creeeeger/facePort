.class public Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;
.super Lcom/android/settingslib/widget/LayoutPreference;
.source "BriefPopUpKeywordColorLayoutPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$PackageInfo;,
        Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$SavedState;,
        Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$CustomWhatcher;,
        Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter;
    }
.end annotation


# static fields
.field public static customViewHandler:Landroid/os/Handler;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mColorPickerDialog:Landroidx/picker3/app/SeslColorPickerDialog;

.field private mContext:Landroid/content/Context;

.field private mCoustomColorOnClickListener:Landroid/view/View$OnClickListener;

.field mCustomTextColorClickListener:Landroid/view/View$OnClickListener;

.field private mCustomTextFilterList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEditTextView:Landroid/widget/EditText;

.field private mEditTextViewName:Ljava/lang/String;

.field private mEditWrongText:Landroid/widget/TextView;

.field private mMainText:Landroid/widget/TextView;

.field private mNotiIconBg:Landroid/view/View;

.field private mPreviousColor:I

.field private mSelectTextColorButton:Landroid/widget/Button;

.field private mTextAddButton:Landroid/widget/Button;

.field mTextColorSetListener:Landroidx/picker3/app/SeslColorPickerDialog$OnColorSetListener;

.field private mTextListAdapter:Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter;

.field private mTextListView:Landroid/widget/ListView;

.field resetCustomView:Ljava/lang/Runnable;


# direct methods
.method static bridge synthetic -$$Nest$fgetTAG(Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCustomTextFilterList(Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mCustomTextFilterList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEditTextView(Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mEditTextView:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMainText(Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mMainText:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSelectTextColorButton(Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mSelectTextColorButton:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTextListAdapter(Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;)Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mTextListAdapter:Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTextListView(Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;)Landroid/widget/ListView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mTextListView:Landroid/widget/ListView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmPreviousColor(Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mPreviousColor:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSelectTextColorButton(Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;Landroid/widget/Button;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mSelectTextColorButton:Landroid/widget/Button;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckTextAvailable(Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->checkTextAvailable()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdeleteTextList(Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->deleteTextList(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$minitCustomView(Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->initCustomView()V

    return-void
.end method

.method static bridge synthetic -$$Nest$misAddAvailable(Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->isAddAvailable(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msaveAppCustomColorText(Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->saveAppCustomColorText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowSeslColorPicker(Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->showSeslColorPicker()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateAppCustomColorIcon(Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;Landroid/widget/Button;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->updateAppCustomColorIcon(Landroid/widget/Button;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateTextList(Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->updateTextList(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->customViewHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/widget/LayoutPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    const-class p2, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->TAG:Ljava/lang/String;

    .line 249
    new-instance p2, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$4;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$4;-><init>(Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;)V

    iput-object p2, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mCoustomColorOnClickListener:Landroid/view/View$OnClickListener;

    .line 511
    new-instance p2, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$5;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$5;-><init>(Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;)V

    iput-object p2, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mCustomTextColorClickListener:Landroid/view/View$OnClickListener;

    .line 585
    new-instance p2, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$6;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$6;-><init>(Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;)V

    iput-object p2, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mTextColorSetListener:Landroidx/picker3/app/SeslColorPickerDialog$OnColorSetListener;

    .line 606
    new-instance p2, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$7;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$7;-><init>(Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;)V

    iput-object p2, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->resetCustomView:Ljava/lang/Runnable;

    .line 83
    iput-object p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mContext:Landroid/content/Context;

    return-void
.end method

.method private addTextList(Ljava/lang/String;I)V
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mCustomTextFilterList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    iget-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/settings/notification/brief/BriefPopUpUtils;->saveCustomTextColor(Landroid/content/Context;Ljava/lang/String;I)V

    .line 276
    iget-object p0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mTextListAdapter:Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private checkTextAvailable()V
    .locals 7

    .line 202
    iget-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mEditTextView:Landroid/widget/EditText;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mTextAddButton:Landroid/widget/Button;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mEditWrongText:Landroid/widget/TextView;

    if-eqz v1, :cond_7

    .line 203
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 204
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->isAddAvailable(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/16 v4, 0x32

    const/4 v5, 0x0

    if-eqz v1, :cond_2

    .line 205
    iget-object v1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mEditWrongText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 207
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 208
    iget-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->brief_popup_keyword_color_text_too_long:I

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 209
    iget-object v1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mEditWrongText:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 210
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mEditWrongText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mTextAddButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$color;->brief_popup_edit_text_color_add_icon:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 215
    iget-object p0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mTextAddButton:Landroid/widget/Button;

    invoke-virtual {p0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_3

    .line 218
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_3

    .line 219
    iget-object v1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v6, Lcom/android/settings/R$string;->brief_popup_keyword_color_text_too_long:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v6, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 221
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/android/settings/R$string;->brief_popup_keyword_color_wrong_text:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-virtual {v1, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 223
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mEditWrongText:Landroid/widget/TextView;

    if-eqz v3, :cond_4

    .line 224
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    .line 229
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mEditWrongText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 227
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mEditWrongText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 231
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mTextAddButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$color;->brief_popup_edit_text_color_add_icon_disable:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 232
    iget-object p0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mTextAddButton:Landroid/widget/Button;

    invoke-virtual {p0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_7
    :goto_3
    return-void
.end method

.method private deleteTextList(I)V
    .locals 5

    .line 280
    iget-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mTextListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mTextListAdapter:Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter;->getCount()I

    move-result v1

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 283
    sget v1, Lcom/android/settings/R$id;->text_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 285
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 286
    iget-object v1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mTextListAdapter:Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter;->-$$Nest$mfinishEdit(Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter;Landroid/view/View;)V

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mCustomTextFilterList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/notification/brief/BriefPopUpUtils;->removeCustomTextColor(Landroid/content/Context;Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mCustomTextFilterList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 290
    iget-object v1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mCustomTextFilterList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 291
    iget-object p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mTextListAdapter:Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter;->notifyDataSetChanged()V

    .line 292
    iget-object p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mContext:Landroid/content/Context;

    const-string v1, "accessibility"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    if-eqz p1, :cond_1

    .line 293
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x4000

    .line 294
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 295
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 296
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/android/settings/R$string;->removed_color_by_keyword:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 299
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->checkTextAvailable()V

    :cond_2
    return-void
.end method

.method private init()V
    .locals 3

    .line 94
    sget v0, Lcom/android/settings/R$id;->custom_text_plus_btn:I

    invoke-virtual {p0, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mTextAddButton:Landroid/widget/Button;

    .line 95
    iget-object v1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mCoustomColorOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    sget v0, Lcom/android/settings/R$id;->custom_text_edit:I

    invoke-virtual {p0, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mEditTextView:Landroid/widget/EditText;

    const-string v1, "disableImage=true"

    .line 98
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mEditTextView:Landroid/widget/EditText;

    new-instance v1, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$1;-><init>(Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 113
    sget v0, Lcom/android/settings/R$id;->custom_text_wrong:I

    invoke-virtual {p0, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mEditWrongText:Landroid/widget/TextView;

    const/4 v1, 0x4

    .line 114
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mEditTextView:Landroid/widget/EditText;

    new-instance v1, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$2;-><init>(Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 132
    iget-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mEditTextView:Landroid/widget/EditText;

    new-instance v1, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$3;-><init>(Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 143
    sget v0, Lcom/android/settings/R$id;->text_color_list:I

    invoke-virtual {p0, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mTextListView:Landroid/widget/ListView;

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mCustomTextFilterList:Ljava/util/ArrayList;

    .line 145
    new-instance v0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter;-><init>(Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter-IA;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mTextListAdapter:Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter;

    .line 147
    iget-object v1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mTextListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 148
    iget-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mTextListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 150
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->initTextList()V

    .line 152
    sget v0, Lcom/android/settings/R$id;->brief_popup_sample_icon_bg:I

    invoke-virtual {p0, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mNotiIconBg:Landroid/view/View;

    .line 154
    sget v0, Lcom/android/settings/R$id;->main_text:I

    invoke-virtual {p0, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mMainText:Landroid/widget/TextView;

    .line 156
    iget-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mEditTextView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mEditTextViewName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 157
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->checkTextAvailable()V

    .line 161
    iget-object p0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    .line 162
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    const v0, 0x1020002

    .line 163
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 164
    new-instance v0, Landroidx/appcompat/view/SeslContentViewInsetsCallback;

    .line 165
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v2

    or-int/2addr v1, v2

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/view/SeslContentViewInsetsCallback;-><init>(II)V

    .line 166
    invoke-virtual {p0, v0}, Landroid/view/View;->setWindowInsetsAnimationCallback(Landroid/view/WindowInsetsAnimation$Callback;)V

    .line 167
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    return-void
.end method

.method private initCustomView()V
    .locals 3

    .line 505
    iget-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mMainText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mNotiIconBg:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 506
    iget-object v1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->brief_popup_sample_text_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 507
    iget-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mNotiIconBg:Landroid/view/View;

    iget-object p0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$color;->brief_popup_sample_icon_color:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method private initTextList()V
    .locals 3

    .line 238
    iget-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/brief/BriefPopUpUtils;->loadCustomTextList(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 241
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 243
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 244
    iget-object v2, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mCustomTextFilterList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 246
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mTextListAdapter:Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private isAddAvailable(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 314
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 318
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x32

    if-le v1, v2, :cond_1

    return v0

    .line 322
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/notification/brief/BriefPopUpUtils;->loadCustomTextColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method private saveAppCustomColorText(Ljava/lang/CharSequence;)V
    .locals 2

    .line 265
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->isAddAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$color;->brief_popup_edit_text_predefine_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->addTextList(Ljava/lang/String;I)V

    .line 268
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mEditTextView:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x32

    if-gt p1, v0, :cond_1

    .line 269
    iget-object p0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mEditTextView:Landroid/widget/EditText;

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private showSeslColorPicker()V
    .locals 7

    .line 579
    new-instance v6, Landroidx/picker3/app/SeslColorPickerDialog;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mTextColorSetListener:Landroidx/picker3/app/SeslColorPickerDialog$OnColorSetListener;

    iget v3, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mPreviousColor:I

    .line 580
    invoke-static {v1}, Lcom/samsung/android/settings/notification/brief/BriefPopUpUtils;->getRecentlyUsedColor(Landroid/content/Context;)[I

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroidx/picker3/app/SeslColorPickerDialog;-><init>(Landroid/content/Context;Landroidx/picker3/app/SeslColorPickerDialog$OnColorSetListener;I[IZ)V

    iput-object v6, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mColorPickerDialog:Landroidx/picker3/app/SeslColorPickerDialog;

    .line 582
    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private updateAppCustomColorIcon(Landroid/widget/Button;I)V
    .locals 2

    if-eqz p1, :cond_2

    .line 615
    iget-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$drawable;->brief_popup_keyword_text_color_icon_bg:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 616
    instance-of v1, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_0

    .line 617
    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 619
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 620
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 622
    :cond_0
    invoke-virtual {p1}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 623
    invoke-virtual {p1}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$PackageInfo;

    if-eqz v0, :cond_1

    .line 624
    invoke-virtual {p1}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$PackageInfo;

    .line 625
    iput p2, p1, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$PackageInfo;->appColor:I

    .line 629
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mNotiIconBg:Landroid/view/View;

    if-eqz p0, :cond_2

    .line 630
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_2
    return-void
.end method

.method private updateTextList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 304
    iget-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mCustomTextFilterList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 306
    iget-object v1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mCustomTextFilterList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 307
    iget-object p2, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mCustomTextFilterList:Ljava/util/ArrayList;

    invoke-virtual {p2, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 308
    iget-object p0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mTextListAdapter:Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 0

    .line 88
    invoke-super {p0, p1}, Lcom/android/settingslib/widget/LayoutPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 90
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->init()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 194
    iget-object p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mColorPickerDialog:Landroidx/picker3/app/SeslColorPickerDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 195
    iget-object p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mColorPickerDialog:Landroidx/picker3/app/SeslColorPickerDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 196
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->showSeslColorPicker()V

    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 184
    :try_start_0
    check-cast p1, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$SavedState;

    .line 185
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 186
    iget-object p1, p1, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$SavedState;->name:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mEditTextViewName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 189
    iget-object p0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->TAG:Ljava/lang/String;

    const-string v0, "ClassCastException in SavedState"

    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 174
    invoke-super {p0}, Landroidx/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 175
    new-instance v1, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$SavedState;

    invoke-direct {v1, v0}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 176
    iget-object p0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mEditTextView:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$SavedState;->name:Ljava/lang/String;

    return-object v1
.end method

.method public setListViewHeight(Landroid/widget/BaseAdapter;Landroid/widget/ListView;)V
    .locals 4

    .line 491
    invoke-virtual {p2}, Landroid/widget/ListView;->getWidth()I

    move-result p0

    const/high16 v0, -0x80000000

    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 493
    :goto_0
    invoke-virtual {p2}, Landroid/widget/ListView;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    const/4 v3, 0x0

    .line 494
    invoke-virtual {p1, v1, v3, p2}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 495
    invoke-virtual {v3, p0, v0}, Landroid/view/View;->measure(II)V

    .line 496
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 498
    :cond_0
    invoke-virtual {p2}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 499
    invoke-virtual {p2}, Landroid/widget/ListView;->getDividerHeight()I

    move-result p1

    invoke-virtual {p2}, Landroid/widget/ListView;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    mul-int/2addr p1, v0

    add-int/2addr v2, p1

    iput v2, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 500
    invoke-virtual {p2, p0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 501
    invoke-virtual {p2}, Landroid/widget/ListView;->requestLayout()V

    return-void
.end method
