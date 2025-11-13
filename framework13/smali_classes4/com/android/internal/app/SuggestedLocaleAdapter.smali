.class public Lcom/android/internal/app/SuggestedLocaleAdapter;
.super Landroid/widget/BaseAdapter;
.source "SuggestedLocaleAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;
    }
.end annotation


# static fields
.field private static final blacklist APP_LANGUAGE_PICKER_TYPE_COUNT:I = 0x6

.field private static final blacklist MIN_REGIONS_FOR_SUGGESTIONS:I = 0x6

.field private static final blacklist SYSTEM_LANGUAGE_TYPE_COUNT:I = 0x3

.field private static final blacklist SYSTEM_LANGUAGE_WITHOUT_HEADER_TYPE_COUNT:I = 0x1

.field private static final blacklist TYPE_CURRENT_LOCALE:I = 0x4

.field private static final blacklist TYPE_HEADER_ALL_OTHERS:I = 0x1

.field private static final blacklist TYPE_HEADER_SUGGESTED:I = 0x0

.field private static final blacklist TYPE_HEADER_SUGGESTED_SEC:I = 0x3

.field private static final blacklist TYPE_LOCALE:I = 0x2

.field private static final blacklist TYPE_SYSTEM_LANGUAGE_FOR_APP_LANGUAGE_PICKER:I = 0x5


# instance fields
.field private blacklist mAppPackageName:Ljava/lang/String;

.field private blacklist mContextOverride:Landroid/content/Context;

.field private final blacklist mCountryMode:Z

.field private blacklist mDisplayLocale:Ljava/util/Locale;

.field private blacklist mInflater:Landroid/view/LayoutInflater;

.field private blacklist mIsShowAll:Z

.field private blacklist mLocaleOptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLocaleOptionsforSecSuggested:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLocaleOptionsforShowAll:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mOriginalLocaleOptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSecSuggestionCount:I

.field private blacklist mSubheaderColor:I

