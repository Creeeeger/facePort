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
.field protected static final blacklist APP_LANGUAGE_PICKER_TYPE_COUNT:I = 0x6

.field protected static final blacklist MIN_REGIONS_FOR_SUGGESTIONS:I = 0x6

.field protected static final blacklist SYSTEM_LANGUAGE_TYPE_COUNT:I = 0x3

.field protected static final blacklist SYSTEM_LANGUAGE_WITHOUT_HEADER_TYPE_COUNT:I = 0x1

.field protected static final blacklist TYPE_CURRENT_LOCALE:I = 0x4

.field protected static final blacklist TYPE_HEADER_ALL_OTHERS:I = 0x1

.field protected static final blacklist TYPE_HEADER_SUGGESTED:I = 0x0

.field protected static final blacklist TYPE_HEADER_SUGGESTED_SEC:I = 0x3

.field protected static final blacklist TYPE_LOCALE:I = 0x2

.field protected static final blacklist TYPE_SYSTEM_LANGUAGE_FOR_APP_LANGUAGE_PICKER:I = 0x5


# instance fields
.field private blacklist mAppPackageName:Ljava/lang/String;

.field protected blacklist mChangeDisplayName:I

.field protected blacklist mContextOverride:Landroid/content/Context;

.field protected final blacklist mCountryMode:Z

.field protected blacklist mDisplayLocale:Ljava/util/Locale;

.field private blacklist mHasSpecificAppPackageName:Z

.field protected blacklist mInflater:Landroid/view/LayoutInflater;

.field protected blacklist mIsNumberingMode:Z

.field private blacklist mIsShowAll:Z

.field protected blacklist mLocaleOptions:Ljava/util/ArrayList;
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

.field protected blacklist mOriginalLocaleOptions:Ljava/util/ArrayList;
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

.field protected blacklist mSuggestionCount:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmIsShowAll(Lcom/android/internal/app/SuggestedLocaleAdapter;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mIsShowAll:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSecSuggestionCount(Lcom/android/internal/app/SuggestedLocaleAdapter;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSecSuggestionCount:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSecSuggestionCount(Lcom/android/internal/app/SuggestedLocaleAdapter;I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSecSuggestionCount:I

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Set;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/app/SuggestedLocaleAdapter;-><init>(Ljava/util/Set;ZZ)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Set;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;ZZ)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/app/SuggestedLocaleAdapter;-><init>(Ljava/util/Set;ZZI)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Set;ZZI)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;ZZI)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mDisplayLocale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mContextOverride:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mHasSpecificAppPackageName:Z

    iput p4, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mChangeDisplayName:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mIsShowAll:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptionsforSecSuggested:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptionsforShowAll:Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSuggested()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    goto :goto_1

    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSecSuggested()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSecSuggestionCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSecSuggestionCount:I

    :cond_1
    :goto_1
    iget-boolean v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSuggested()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSecSuggested()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptionsforSecSuggested:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    iget-boolean v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mHasSpecificAppPackageName:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptionsforShowAll:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSecSuggested()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSuggested()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptionsforShowAll:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_3
    goto :goto_0

    :cond_7
    iget-boolean v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptionsforSecSuggested:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_8
    return-void
.end method

.method private blacklist getHeadersOffsetCount()I
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->showHeaders()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->showSecHeaders()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    iget v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSecSuggestionCount:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x3

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->showSecHeaders()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    iget-object v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->showSecHeaders()Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSecSuggestionCount:I

    iget-object v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v1, v2, :cond_4

    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    :goto_1
    return v0
.end method

