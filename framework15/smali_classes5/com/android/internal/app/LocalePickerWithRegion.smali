.class public Lcom/android/internal/app/LocalePickerWithRegion;
.super Landroid/app/ListFragment;
.source "LocalePickerWithRegion.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;,
        Lcom/android/internal/app/LocalePickerWithRegion$LocaleCollectorBase;
    }
.end annotation


# static fields
.field private static final blacklist PARENT_FRAGMENT_NAME:Ljava/lang/String; = "localeListEditor"

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mAdapter:Lcom/android/internal/app/SuggestedLocaleAdapter;

.field private blacklist mAppPackageName:Ljava/lang/String;

.field private blacklist mChangeDisplayName:I

.field private blacklist mFirstVisiblePosition:I

.field private blacklist mIsLight:Z

.field private blacklist mIsNumberingSystem:Z

.field private blacklist mListener:Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;

.field private blacklist mLocaleList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLocalePickerCollector:Lcom/android/internal/app/LocalePickerWithRegion$LocaleCollectorBase;

.field private blacklist mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

.field private blacklist mParentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

.field private blacklist mPreviousSearch:Ljava/lang/CharSequence;

.field private blacklist mPreviousSearchHadFocus:Z

.field private blacklist mPreviousSecSuggestionCount:I

.field private blacklist mSearchView:Landroid/widget/SearchView;

.field private blacklist mSubheaderColor:I

.field private blacklist mTitle:Ljava/lang/CharSequence;

.field private blacklist mTopDistance:I

.field private blacklist mTranslatedOnly:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Lcom/android/internal/app/LocalePickerWithRegion;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/LocalePickerWithRegion;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mTranslatedOnly:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSearchView:Landroid/widget/SearchView;

    iput-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mPreviousSearch:Ljava/lang/CharSequence;

    iput-boolean v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mPreviousSearchHadFocus:Z

    iput v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mFirstVisiblePosition:I

    iput v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mTopDistance:I

    iput-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mTitle:Ljava/lang/CharSequence;

    iput-boolean v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mIsNumberingSystem:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mIsLight:Z

    iput v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mPreviousSecSuggestionCount:I

    iput v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mChangeDisplayName:I

    return-void
.end method

