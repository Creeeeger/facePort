.class Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter;
.super Landroid/widget/BaseAdapter;
.source "BriefPopUpKeywordColorLayoutPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextColorListAdapter"
.end annotation


# instance fields
.field mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;


# direct methods
.method static bridge synthetic -$$Nest$mfinishEdit(Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter;->finishEdit(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateText(Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter;->updateText(Landroid/view/View;)V

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter;->this$0:Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 333
    invoke-static {p1}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter;-><init>(Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;)V

    return-void
.end method

.method private createConvertView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 477
    iget-object p0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/android/settings/R$layout;->brief_popup_keyword_text_color_item_layout:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private finishEdit(Landroid/view/View;)V
    .locals 2

    .line 447
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 448
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget v1, Lcom/android/settings/R$id;->text_wrong:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 450
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 453
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter;->this$0:Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;

    invoke-static {p0}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;)Landroid/content/Context;

    move-result-object p0

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    .line 454
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method private updateAppCustomColorIcon(Landroid/widget/Button;I)V
    .locals 1

    if-eqz p1, :cond_1

    .line 430
    iget-object p0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter;->this$0:Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;

    invoke-static {p0}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;)Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/settings/R$drawable;->brief_popup_keyword_text_color_icon_bg:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 431
    instance-of v0, p0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    .line 432
    check-cast p0, Landroid/graphics/drawable/GradientDrawable;

    .line 434
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 435
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 437
    :cond_0
    invoke-virtual {p1}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 438
    invoke-virtual {p1}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$PackageInfo;

    if-eqz p0, :cond_1

    .line 439
    invoke-virtual {p1}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$PackageInfo;

    .line 440
    iput p2, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$PackageInfo;->appColor:I

    :cond_1
    return-void
.end method

.method private updateText(Landroid/view/View;)V
    .locals 3

    .line 458
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 461
    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 462
    iget-object v2, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter;->this$0:Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;

    invoke-static {v2, v1}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->-$$Nest$misAddAvailable(Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 463
    iget-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter;->this$0:Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/notification/brief/BriefPopUpUtils;->loadCustomTextColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 464
    iget-object v2, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter;->this$0:Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/samsung/android/settings/notification/brief/BriefPopUpUtils;->saveCustomTextColor(Landroid/content/Context;Ljava/lang/String;I)V

    .line 465
    iget-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter;->this$0:Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/notification/brief/BriefPopUpUtils;->removeCustomTextColor(Landroid/content/Context;Ljava/lang/String;)V

    .line 466
    iget-object p0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter;->this$0:Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v1, v0}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->-$$Nest$mupdateTextList(Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 469
    :cond_1
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 470
    iget-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter;->this$0:Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;)Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter;->this$0:Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;

    invoke-static {p0}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->brief_popup_keyword_color_already_define:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 472
    :cond_2
    move-object p0, p1

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    .line 337
    iget-object p0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter;->this$0:Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;

    invoke-static {p0}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->-$$Nest$fgetmCustomTextFilterList(Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    if-nez p2, :cond_0

    .line 353
    invoke-direct {p0, p3}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter;->createConvertView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 356
    :cond_0
    sget p3, Lcom/android/settings/R$id;->text_name:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/EditText;

    .line 357
    sget v0, Lcom/android/settings/R$id;->text_color_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 358
    sget v1, Lcom/android/settings/R$id;->delete_icon:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 360
    iget-object v2, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter;->this$0:Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->-$$Nest$fgetmCustomTextFilterList(Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter;->getCount()I

    move-result v3

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    return-object v3

    .line 365
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v4, p1, :cond_2

    .line 366
    sget v4, Lcom/android/settings/R$id;->normal_divider:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    const-string v4, "disableImage=true"

    .line 369
    invoke-virtual {p3, v4}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p3}, Landroid/widget/EditText;->getImeOptions()I

    move-result v4

    const/high16 v5, 0x2000000

    or-int/2addr v4, v5

    invoke-virtual {p3, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 371
    invoke-virtual {p3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 372
    invoke-virtual {p3, v2}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 374
    new-instance v4, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter$1;-><init>(Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter;)V

    invoke-virtual {p3, v4}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 384
    new-instance v4, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter$2;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter$2;-><init>(Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter;)V

    invoke-virtual {p3, v4}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 398
    new-instance v4, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter$3;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter$3;-><init>(Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter;)V

    invoke-virtual {p3, v4}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 413
    new-instance v4, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$CustomWhatcher;

    iget-object v5, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter;->this$0:Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;

    invoke-direct {v4, v5, p2, v3}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$CustomWhatcher;-><init>(Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;Landroid/view/View;Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$CustomWhatcher-IA;)V

    invoke-virtual {p3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 415
    iget-object p3, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter;->this$0:Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;

    invoke-static {p3}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;)Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, v2}, Lcom/samsung/android/settings/notification/brief/BriefPopUpUtils;->loadCustomTextColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    invoke-direct {p0, v0, p3}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter;->updateAppCustomColorIcon(Landroid/widget/Button;I)V

    .line 417
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter;->getCount()I

    move-result p3

    sub-int/2addr p3, p1

    add-int/lit8 p3, p3, -0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 418
    iget-object p3, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter;->this$0:Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;

    iget-object p3, p3, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mCustomTextColorClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 420
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter;->getCount()I

    move-result p3

    sub-int/2addr p3, p1

    add-int/lit8 p3, p3, -0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 421
    iget-object p3, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter;->this$0:Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;

    iget-object p3, p3, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mCustomTextColorClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 423
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter;->getCount()I

    move-result p0

    sub-int/2addr p0, p1

    add-int/lit8 p0, p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p2
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .line 483
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 485
    iget-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter;->this$0:Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->-$$Nest$fgetmTextListAdapter(Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;)Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter;->this$0:Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;

    invoke-static {p0}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->-$$Nest$fgetmTextListView(Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;)Landroid/widget/ListView;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->setListViewHeight(Landroid/widget/BaseAdapter;Landroid/widget/ListView;)V

    return-void
.end method
