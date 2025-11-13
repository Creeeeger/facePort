.class public Lcom/android/internal/app/LocaleStore$LocaleInfo;
.super Ljava/lang/Object;
.source "LocaleStore.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/LocaleStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocaleInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/LocaleStore$LocaleInfo$SuggestionType;
    }
.end annotation


# static fields
.field public static final blacklist SUGGESTION_TYPE_CFG:I = 0x2

.field public static final blacklist SUGGESTION_TYPE_CURRENT:I = 0x4

.field public static final blacklist SUGGESTION_TYPE_IME_LANGUAGE:I = 0x20

.field public static final blacklist SUGGESTION_TYPE_NONE:I = 0x0

.field public static final blacklist SUGGESTION_TYPE_OTHER_APP_LANGUAGE:I = 0x10

.field public static final blacklist SUGGESTION_TYPE_SEC:I = 0x10

.field public static final blacklist SUGGESTION_TYPE_SIM:I = 0x1

.field public static final blacklist SUGGESTION_TYPE_SYSTEM_AVAILABLE_LANGUAGE:I = 0x40

.field public static final blacklist SUGGESTION_TYPE_SYSTEM_LANGUAGE:I = 0x8

.field public static final blacklist SUGGESTION_TYPE_XML:I = 0x20


# instance fields
.field private blacklist mFullCountryNameNative:Ljava/lang/String;

.field private blacklist mFullNameNative:Ljava/lang/String;

.field private blacklist mHasNumberingSystems:Z

.field private final blacklist mId:Ljava/lang/String;

.field private blacklist mIsChecked:Z

.field private blacklist mIsPriorityLocale:Z

.field private blacklist mIsPseudo:Z

.field private blacklist mIsSelected:Z

.field private blacklist mIsTranslated:Z

.field private blacklist mLangScriptKey:Ljava/lang/String;

.field public final blacklist mLocale:Ljava/util/Locale;

.field private final blacklist mParent:Ljava/util/Locale;