.method private static blacklist createCountryPicker(Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;Lcom/android/internal/app/LocaleStore$LocaleInfo;ZLandroid/view/MenuItem$OnActionExpandListener;Lcom/android/internal/app/LocalePickerWithRegion$LocaleCollectorBase;)Lcom/android/internal/app/LocalePickerWithRegion;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/app/LocalePickerWithRegion;->createCountryPicker(Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;Lcom/android/internal/app/LocaleStore$LocaleInfo;ZLandroid/view/MenuItem$OnActionExpandListener;Lcom/android/internal/app/LocalePickerWithRegion$LocaleCollectorBase;I)Lcom/android/internal/app/LocalePickerWithRegion;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist createCountryPicker(Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;Lcom/android/internal/app/LocaleStore$LocaleInfo;ZLandroid/view/MenuItem$OnActionExpandListener;Lcom/android/internal/app/LocalePickerWithRegion$LocaleCollectorBase;I)Lcom/android/internal/app/LocalePickerWithRegion;
    .locals 3

    new-instance v0, Lcom/android/internal/app/LocalePickerWithRegion;

    invoke-direct {v0}, Lcom/android/internal/app/LocalePickerWithRegion;-><init>()V

    iget v1, v0, Lcom/android/internal/app/LocalePickerWithRegion;->mChangeDisplayName:I

    or-int/2addr v1, p5

    iput v1, v0, Lcom/android/internal/app/LocalePickerWithRegion;->mChangeDisplayName:I

    invoke-virtual {v0, p3}, Lcom/android/internal/app/LocalePickerWithRegion;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)V

    invoke-direct {v0, p0, p1, p2, p4}, Lcom/android/internal/app/LocalePickerWithRegion;->setListener(Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;Lcom/android/internal/app/LocaleStore$LocaleInfo;ZLcom/android/internal/app/LocalePickerWithRegion$LocaleCollectorBase;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method public static blacklist createLanguagePicker(Landroid/content/Context;Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;Z)Lcom/android/internal/app/LocalePickerWithRegion;
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lcom/android/internal/app/LocalePickerWithRegion;->createLanguagePicker(Landroid/content/Context;Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;ZLandroid/os/LocaleList;Ljava/lang/String;Landroid/view/MenuItem$OnActionExpandListener;)Lcom/android/internal/app/LocalePickerWithRegion;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist createLanguagePicker(Landroid/content/Context;Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;ZLandroid/os/LocaleList;)Lcom/android/internal/app/LocalePickerWithRegion;
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/android/internal/app/LocalePickerWithRegion;->createLanguagePicker(Landroid/content/Context;Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;ZLandroid/os/LocaleList;Ljava/lang/String;Landroid/view/MenuItem$OnActionExpandListener;)Lcom/android/internal/app/LocalePickerWithRegion;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist createLanguagePicker(Landroid/content/Context;Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;ZLandroid/os/LocaleList;Ljava/lang/String;Landroid/view/MenuItem$OnActionExpandListener;)Lcom/android/internal/app/LocalePickerWithRegion;
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/android/internal/app/LocalePickerWithRegion;->createLanguagePicker(Landroid/content/Context;Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;ZLandroid/os/LocaleList;Ljava/lang/String;Landroid/view/MenuItem$OnActionExpandListener;I)Lcom/android/internal/app/LocalePickerWithRegion;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist createLanguagePicker(Landroid/content/Context;Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;ZLandroid/os/LocaleList;Ljava/lang/String;Landroid/view/MenuItem$OnActionExpandListener;I)Lcom/android/internal/app/LocalePickerWithRegion;
    .locals 3

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/internal/app/SystemLocaleCollector;

    invoke-direct {v0, p0, p3}, Lcom/android/internal/app/SystemLocaleCollector;-><init>(Landroid/content/Context;Landroid/os/LocaleList;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/internal/app/AppLocaleCollector;

    invoke-direct {v0, p0, p4}, Lcom/android/internal/app/AppLocaleCollector;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    new-instance v1, Lcom/android/internal/app/LocalePickerWithRegion;

    invoke-direct {v1}, Lcom/android/internal/app/LocalePickerWithRegion;-><init>()V

    iget v2, v1, Lcom/android/internal/app/LocalePickerWithRegion;->mChangeDisplayName:I

    or-int/2addr v2, p6

    iput v2, v1, Lcom/android/internal/app/LocalePickerWithRegion;->mChangeDisplayName:I

    invoke-virtual {v1, p5}, Lcom/android/internal/app/LocalePickerWithRegion;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)V

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, p2, v0}, Lcom/android/internal/app/LocalePickerWithRegion;->setListener(Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;Lcom/android/internal/app/LocaleStore$LocaleInfo;ZLcom/android/internal/app/LocalePickerWithRegion$LocaleCollectorBase;)Z

    return-object v1
.end method

