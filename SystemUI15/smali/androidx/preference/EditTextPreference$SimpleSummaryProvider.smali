.class public final Landroidx/preference/EditTextPreference$SimpleSummaryProvider;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/preference/Preference$SummaryProvider;


# static fields
.field public static sSimpleSummaryProvider:Landroidx/preference/EditTextPreference$SimpleSummaryProvider;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Landroidx/preference/EditTextPreference$SimpleSummaryProvider;
    .locals 1

    sget-object v0, Landroidx/preference/EditTextPreference$SimpleSummaryProvider;->sSimpleSummaryProvider:Landroidx/preference/EditTextPreference$SimpleSummaryProvider;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/preference/EditTextPreference$SimpleSummaryProvider;

    invoke-direct {v0}, Landroidx/preference/EditTextPreference$SimpleSummaryProvider;-><init>()V

    sput-object v0, Landroidx/preference/EditTextPreference$SimpleSummaryProvider;->sSimpleSummaryProvider:Landroidx/preference/EditTextPreference$SimpleSummaryProvider;

    :cond_0
    sget-object v0, Landroidx/preference/EditTextPreference$SimpleSummaryProvider;->sSimpleSummaryProvider:Landroidx/preference/EditTextPreference$SimpleSummaryProvider;

    return-object v0
.end method


# virtual methods
.method public final provideSummary(Landroidx/preference/Preference;)Ljava/lang/CharSequence;
    .locals 0

    check-cast p1, Landroidx/preference/EditTextPreference;

    iget-object p0, p1, Landroidx/preference/EditTextPreference;->mText:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p1, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    const p1, 0x7f130d00

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p1, Landroidx/preference/EditTextPreference;->mText:Ljava/lang/String;

    :goto_0
    return-object p0
.end method