.field public blacklist mSuggestionFlags:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHasNumberingSystems(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mHasNumberingSystems:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsPseudo(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsPseudo:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsTranslated(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsTranslated:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHasNumberingSystems(Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mHasNumberingSystems:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsPseudo(Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsPseudo:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsTranslated(Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsTranslated:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetLangScriptKey(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLangScriptKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private constructor blacklist <init>(Lcom/android/internal/app/LocaleStore$LocaleInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mParent:Ljava/util/Locale;

    iget-boolean v0, p1, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mHasNumberingSystems:Z

    iput-boolean v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mHasNumberingSystems:Z

    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsChecked:Z

    iget v0, p1, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    iput v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isTranslated()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsTranslated:Z

    iget-boolean v0, p1, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsPseudo:Z

    iput-boolean v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsPseudo:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/app/LocaleStore$LocaleInfo;Lcom/android/internal/app/LocaleStore$LocaleInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/util/Locale;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Lcom/android/internal/app/LocaleStore$LocaleInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/Locale;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mId:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mParent:Ljava/util/Locale;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mHasNumberingSystems:Z

    iput-boolean v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsChecked:Z

    iput v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    iput-boolean v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsTranslated:Z

    iput-boolean v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsPseudo:Z

    iput-boolean v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsSelected:Z

    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mId:Ljava/lang/String;

    invoke-static {}, Lcom/android/internal/app/LocaleStore;->-$$Nest$sfgetsPriorityLocale()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsPriorityLocale:Z

    :cond_0
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/Locale;Lcom/android/internal/app/LocaleStore$LocaleInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/util/Locale;)V

    return-void
.end method

.method private blacklist getFullNameFromSpecialLocale(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10701fe

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10701ff

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    aget-object v4, v1, v3

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string v3, ""

    return-object v3
.end method

.method private blacklist getLangScriptKey()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLangScriptKey:Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/Locale$Builder;

    invoke-direct {v0}, Ljava/util/Locale$Builder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale$Builder;->setLocale(Ljava/util/Locale;)Ljava/util/Locale$Builder;

    move-result-object v0

    const/16 v1, 0x75

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Locale$Builder;->setExtension(CLjava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale$Builder;->build()Ljava/util/Locale;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    invoke-static {v1}, Lcom/android/internal/app/LocaleHelper;->addLikelySubtags(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v1

    nop

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLangScriptKey:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLangScriptKey:Ljava/lang/String;

    return-object v0
.end method

.method private static blacklist getParent(Ljava/util/Locale;)Ljava/util/Locale;
    .locals 3

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Locale$Builder;

    invoke-direct {v0}, Ljava/util/Locale$Builder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/Locale$Builder;->setLocale(Ljava/util/Locale;)Ljava/util/Locale$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/Locale$Builder;->setRegion(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0

    const/16 v2, 0x75

    invoke-virtual {v0, v2, v1}, Ljava/util/Locale$Builder;->setExtension(CLjava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale$Builder;->build()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist extendSuggestionOfType(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsTranslated:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    return-void
.end method

.method public blacklist getChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsChecked:Z

    return v0
.end method

.method blacklist getContentDescription(Z)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullCountryNameInUiLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullNameInUiLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist getFullCountryNameInUiLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    invoke-static {v0}, Lcom/android/internal/app/LocaleHelper;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist getFullCountryNameNative()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mFullCountryNameNative:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    iget-object v1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    invoke-static {v0, v1}, Lcom/android/internal/app/LocaleHelper;->getDisplayCountry(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mFullCountryNameNative:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mFullCountryNameNative:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getFullNameInUiLanguage()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->stripExtensions()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/app/LocaleHelper;->getDisplayName(Ljava/util/Locale;Z)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getFullNameInUiLanguage(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullNameFromSpecialLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullNameInUiLanguage()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public greylist getFullNameNative()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mFullNameNative:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Srpski"

    iput-object v1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mFullNameNative:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    iget-object v2, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/internal/app/LocaleHelper;->getDisplayName(Ljava/util/Locale;Ljava/util/Locale;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mFullNameNative:Ljava/lang/String;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mFullNameNative:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getFullNameNative(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullNameFromSpecialLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullNameNative()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public greylist getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mId:Ljava/lang/String;

    return-object v0
.end method

.method blacklist getLabel(Z)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLabel(ZI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist getLabel(ZI)Ljava/lang/String;
    .locals 2

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/app/LocaleStore;->-$$Nest$smisChina()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "zh_CN_#Hans"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "\u4e2d\u56fd\u5927\u9646"

    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullCountryNameNative()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullNameNative()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public greylist getLocale()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    return-object v0
.end method

.method blacklist getNumberingSystem()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    iget-object v1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    invoke-static {v0, v1}, Lcom/android/internal/app/LocaleHelper;->getDisplayNumberingSystemKeyValue(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getParent()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mParent:Ljava/util/Locale;

    return-object v0
.end method

.method public blacklist getSecFullNameNative()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/internal/app/LocaleStore;->-$$Nest$smisChina()Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "zh_CN_#Hans"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "CN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "\u7b80\u4f53\u4e2d\u6587(\u4e2d\u56fd\u5927\u9646)"

    return-object v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullNameNative()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public blacklist getSelected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsSelected:Z

    return v0
.end method

.method public blacklist hasNumberingSystems()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mHasNumberingSystems:Z

    return v0
.end method

.method public blacklist isAppCurrentLocale()Z
    .locals 1

    iget v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    and-int/lit8 v0, v0, 0x4

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isInCurrentSystemLocales()Z
    .locals 1

    iget v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    and-int/lit8 v0, v0, 0x40

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method blacklist isPriorityLocale()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsPriorityLocale:Z

    return v0
.end method

.method blacklist isSecSuggested()Z
    .locals 1

    iget v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSuggested()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method blacklist isSecXmlSuggested()Z
    .locals 1

    iget v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isSuggested()Z
    .locals 4

    iget-boolean v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsTranslated:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/android/internal/app/LocaleStore;->-$$Nest$sfgetsCountryMode()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    return v1

    :cond_2
    iget v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    const/16 v3, 0x10

    if-eq v0, v3, :cond_3

    iget v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    const/16 v3, 0x12

    if-eq v0, v3, :cond_3

    move v1, v2

    :cond_3
    return v1
.end method

.method public blacklist isSuggestionOfType(I)Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsTranslated:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public blacklist isSystemLocale()Z
    .locals 1

    iget v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    and-int/lit8 v0, v0, 0x8

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isTranslated()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsTranslated:Z

    return v0
.end method

.method public blacklist setChecked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsChecked:Z

    return-void
.end method

.method public blacklist setSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsSelected:Z

    return-void
.end method

.method public blacklist setTranslated(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsTranslated:Z

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mId:Ljava/lang/String;

    return-object v0
.end method