.field private blacklist mSuggestionCount:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCountryMode(Lcom/android/internal/app/SuggestedLocaleAdapter;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsShowAll(Lcom/android/internal/app/SuggestedLocaleAdapter;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mIsShowAll:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLocaleOptions(Lcom/android/internal/app/SuggestedLocaleAdapter;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOriginalLocaleOptions(Lcom/android/internal/app/SuggestedLocaleAdapter;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mOriginalLocaleOptions:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSecSuggestionCount(Lcom/android/internal/app/SuggestedLocaleAdapter;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSecSuggestionCount:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSuggestionCount(Lcom/android/internal/app/SuggestedLocaleAdapter;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLocaleOptions(Lcom/android/internal/app/SuggestedLocaleAdapter;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOriginalLocaleOptions(Lcom/android/internal/app/SuggestedLocaleAdapter;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mOriginalLocaleOptions:Ljava/util/ArrayList;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSecSuggestionCount(Lcom/android/internal/app/SuggestedLocaleAdapter;I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSecSuggestionCount:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSuggestionCount(Lcom/android/internal/app/SuggestedLocaleAdapter;I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Set;Z)V
    .locals 1
    .param p2, "countryMode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 94
    .local p1, "localeOptions":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/app/SuggestedLocaleAdapter;-><init>(Ljava/util/Set;ZLjava/lang/String;)V

    .line 95
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Set;ZLjava/lang/String;)V
    .locals 3
    .param p2, "countryMode"    # Z
    .param p3, "appPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 98
    .local p1, "localeOptions":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mDisplayLocale:Ljava/util/Locale;

    .line 81
    iput-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mContextOverride:Landroid/content/Context;

    .line 99
    iput-boolean p2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    .line 101
    iput-object p3, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mAppPackageName:Ljava/lang/String;

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mIsShowAll:Z

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptionsforSecSuggested:Ljava/util/ArrayList;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptionsforShowAll:Ljava/util/ArrayList;

    .line 108
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 111
    .local v1, "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSuggested()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    iget v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    goto :goto_1

    .line 113
    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSecSuggested()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 114
    iget v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSecSuggestionCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSecSuggestionCount:I

    .line 117
    :cond_1
    :goto_1
    iget-boolean v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    if-eqz v2, :cond_2

    .line 118
    iget-object v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 119
    :cond_2
    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSuggested()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSecSuggested()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 120
    :cond_3
    iget-object v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptionsforSecSuggested:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptionsforShowAll:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    .end local v1    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    goto :goto_0

    .line 135
    :cond_5
    iget-boolean v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    if-nez v0, :cond_6

    .line 136
    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptionsforSecSuggested:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 139
    :cond_6
    return-void
.end method

.method private blacklist addStateDescriptionIntoCurrentLocaleItem(Landroid/view/View;)V
    .locals 2
    .param p1, "root"    # Landroid/view/View;

    .line 802
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10402c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 803
    .local v0, "description":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/view/View;->setStateDescription(Ljava/lang/CharSequence;)V

    .line 804
    return-void
.end method

.method private blacklist getNewViewIfNeeded(Landroid/view/View;Landroid/view/ViewGroup;II)Landroid/view/View;
    .locals 10
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "itemType"    # I
    .param p4, "position"    # I

    .line 447
    move-object v0, p1

    .line 449
    .local v0, "updatedView":Landroid/view/View;
    const v1, 0x1090041

    const v2, 0x10203a3

    const v3, 0x10203b7

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch p3, :pswitch_data_0

    .line 514
    :pswitch_0
    instance-of v1, p1, Landroid/view/ViewGroup;

    const v2, 0x10202c5

    if-eqz v1, :cond_5

    .line 515
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 516
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_5

    move v1, v4

    goto/16 :goto_4

    .line 473
    :pswitch_1
    invoke-virtual {p0, p4}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v6}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isAppCurrentLocale()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 474
    instance-of v3, p1, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    .line 475
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    move v2, v4

    .line 476
    .local v2, "shouldReuseView":Z
    if-nez v2, :cond_e

    .line 477
    iget-object v3, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v3, v1, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 480
    invoke-direct {p0, v0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->addStateDescriptionIntoCurrentLocaleItem(Landroid/view/View;)V

    .line 482
    invoke-direct {p0, v0, p4}, Lcom/android/internal/app/SuggestedLocaleAdapter;->semApplyRoundedCorner(Landroid/view/View;I)V

    goto/16 :goto_7

    .line 486
    .end local v2    # "shouldReuseView":Z
    :cond_1
    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 487
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move v4, v5

    :goto_1
    move v2, v4

    .line 488
    .restart local v2    # "shouldReuseView":Z
    if-nez v2, :cond_e

    .line 489
    iget-object v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x10900ac

    invoke-virtual {v1, v3, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 492
    invoke-direct {p0, v0, p4}, Lcom/android/internal/app/SuggestedLocaleAdapter;->semApplyRoundedCorner(Landroid/view/View;I)V

    goto/16 :goto_7

    .line 498
    .end local v2    # "shouldReuseView":Z
    :pswitch_2
    instance-of v3, p1, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_3

    .line 499
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move v4, v5

    :goto_2
    move v2, v4

    .line 500
    .restart local v2    # "shouldReuseView":Z
    if-nez v2, :cond_e

    .line 501
    iget-object v3, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v3, v1, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 503
    invoke-direct {p0, v0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->addStateDescriptionIntoCurrentLocaleItem(Landroid/view/View;)V

    .line 506
    invoke-direct {p0, v0, p4}, Lcom/android/internal/app/SuggestedLocaleAdapter;->semApplyRoundedCorner(Landroid/view/View;I)V

    goto/16 :goto_7

    .line 456
    .end local v2    # "shouldReuseView":Z
    :pswitch_3
    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_4

    const v1, 0x1020530

    .line 457
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    move v4, v5

    :goto_3
    move v2, v4

    .line 458
    .restart local v2    # "shouldReuseView":Z
    if-nez v2, :cond_e

    .line 459
    new-instance v1, Lcom/android/internal/app/LocalePickerItemView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-direct {v1, v3, v5, v4}, Lcom/android/internal/app/LocalePickerItemView;-><init>(Landroid/content/Context;ILandroid/view/LayoutInflater;)V

    move-object v0, v1

    goto/16 :goto_7

    .line 516
    .end local v2    # "shouldReuseView":Z
    :cond_5
    move v1, v5

    .line 517
    .local v1, "shouldReuseView":Z
    :goto_4
    if-nez v1, :cond_6

    .line 518
    new-instance v6, Lcom/android/internal/app/LocalePickerItemView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-direct {v6, v7, v4, v8}, Lcom/android/internal/app/LocalePickerItemView;-><init>(Landroid/content/Context;ILandroid/view/LayoutInflater;)V

    move-object v0, v6

    .line 523
    :cond_6
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 524
    .local v3, "text":Landroid/widget/TextView;
    invoke-virtual {p0, p4}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 525
    .local v6, "item":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    iget-boolean v7, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    invoke-virtual {v6, v7}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLabel(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 526
    invoke-virtual {v6}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextLocale(Ljava/util/Locale;)V

    .line 527
    iget-boolean v7, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    invoke-virtual {v6, v7}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getContentDescription(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 529
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 530
    .local v2, "divder":Landroid/view/View;
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 532
    invoke-virtual {v6}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v5

    .line 534
    .local v5, "layoutDir":I
    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutDirection(I)V

    .line 535
    if-ne v5, v4, :cond_7

    .line 536
    const/4 v7, 0x4

    goto :goto_5

    .line 537
    :cond_7
    const/4 v7, 0x3

    .line 535
    :goto_5
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 539
    const/4 v7, 0x0

    .line 540
    .local v7, "isTopCorner":Z
    const/4 v8, 0x0

    .line 542
    .local v8, "corners":I
    if-eq p4, v4, :cond_8

    iget v9, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    if-lez v9, :cond_9

    add-int/lit8 v9, v9, 0x2

    if-ne p4, v9, :cond_9

    .line 543
    :cond_8
    const/4 v8, 0x3

    .line 544
    const/4 v7, 0x1

    .line 547
    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getCount()I

    move-result v9

    sub-int/2addr v9, v4

    if-eq p4, v9, :cond_a

    iget v4, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    if-lez v4, :cond_c

    if-ne p4, v4, :cond_c

    .line 548
    :cond_a
    if-eqz v7, :cond_b

    const/16 v4, 0xf

    goto :goto_6

    :cond_b
    const/16 v4, 0xc

    :goto_6
    move v8, v4

    .line 549
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 552
    :cond_c
    invoke-virtual {v0, v8}, Landroid/view/View;->semSetRoundedCorners(I)V

    .line 553
    if-eqz v8, :cond_d

    .line 554
    iget v4, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSubheaderColor:I

    invoke-virtual {v0, v8, v4}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    .line 565
    .end local v2    # "divder":Landroid/view/View;
    .end local v3    # "text":Landroid/widget/TextView;
    .end local v5    # "layoutDir":I
    .end local v6    # "item":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .end local v7    # "isTopCorner":Z
    .end local v8    # "corners":I
    :cond_d
    move v2, v1

    .end local v1    # "shouldReuseView":Z
    .local v2, "shouldReuseView":Z
    :cond_e
    :goto_7
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private blacklist semApplyRoundedCorner(Landroid/view/View;I)V
    .locals 8
    .param p1, "updatedView"    # Landroid/view/View;
    .param p2, "position"    # I

    .line 577
    const v0, 0x10203b7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 578
    .local v0, "text":Landroid/widget/TextView;
    invoke-virtual {p0, p2}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 579
    .local v1, "item":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    iget-boolean v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    invoke-virtual {v1, v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLabel(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 580
    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextLocale(Ljava/util/Locale;)V

    .line 581
    iget-boolean v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    invoke-virtual {v1, v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getContentDescription(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 583
    const v2, 0x10202c5

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 584
    .local v2, "divder":Landroid/view/View;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 586
    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v3

    .line 588
    .local v3, "layoutDir":I
    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutDirection(I)V

    .line 589
    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 590
    const/4 v5, 0x4

    goto :goto_0

    .line 591
    :cond_0
    const/4 v5, 0x3

    .line 589
    :goto_0
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 593
    const/4 v5, 0x0

    .line 594
    .local v5, "isTopCorner":Z
    const/4 v6, 0x0

    .line 596
    .local v6, "corners":I
    if-eq p2, v4, :cond_1

    iget v7, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    if-lez v7, :cond_2

    add-int/lit8 v7, v7, 0x2

    if-ne p2, v7, :cond_2

    .line 598
    :cond_1
    const/4 v6, 0x3

    .line 600
    const/4 v5, 0x1

    .line 603
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getCount()I

    move-result v7

    sub-int/2addr v7, v4

    if-eq p2, v7, :cond_3

    iget v4, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    if-lez v4, :cond_5

    if-ne p2, v4, :cond_5

    .line 605
    :cond_3
    if-eqz v5, :cond_4

    const/16 v4, 0xf

    goto :goto_1

    .line 607
    :cond_4
    const/16 v4, 0xc

    :goto_1
    move v6, v4

    .line 608
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 611
    :cond_5
    invoke-virtual {p1, v6}, Landroid/view/View;->semSetRoundedCorners(I)V

    .line 612
    if-eqz v6, :cond_6

    .line 613
    iget v4, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSubheaderColor:I

    invoke-virtual {p1, v6, v4}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    .line 615
    :cond_6
    return-void
.end method

.method private blacklist setTextTo(Landroid/widget/TextView;I)V
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "resId"    # I

    .line 352
    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mContextOverride:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 353
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 355
    :cond_0
    invoke-virtual {v0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    :goto_0
    return-void
.end method

.method private blacklist showHeaders()Z
    .locals 1

    .line 628
    iget v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist showSecHeaders()Z
    .locals 2

    .line 570
    iget-boolean v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 571
    return v1

    .line 573
    :cond_0
    iget v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSecSuggestionCount:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private blacklist updateTextView(Landroid/view/View;Landroid/widget/TextView;I)V
    .locals 3
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "text"    # Landroid/widget/TextView;
    .param p3, "position"    # I

    .line 787
    invoke-virtual {p0, p3}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 788
    .local v0, "item":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    iget-boolean v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLabel(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 789
    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextLocale(Ljava/util/Locale;)V

    .line 790
    iget-boolean v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getContentDescription(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 791
    iget-boolean v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    if-eqz v1, :cond_1

    .line 792
    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    .line 794
    .local v1, "layoutDir":I
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutDirection(I)V

    .line 795
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 796
    const/4 v2, 0x4

    goto :goto_0

    .line 797
    :cond_0
    const/4 v2, 0x3

    .line 795
    :goto_0
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 799
    .end local v1    # "layoutDir":I
    :cond_1
    return-void
.end method


# virtual methods
.method public whitelist areAllItemsEnabled()Z
    .locals 1

    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCount()I
    .locals 3

    .line 266
    const/4 v0, 0x0

    .line 269
    .local v0, "offset":I
    invoke-direct {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->showHeaders()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 270
    invoke-direct {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->showSecHeaders()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    iget-object v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 273
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 271
    :cond_1
    :goto_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 275
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->showSecHeaders()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 276
    iget v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSecSuggestionCount:I

    iget-object v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 277
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 279
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 282
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 285
    :goto_1
    iget-object v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public whitelist getFilter()Landroid/widget/Filter;
    .locals 1

    .line 783
    new-instance v0, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;

    invoke-direct {v0, p0}, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;-><init>(Lcom/android/internal/app/SuggestedLocaleAdapter;)V

    return-object v0
.end method

.method public whitelist getItem(I)Ljava/lang/Object;
    .locals 4
    .param p1, "position"    # I

    .line 299
    const/4 v0, 0x0

    .line 302
    .local v0, "offset":I
    invoke-direct {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->showHeaders()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 303
    iget v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    iget-object v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 304
    const/4 v0, -0x1

    goto :goto_1

    .line 305
    :cond_0
    iget v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSecSuggestionCount:I

    if-lez v1, :cond_3

    .line 306
    iget v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    if-le p1, v2, :cond_1

    add-int v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    if-gt p1, v3, :cond_1

    .line 308
    const/4 v0, -0x2

    goto :goto_1

    .line 309
    :cond_1
    add-int/2addr v2, v1

    if-le p1, v2, :cond_2

    .line 310
    const/4 v0, -0x3

    goto :goto_1

    .line 312
    :cond_2
    const/4 v0, -0x1

    goto :goto_1

    .line 315
    :cond_3
    iget v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    if-le p1, v1, :cond_4

    const/4 v1, -0x2

    goto :goto_0

    :cond_4
    const/4 v1, -0x1

    :goto_0
    move v0, v1

    goto :goto_1

    .line 318
    :cond_5
    const/4 v0, -0x1

    .line 327
    :goto_1
    iget-object v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    add-int v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 332
    int-to-long v0, p1

    return-wide v0
.end method

.method public whitelist getItemViewType(I)I
    .locals 8
    .param p1, "position"    # I

    .line 157
    invoke-direct {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->showHeaders()Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x5

    const/4 v4, 0x1

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->showSecHeaders()Z

    move-result v0

    if-nez v0, :cond_3

    .line 158
    if-nez p1, :cond_0

    .line 159
    return v4

    .line 161
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 162
    .local v0, "item":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSystemLocale()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 163
    return v3

    .line 165
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isAppCurrentLocale()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 166
    return v1

    .line 168
    :cond_2
    return v2

    .line 169
    .end local v0    # "item":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->showHeaders()Z

    move-result v0

    const/4 v5, 0x3

    if-eqz v0, :cond_a

    .line 170
    if-nez p1, :cond_4

    .line 171
    const/4 v0, 0x0

    return v0

    .line 173
    :cond_4
    iget v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSecSuggestionCount:I

    if-lez v0, :cond_6

    .line 174
    iget v6, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    add-int/lit8 v7, v6, 0x1

    if-ne p1, v7, :cond_5

    .line 175
    return v5

    .line 177
    :cond_5
    add-int/2addr v6, v4

    add-int/2addr v6, v0

    add-int/2addr v6, v4

    if-ne p1, v6, :cond_7

    .line 178
    return v4

    .line 181
    :cond_6
    iget v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    add-int/2addr v0, v4

    if-ne p1, v0, :cond_7

    .line 182
    return v4

    .line 185
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 186
    .restart local v0    # "item":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSystemLocale()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 187
    return v3

    .line 189
    :cond_8
    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isAppCurrentLocale()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 190
    return v1

    .line 192
    :cond_9
    return v2

    .line 193
    .end local v0    # "item":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_a
    invoke-direct {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->showSecHeaders()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 194
    if-nez p1, :cond_b

    .line 195
    return v5

    .line 196
    :cond_b
    iget v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSecSuggestionCount:I

    add-int/2addr v0, v4

    if-ne p1, v0, :cond_c

    .line 197
    return v4

    .line 200
    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 201
    .restart local v0    # "item":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSystemLocale()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 202
    return v3

    .line 204
    :cond_d
    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isAppCurrentLocale()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 205
    return v1

    .line 207
    :cond_e
    return v2
.end method

.method public blacklist getSecSuggestionCount()I
    .locals 1

    .line 663
    iget v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSecSuggestionCount:I

    return v0
.end method

.method public blacklist getShowAll()Z
    .locals 1

    .line 659
    iget-boolean v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mIsShowAll:Z

    return v0
.end method

.method public whitelist getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 362
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 363
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 366
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getItemViewType(I)I

    move-result v0

    .line 367
    .local v0, "itemType":I
    invoke-direct {p0, p2, p3, v0, p1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getNewViewIfNeeded(Landroid/view/View;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v1

    .line 368
    .local v1, "itemView":Landroid/view/View;
    const v2, 0x10203a3

    const v3, 0x10203b7

    packed-switch v0, :pswitch_data_0

    .line 438
    :pswitch_0
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-direct {p0, v1, v2, p1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->updateTextView(Landroid/view/View;Landroid/widget/TextView;I)V

    goto/16 :goto_3

    .line 414
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v4}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isAppCurrentLocale()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 416
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .local v2, "title":Landroid/widget/TextView;
    goto :goto_0

    .line 422
    .end local v2    # "title":Landroid/widget/TextView;
    :cond_1
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 424
    .restart local v2    # "title":Landroid/widget/TextView;
    :goto_0
    const v3, 0x1040df1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 425
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 426
    goto :goto_3

    .line 429
    .end local v2    # "title":Landroid/widget/TextView;
    :pswitch_2
    nop

    .line 430
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 429
    invoke-direct {p0, v1, v2, p1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->updateTextView(Landroid/view/View;Landroid/widget/TextView;I)V

    .line 436
    goto :goto_3

    .line 377
    :pswitch_3
    const v2, 0x1020530

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 378
    .local v2, "textView":Landroid/widget/TextView;
    if-nez v0, :cond_2

    .line 379
    const v3, 0x1040693

    invoke-direct {p0, v2, v3}, Lcom/android/internal/app/SuggestedLocaleAdapter;->setTextTo(Landroid/widget/TextView;I)V

    goto :goto_1

    .line 380
    :cond_2
    const/4 v3, 0x3

    if-ne v0, v3, :cond_4

    .line 381
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "CscFeature_Common_ReplaceSecBrandAsGalaxy"

    invoke-virtual {v3, v5, v4}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 383
    const v3, 0x1040695

    invoke-direct {p0, v2, v3}, Lcom/android/internal/app/SuggestedLocaleAdapter;->setTextTo(Landroid/widget/TextView;I)V

    goto :goto_1

    .line 385
    :cond_3
    const v3, 0x1040694

    invoke-direct {p0, v2, v3}, Lcom/android/internal/app/SuggestedLocaleAdapter;->setTextTo(Landroid/widget/TextView;I)V

    goto :goto_1

    .line 388
    :cond_4
    iget-boolean v3, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    if-eqz v3, :cond_5

    .line 389
    const v3, 0x1040b6c

    invoke-direct {p0, v2, v3}, Lcom/android/internal/app/SuggestedLocaleAdapter;->setTextTo(Landroid/widget/TextView;I)V

    goto :goto_1

    .line 391
    :cond_5
    const v3, 0x1040692

    invoke-direct {p0, v2, v3}, Lcom/android/internal/app/SuggestedLocaleAdapter;->setTextTo(Landroid/widget/TextView;I)V

    .line 394
    :goto_1
    nop

    .line 395
    iget-object v3, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mDisplayLocale:Ljava/util/Locale;

    if-eqz v3, :cond_6

    goto :goto_2

    :cond_6
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    .line 394
    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextLocale(Ljava/util/Locale;)V

    .line 411
    .end local v2    # "textView":Landroid/widget/TextView;
    nop

    .line 441
    :goto_3
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public whitelist getViewTypeCount()I
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mAppPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->showHeaders()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    const/4 v0, 0x6

    return v0

    .line 247
    :cond_0
    const/4 v0, 0x4

    return v0
.end method

.method public whitelist isEnabled(I)Z
    .locals 2
    .param p1, "position"    # I

    .line 148
    invoke-virtual {p0, p1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 149
    invoke-virtual {p0, p1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    .line 150
    invoke-virtual {p0, p1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 148
    :goto_1
    return v0
.end method

.method public blacklist setDisplayLocale(Landroid/content/Context;Ljava/util/Locale;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 340
    if-nez p2, :cond_0

    .line 341
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mDisplayLocale:Ljava/util/Locale;

    .line 342
    iput-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mContextOverride:Landroid/content/Context;

    goto :goto_0

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mDisplayLocale:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 344
    iput-object p2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mDisplayLocale:Ljava/util/Locale;

    .line 345
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 346
    .local v0, "configOverride":Landroid/content/res/Configuration;
    invoke-virtual {v0, p2}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 347
    invoke-virtual {p1, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mContextOverride:Landroid/content/Context;

    .line 349
    .end local v0    # "configOverride":Landroid/content/res/Configuration;
    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist setSecSuggestionCount(I)V
    .locals 0
    .param p1, "count"    # I

    .line 667
    iput p1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSecSuggestionCount:I

    .line 668
    return-void
.end method

.method public blacklist setShowAll(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .line 655
    iput-boolean p1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mIsShowAll:Z

    .line 656
    return-void
.end method

.method public blacklist showAllItems()V
    .locals 2

    .line 639
    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 640
    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptionsforShowAll:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 642
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mIsShowAll:Z

    .line 643
    invoke-virtual {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->notifyDataSetChanged()V

    .line 644
    return-void
.end method

.method public blacklist showSamsungSuggestedItems()V
    .locals 2

    .line 647
    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 648
    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptionsforSecSuggested:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 650
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mIsShowAll:Z

    .line 651
    invoke-virtual {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->notifyDataSetChanged()V

    .line 652
    return-void
.end method

.method public blacklist sort(Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;)V
    .locals 1
    .param p1, "comp"    # Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;

    .line 677
    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptionsforShowAll:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 678
    return-void
.end method

.method public blacklist sortForSecSuggested(Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;)V
    .locals 1
    .param p1, "comp"    # Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;

    .line 686
    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 687
    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptionsforSecSuggested:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 688
    return-void
.end method

.method public blacklist updateTheme(Landroid/view/LayoutInflater;I)V
    .locals 0
    .param p1, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p2, "color"    # I

    .line 691
    iput-object p1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 692
    iput p2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSubheaderColor:I

    .line 693
    return-void
.end method