.method private blacklist getNewViewIfNeeded(Landroid/view/View;Landroid/view/ViewGroup;II)Landroid/view/View;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    move-object/from16 v4, p1

    const v5, 0x1090133

    const/16 v6, 0x8

    const v7, 0x10203ad

    const v8, 0x10202e7

    const v9, 0x10203c1

    const v10, 0x10202c8

    const/4 v11, 0x1

    const/4 v12, 0x0

    packed-switch p3, :pswitch_data_0

    :pswitch_0
    instance-of v5, v1, Landroid/view/ViewGroup;

    if-eqz v5, :cond_5

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_5

    move v5, v11

    goto/16 :goto_4

    :pswitch_1
    invoke-virtual {v0, v3}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v13}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isAppCurrentLocale()Z

    move-result v13

    if-eqz v13, :cond_1

    instance-of v9, v1, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_0

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_0

    goto :goto_0

    :cond_0
    move v11, v12

    :goto_0
    move v9, v11

    if-nez v9, :cond_10

    iget-object v11, v0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v11, v5, v2, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {v0, v4, v3}, Lcom/android/internal/app/SuggestedLocaleAdapter;->semApplyRoundedCorner(Landroid/view/View;I)V

    goto/16 :goto_7

    :cond_1
    instance-of v5, v1, Landroid/widget/TextView;

    if-eqz v5, :cond_2

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    move v11, v12

    :goto_1
    move v9, v11

    if-nez v9, :cond_10

    iget-object v5, v0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x10900af

    invoke-virtual {v5, v6, v2, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    invoke-direct {v0, v4, v3}, Lcom/android/internal/app/SuggestedLocaleAdapter;->semApplyRoundedCorner(Landroid/view/View;I)V

    goto/16 :goto_7

    :pswitch_2
    instance-of v9, v1, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_3

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_3

    goto :goto_2

    :cond_3
    move v11, v12

    :goto_2
    move v9, v11

    if-nez v9, :cond_10

    iget-object v11, v0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v11, v5, v2, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {v0, v4, v3}, Lcom/android/internal/app/SuggestedLocaleAdapter;->semApplyRoundedCorner(Landroid/view/View;I)V

    goto/16 :goto_7

    :pswitch_3
    instance-of v5, v1, Landroid/widget/TextView;

    if-eqz v5, :cond_4

    const v5, 0x102053b

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_4

    goto :goto_3

    :cond_4
    move v11, v12

    :goto_3
    move v9, v11

    if-nez v9, :cond_10

    new-instance v5, Lcom/android/internal/app/SemLocalePickerItemView;

    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, v0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-direct {v5, v6, v12, v7}, Lcom/android/internal/app/SemLocalePickerItemView;-><init>(Landroid/content/Context;ILandroid/view/LayoutInflater;)V

    move-object v4, v5

    goto/16 :goto_7

    :cond_5
    move v5, v12

    :goto_4
    if-nez v5, :cond_6

    new-instance v7, Lcom/android/internal/app/SemLocalePickerItemView;

    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v13, v0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-direct {v7, v8, v11, v13}, Lcom/android/internal/app/SemLocalePickerItemView;-><init>(Landroid/content/Context;ILandroid/view/LayoutInflater;)V

    move-object v4, v7

    :cond_6
    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    iget-boolean v9, v0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    iget v13, v0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mChangeDisplayName:I

    invoke-virtual {v8, v9, v13}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLabel(ZI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v8}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextLocale(Ljava/util/Locale;)V

    iget-boolean v9, v0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    invoke-virtual {v8, v9}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getContentDescription(Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v8}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v10

    invoke-virtual {v4, v10}, Landroid/view/View;->setLayoutDirection(I)V

    if-ne v10, v11, :cond_7

    const/4 v12, 0x4

    goto :goto_5

    :cond_7
    const/4 v12, 0x3

    :goto_5
    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setTextDirection(I)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getHeadersOffsetCount()I

    move-result v14

    if-eq v3, v11, :cond_9

    iget v15, v0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    if-lez v15, :cond_8

    iget v15, v0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    add-int/lit8 v15, v15, 0x2

    if-eq v3, v15, :cond_9

    :cond_8
    iget v15, v0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    iget v6, v0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSecSuggestionCount:I

    add-int/2addr v15, v6

    add-int/2addr v15, v14

    if-ne v3, v15, :cond_a

    :cond_9
    const/4 v13, 0x3

    const/4 v12, 0x1

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getCount()I

    move-result v6

    sub-int/2addr v6, v11

    if-eq v3, v6, :cond_c

    iget v6, v0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    if-lez v6, :cond_b

    iget v6, v0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    if-eq v3, v6, :cond_c

    :cond_b
    if-le v14, v11, :cond_e

    iget v6, v0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    iget v11, v0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSecSuggestionCount:I

    add-int/2addr v6, v11

    add-int/2addr v6, v14

    add-int/lit8 v6, v6, -0x2

    if-ne v3, v6, :cond_e

    :cond_c
    if-eqz v12, :cond_d

    const/16 v6, 0xf

    goto :goto_6

    :cond_d
    const/16 v6, 0xc

    :goto_6
    move v13, v6

    const/16 v6, 0x8

    invoke-virtual {v9, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    invoke-virtual {v4, v13}, Landroid/view/View;->semSetRoundedCorners(I)V

    if-eqz v13, :cond_f

    iget v6, v0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSubheaderColor:I

    invoke-virtual {v4, v13, v6}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    :cond_f
    move v9, v5

    :cond_10
    :goto_7
    return-object v4

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

.method private blacklist isHeaderPosition(I)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->showHeaders()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    add-int/2addr v1, v0

    if-ne p1, v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist semApplyRoundedCorner(Landroid/view/View;I)V
    .locals 8

    const v0, 0x10203c1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    iget-boolean v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    iget v3, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mChangeDisplayName:I

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLabel(ZI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextLocale(Ljava/util/Locale;)V

    iget-boolean v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    invoke-virtual {v1, v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getContentDescription(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    const v2, 0x10202c8

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    const-string/jumbo v3, "und"

    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullNameNative()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v3

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v3

    :goto_0
    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutDirection(I)V

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const/4 v5, 0x4

    goto :goto_1

    :cond_1
    const/4 v5, 0x3

    :goto_1
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextDirection(I)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eq p2, v4, :cond_2

    iget v7, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    if-lez v7, :cond_3

    iget v7, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    add-int/lit8 v7, v7, 0x2

    if-ne p2, v7, :cond_3

    :cond_2
    const/4 v6, 0x3

    const/4 v5, 0x1

    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getCount()I

    move-result v7

    sub-int/2addr v7, v4

    if-eq p2, v7, :cond_4

    iget v4, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    if-lez v4, :cond_6

    iget v4, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    if-ne p2, v4, :cond_6

    :cond_4
    if-eqz v5, :cond_5

    const/16 v4, 0xf

    goto :goto_2

    :cond_5
    const/16 v4, 0xc

    :goto_2
    move v6, v4

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    invoke-virtual {p1, v6}, Landroid/view/View;->semSetRoundedCorners(I)V

    if-eqz v6, :cond_7

    iget v4, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSubheaderColor:I

    invoke-virtual {p1, v6, v4}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    :cond_7
    return-void
.end method

.method private blacklist showHeaders()Z
    .locals 1

    iget v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist updateTextView(Landroid/view/View;Landroid/widget/TextView;I)V
    .locals 3

    invoke-virtual {p0, p3}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    iget-boolean v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mIsNumberingMode:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getNumberingSystem()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    iget v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mChangeDisplayName:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLabel(ZI)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextLocale(Ljava/util/Locale;)V

    iget-boolean v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mIsNumberingMode:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getNumberingSystem()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getContentDescription(Z)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-boolean v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutDirection(I)V

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const/4 v2, 0x4

    goto :goto_2

    :cond_2
    const/4 v2, 0x3

    :goto_2
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextDirection(I)V

    :cond_3
    return-void
.end method


# virtual methods
.method public whitelist areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCount()I
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getHeadersOffsetCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public whitelist getFilter()Landroid/widget/Filter;
    .locals 1

    new-instance v0, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;

    invoke-direct {v0, p0}, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;-><init>(Lcom/android/internal/app/SuggestedLocaleAdapter;)V

    return-object v0
.end method

.method public blacklist getIsForNumberingSystem()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mIsNumberingMode:Z

    return v0
.end method

.method public whitelist getItem(I)Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->showHeaders()Z

    move-result v1

    const/4 v2, -0x2

    const/4 v3, -0x1

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    iget-object v4, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v1, v4, :cond_0

    const/4 v0, -0x1

    goto :goto_2

    :cond_0
    iget v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSecSuggestionCount:I

    if-lez v1, :cond_3

    iget v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    if-le p1, v1, :cond_1

    iget v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    iget v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSecSuggestionCount:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    if-gt p1, v1, :cond_1

    const/4 v0, -0x2

    goto :goto_2

    :cond_1
    iget v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    iget v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSecSuggestionCount:I

    add-int/2addr v1, v2

    if-le p1, v1, :cond_2

    const/4 v0, -0x3

    goto :goto_2

    :cond_2
    const/4 v0, -0x1

    goto :goto_2

    :cond_3
    iget v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    if-le p1, v1, :cond_4

    goto :goto_0

    :cond_4
    move v2, v3

    :goto_0
    move v0, v2

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->showSecHeaders()Z

    move-result v1

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSecSuggestionCount:I

    if-le p1, v1, :cond_6

    goto :goto_1

    :cond_6
    move v2, v3

    :goto_1
    move v0, v2

    goto :goto_2

    :cond_7
    const/4 v0, -0x1

    :goto_2
    iget-object v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    add-int v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public whitelist getItemViewType(I)I
    .locals 6

    invoke-direct {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->showHeaders()Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x5

    const/4 v4, 0x1

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->showSecHeaders()Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p1, :cond_0

    return v4

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSystemLocale()Z

    move-result v4

    if-eqz v4, :cond_1

    return v3

    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isAppCurrentLocale()Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    :cond_2
    return v2

    :cond_3
    invoke-direct {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->showHeaders()Z

    move-result v0

    const/4 v5, 0x3

    if-eqz v0, :cond_a

    if-nez p1, :cond_4

    const/4 v0, 0x0

    return v0

    :cond_4
    iget v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSecSuggestionCount:I

    if-lez v0, :cond_6

    iget v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    add-int/2addr v0, v4

    if-ne p1, v0, :cond_5

    return v5

    :cond_5
    iget v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    add-int/2addr v0, v4

    iget v5, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSecSuggestionCount:I

    add-int/2addr v0, v5

    add-int/2addr v0, v4

    if-ne p1, v0, :cond_7

    return v4

    :cond_6
    iget v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    add-int/2addr v0, v4

    if-ne p1, v0, :cond_7

    return v4

    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSystemLocale()Z

    move-result v4

    if-eqz v4, :cond_8

    return v3

    :cond_8
    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isAppCurrentLocale()Z

    move-result v3

    if-eqz v3, :cond_9

    return v1

    :cond_9
    return v2

    :cond_a
    invoke-virtual {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->showSecHeaders()Z

    move-result v0

    if-eqz v0, :cond_c

    if-nez p1, :cond_b

    return v5

    :cond_b
    iget v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSecSuggestionCount:I

    add-int/2addr v0, v4

    if-ne p1, v0, :cond_c

    return v4

    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSystemLocale()Z

    move-result v4

    if-eqz v4, :cond_d

    return v3

    :cond_d
    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isAppCurrentLocale()Z

    move-result v3

    if-eqz v3, :cond_e

    return v1

    :cond_e
    return v2
.end method

.method public blacklist getSecSuggestionCount()I
    .locals 1

    iget v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSecSuggestionCount:I

    return v0
.end method

.method public blacklist getShowAll()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mIsShowAll:Z

    return v0
.end method

.method public whitelist getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mInflater:Landroid/view/LayoutInflater;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getItemViewType(I)I

    move-result v0

    invoke-direct {p0, p2, p3, v0, p1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getNewViewIfNeeded(Landroid/view/View;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v1

    const v2, 0x10202e7

    const/16 v3, 0x8

    const v4, 0x10202c8

    const/4 v5, 0x0

    const v6, 0x10203ad

    const v7, 0x10203c1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-direct {p0, v1, v2, p1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->updateTextView(Landroid/view/View;Landroid/widget/TextView;I)V

    goto/16 :goto_3

    :pswitch_1
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isAppCurrentLocale()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    :goto_0
    const v3, 0x1040f13

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :pswitch_2
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    nop

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-direct {p0, v1, v2, p1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->updateTextView(Landroid/view/View;Landroid/widget/TextView;I)V

    goto :goto_3

    :pswitch_3
    const v2, 0x102053b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-nez v0, :cond_3

    const v3, 0x1040724

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/app/SuggestedLocaleAdapter;->setTextTo(Landroid/widget/TextView;I)V

    goto :goto_1

    :cond_3
    const/4 v3, 0x3

    if-ne v0, v3, :cond_5

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Common_ReplaceSecBrandAsGalaxy"

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    const v3, 0x1040727

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/app/SuggestedLocaleAdapter;->setTextTo(Landroid/widget/TextView;I)V

    goto :goto_1

    :cond_4
    const v3, 0x1040726

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/app/SuggestedLocaleAdapter;->setTextTo(Landroid/widget/TextView;I)V

    goto :goto_1

    :cond_5
    iget-boolean v3, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    if-eqz v3, :cond_6

    const v3, 0x1040c74

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/app/SuggestedLocaleAdapter;->setTextTo(Landroid/widget/TextView;I)V

    goto :goto_1

    :cond_6
    iget-boolean v3, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mHasSpecificAppPackageName:Z

    if-nez v3, :cond_7

    invoke-virtual {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_8

    const v3, 0x1040723

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/app/SuggestedLocaleAdapter;->setTextTo(Landroid/widget/TextView;I)V

    goto :goto_1

    :cond_7
    const v3, 0x1040722

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/app/SuggestedLocaleAdapter;->setTextTo(Landroid/widget/TextView;I)V

    :cond_8
    :goto_1
    nop

    iget-object v3, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mDisplayLocale:Ljava/util/Locale;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mDisplayLocale:Ljava/util/Locale;

    goto :goto_2

    :cond_9
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextLocale(Ljava/util/Locale;)V

    nop

    :goto_3
    return-object v1

    nop

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

    iget-boolean v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mHasSpecificAppPackageName:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->showHeaders()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    return v0

    :cond_0
    const/4 v0, 0x4

    return v0
.end method

.method public whitelist isEnabled(I)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

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

    :goto_1
    return v0
.end method

.method public blacklist setDisplayLocale(Landroid/content/Context;Ljava/util/Locale;)V
    .locals 2

    if-nez p2, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mDisplayLocale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mContextOverride:Landroid/content/Context;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mDisplayLocale:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mDisplayLocale:Ljava/util/Locale;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    invoke-virtual {v0, p2}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mContextOverride:Landroid/content/Context;

    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist setNumberingSystemMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mIsNumberingMode:Z

    return-void
.end method

.method public blacklist setSecSuggestionCount(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSecSuggestionCount:I

    return-void
.end method

.method public blacklist setShowAll(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mIsShowAll:Z

    return-void
.end method

.method protected blacklist setTextTo(Landroid/widget/TextView;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mContextOverride:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mContextOverride:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public blacklist showAllItems()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mHasSpecificAppPackageName:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptionsforShowAll:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-boolean v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mHasSpecificAppPackageName:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mIsShowAll:Z

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public blacklist showSamsungSuggestedItems()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptionsforSecSuggested:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mIsShowAll:Z

    invoke-virtual {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected blacklist showSecHeaders()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSecSuggestionCount:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public blacklist sort(Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptionsforShowAll:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public blacklist sortForSecSuggested(Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptionsforSecSuggested:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public blacklist updateTheme(Landroid/view/LayoutInflater;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput p2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSubheaderColor:I

    return-void
.end method