.method private static blacklist createNumberingSystemPicker(Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;Lcom/android/internal/app/LocaleStore$LocaleInfo;ZLandroid/view/MenuItem$OnActionExpandListener;Lcom/android/internal/app/LocalePickerWithRegion$LocaleCollectorBase;)Lcom/android/internal/app/LocalePickerWithRegion;
    .locals 3

    new-instance v0, Lcom/android/internal/app/LocalePickerWithRegion;

    invoke-direct {v0}, Lcom/android/internal/app/LocalePickerWithRegion;-><init>()V

    invoke-virtual {v0, p3}, Lcom/android/internal/app/LocalePickerWithRegion;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)V

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/internal/app/LocalePickerWithRegion;->setIsNumberingSystem(Z)V

    invoke-direct {v0, p0, p1, p2, p4}, Lcom/android/internal/app/LocalePickerWithRegion;->setListener(Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;Lcom/android/internal/app/LocaleStore$LocaleInfo;ZLcom/android/internal/app/LocalePickerWithRegion$LocaleCollectorBase;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method private blacklist filterTheLanguagesNotSupportedInApp(ZLjava/util/HashSet;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/HashSet<",
            "Ljava/util/Locale;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mLocaleList:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Locale;

    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/os/LocaleList;->matchesLanguageAndScript(Ljava/util/Locale;Ljava/util/Locale;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    goto :goto_1

    :cond_3
    :goto_2
    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private blacklist returnToParentFrame()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "localeListEditor"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    return-void
.end method

.method private blacklist setIsNumberingSystem(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mIsNumberingSystem:Z

    return-void
.end method

.method private blacklist setListener(Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;Lcom/android/internal/app/LocaleStore$LocaleInfo;ZLcom/android/internal/app/LocalePickerWithRegion$LocaleCollectorBase;)Z
    .locals 5

    iput-object p2, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mParentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    iput-object p1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mListener:Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;

    iput-boolean p3, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mTranslatedOnly:Z

    iput-object p4, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mLocalePickerCollector:Lcom/android/internal/app/LocalePickerWithRegion$LocaleCollectorBase;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/app/LocalePickerWithRegion;->setRetainInstance(Z)V

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-interface {p4, p2, p3, v2}, Lcom/android/internal/app/LocalePickerWithRegion$LocaleCollectorBase;->getSupportedLocaleList(Lcom/android/internal/app/LocaleStore$LocaleInfo;ZZ)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mLocaleList:Ljava/util/Set;

    sget-object v2, Lcom/android/internal/app/LocalePickerWithRegion;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mLocaleList size:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mLocaleList:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mLocaleList:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-ne v2, v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mLocaleList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-interface {p1, v0}, Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;->onLocaleSelected(Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    return v1

    :cond_1
    return v0
.end method


# virtual methods
.method public whitelist onActivityCreated(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010590

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v1, v0, Landroid/util/TypedValue;->data:I

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x10603e0

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSubheaderColor:I

    iput-boolean v3, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mIsLight:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x10603df

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSubheaderColor:I

    iput-boolean v2, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mIsLight:Z

    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v4, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mAdapter:Lcom/android/internal/app/SuggestedLocaleAdapter;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mAdapter:Lcom/android/internal/app/SuggestedLocaleAdapter;

    iget v5, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSubheaderColor:I

    invoke-virtual {v4, v1, v5}, Lcom/android/internal/app/SuggestedLocaleAdapter;->updateTheme(Landroid/view/LayoutInflater;I)V

    iget-object v4, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mAdapter:Lcom/android/internal/app/SuggestedLocaleAdapter;

    invoke-virtual {v4}, Lcom/android/internal/app/SuggestedLocaleAdapter;->notifyDataSetChanged()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->getListView()Landroid/widget/ListView;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget v6, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSubheaderColor:I

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->semSetBottomColor(I)V

    invoke-virtual {v4, v3}, Landroid/widget/ListView;->semSetFastScrollCustomEffectEnabled(Z)V

    invoke-virtual {v4, v3}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    const/4 v6, 0x3

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->semSetRoundedCorners(I)V

    iget v7, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSubheaderColor:I

    invoke-virtual {v4, v6, v7}, Landroid/widget/ListView;->semSetRoundedCornerColor(II)V

    iget-boolean v6, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mIsLight:Z

    if-eqz v6, :cond_2

    invoke-virtual {v4, v3, v2}, Landroid/widget/ListView;->semSetGoToTopEnabled(ZI)V

    goto :goto_1

    :cond_2
    invoke-virtual {v4, v3}, Landroid/widget/ListView;->semSetGoToTopEnabled(Z)V

    :goto_1
    const v3, 0x109016e

    invoke-virtual {v1, v3, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iget v6, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSubheaderColor:I

    invoke-virtual {v3, v6}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v4, v3, v5, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    :cond_3
    return-void
.end method

.method public whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/ListFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105048d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "android:id/search_bar"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSearchView:Landroid/widget/SearchView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v1}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public whitelist onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/app/LocalePickerWithRegion;->setHasOptionsMenu(Z)V

    iget-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mLocaleList:Ljava/util/Set;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->returnToParentFrame()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mTitle:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mParentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mParentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v3

    goto :goto_1

    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    :goto_1
    iget-object v4, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mLocalePickerCollector:Lcom/android/internal/app/LocalePickerWithRegion$LocaleCollectorBase;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mLocalePickerCollector:Lcom/android/internal/app/LocalePickerWithRegion$LocaleCollectorBase;

    invoke-interface {v4}, Lcom/android/internal/app/LocalePickerWithRegion$LocaleCollectorBase;->hasSpecificPackageName()Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v0

    goto :goto_2

    :cond_3
    move v4, v2

    :goto_2
    new-instance v5, Lcom/android/internal/app/SuggestedLocaleAdapter;

    iget-object v6, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mLocaleList:Ljava/util/Set;

    iget v7, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mChangeDisplayName:I

    invoke-direct {v5, v6, v1, v4, v7}, Lcom/android/internal/app/SuggestedLocaleAdapter;-><init>(Ljava/util/Set;ZZI)V

    iput-object v5, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mAdapter:Lcom/android/internal/app/SuggestedLocaleAdapter;

    iget-object v5, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mAdapter:Lcom/android/internal/app/SuggestedLocaleAdapter;

    iget-boolean v6, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mIsNumberingSystem:Z

    invoke-virtual {v5, v6}, Lcom/android/internal/app/SuggestedLocaleAdapter;->setNumberingSystemMode(Z)V

    new-instance v5, Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;

    invoke-direct {v5, v3, v1}, Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;-><init>(Ljava/util/Locale;Z)V

    iget-object v6, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mAdapter:Lcom/android/internal/app/SuggestedLocaleAdapter;

    invoke-virtual {v6, v5}, Lcom/android/internal/app/SuggestedLocaleAdapter;->sort(Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;)V

    new-instance v6, Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;

    invoke-direct {v6, v3, v1, v0}, Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;-><init>(Ljava/util/Locale;ZZ)V

    move-object v0, v6

    iget-object v6, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mAdapter:Lcom/android/internal/app/SuggestedLocaleAdapter;

    invoke-virtual {v6, v0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->sortForSecSuggested(Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;)V

    iget-object v6, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mAdapter:Lcom/android/internal/app/SuggestedLocaleAdapter;

    invoke-virtual {v6}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getSecSuggestionCount()I

    move-result v6

    iput v6, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mPreviousSecSuggestionCount:I

    if-nez v4, :cond_4

    if-nez v1, :cond_4

    iget-object v6, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mAdapter:Lcom/android/internal/app/SuggestedLocaleAdapter;

    invoke-virtual {v6}, Lcom/android/internal/app/SuggestedLocaleAdapter;->showAllItems()V

    :cond_4
    if-eqz v4, :cond_5

    iget-object v6, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mAdapter:Lcom/android/internal/app/SuggestedLocaleAdapter;

    invoke-virtual {v6, v2}, Lcom/android/internal/app/SuggestedLocaleAdapter;->setSecSuggestionCount(I)V

    iget-object v2, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mAdapter:Lcom/android/internal/app/SuggestedLocaleAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/SuggestedLocaleAdapter;->showAllItems()V

    :cond_5
    iget-object v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mAdapter:Lcom/android/internal/app/SuggestedLocaleAdapter;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/LocalePickerWithRegion;->setListAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public whitelist onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 8

    iget-object v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mLocalePickerCollector:Lcom/android/internal/app/LocalePickerWithRegion$LocaleCollectorBase;

    invoke-interface {v0}, Lcom/android/internal/app/LocalePickerWithRegion$LocaleCollectorBase;->hasSpecificPackageName()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mParentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    if-nez v0, :cond_6

    const/high16 v0, 0x1140000

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x10203c3

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Landroid/widget/SearchView;

    invoke-virtual {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/SearchView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSearchView:Landroid/widget/SearchView;

    iget-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSearchView:Landroid/widget/SearchView;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "android:id/search_plate"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v1}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v5

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v6

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_1
    const/4 v5, 0x2

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v5, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    :cond_2
    iget-object v5, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSearchView:Landroid/widget/SearchView;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSearchView:Landroid/widget/SearchView;

    const v6, 0x1040d4d

    invoke-virtual {p0, v6}, Lcom/android/internal/app/LocalePickerWithRegion;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v5, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    iget-object v5, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mPreviousSearch:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    iget-object v3, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setIconified(Z)V

    iget-object v3, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSearchView:Landroid/widget/SearchView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setActivated(Z)V

    iget-boolean v3, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mPreviousSearchHadFocus:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/widget/SearchView;->requestFocus()Z

    :cond_3
    iget-object v3, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSearchView:Landroid/widget/SearchView;

    iget-object v5, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mPreviousSearch:Ljava/lang/CharSequence;

    invoke-virtual {v3, v5, v4}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v5, v3, v4}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->getListView()Landroid/widget/ListView;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mFirstVisiblePosition:I

    iget v5, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mTopDistance:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    :cond_6
    return-void
.end method

.method public whitelist onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 10

    nop

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSystemLocale()Z

    move-result v7

    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v8, v1

    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->hasNumberingSystems()Z

    move-result v9

    if-nez v7, :cond_6

    if-eqz v8, :cond_1

    if-eqz v9, :cond_6

    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mIsNumberingSystem:Z

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    if-eqz v9, :cond_3

    iget-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mListener:Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;

    iget-boolean v2, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mTranslatedOnly:Z

    iget-object v3, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    iget-object v4, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mLocalePickerCollector:Lcom/android/internal/app/LocalePickerWithRegion$LocaleCollectorBase;

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/internal/app/LocalePickerWithRegion;->createNumberingSystemPicker(Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;Lcom/android/internal/app/LocaleStore$LocaleInfo;ZLandroid/view/MenuItem$OnActionExpandListener;Lcom/android/internal/app/LocalePickerWithRegion$LocaleCollectorBase;)Lcom/android/internal/app/LocalePickerWithRegion;

    move-result-object v1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mListener:Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;

    iget-boolean v3, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mTranslatedOnly:Z

    iget-object v4, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    iget-object v5, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mLocalePickerCollector:Lcom/android/internal/app/LocalePickerWithRegion$LocaleCollectorBase;

    iget v6, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mChangeDisplayName:I

    move-object v2, v0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/app/LocalePickerWithRegion;->createCountryPicker(Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;Lcom/android/internal/app/LocaleStore$LocaleInfo;ZLandroid/view/MenuItem$OnActionExpandListener;Lcom/android/internal/app/LocalePickerWithRegion$LocaleCollectorBase;I)Lcom/android/internal/app/LocalePickerWithRegion;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSearchView:Landroid/widget/SearchView;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->clearFocus()V

    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->getId()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_3

    :cond_5
    invoke-direct {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->returnToParentFrame()V

    goto :goto_3

    :cond_6
    :goto_2
    iget-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mListener:Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mListener:Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;

    invoke-interface {v1, v0}, Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;->onLocaleSelected(Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    :cond_7
    invoke-direct {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->returnToParentFrame()V

    :goto_3
    return-void
.end method

.method public whitelist onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1}, Landroid/app/ListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    :sswitch_0
    const/4 v1, 0x0

    return v1

    :sswitch_1
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    const/4 v1, 0x1

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_1
        0x10203c3 -> :sswitch_0
    .end sparse-switch
.end method

.method public whitelist onPause()V
    .locals 4

    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    iget-object v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->hasFocus()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mPreviousSearchHadFocus:Z

    iget-object v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mPreviousSearch:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mPreviousSearchHadFocus:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mPreviousSearch:Ljava/lang/CharSequence;

    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    iput v3, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mFirstVisiblePosition:I

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v1, v3

    :goto_1
    iput v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mTopDistance:I

    return-void
.end method

.method public whitelist onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mLocalePickerCollector:Lcom/android/internal/app/LocalePickerWithRegion$LocaleCollectorBase;

    invoke-interface {v0}, Lcom/android/internal/app/LocalePickerWithRegion$LocaleCollectorBase;->hasSpecificPackageName()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public whitelist onQueryTextChange(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mAdapter:Lcom/android/internal/app/SuggestedLocaleAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mAdapter:Lcom/android/internal/app/SuggestedLocaleAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    iget-object v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mParentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mParentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullNameNative()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    return-void
.end method

.method public whitelist onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setNestedScrollingEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public blacklist setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    return-void
.end method
