.class public Lcom/android/settings/localepicker/TermsOfAddressFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/settings/search/BaseSearchIndexProvider;

    const v1, 0x7f170276

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/android/settings/localepicker/TermsOfAddressFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "TermsOfAddressFragment"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x7f2

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f170276

    return p0
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    new-instance v0, Lcom/android/settings/localepicker/TermsOfAddressHelper;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-class v1, Landroid/app/GrammaticalInflectionManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/GrammaticalInflectionManager;

    iput-object p1, v0, Lcom/android/settings/localepicker/TermsOfAddressHelper;->mGrammaticalInflectionManager:Landroid/app/GrammaticalInflectionManager;

    invoke-virtual {p1}, Landroid/app/GrammaticalInflectionManager;->getSystemGrammaticalGender()I

    move-result p1

    iput p1, v0, Lcom/android/settings/localepicker/TermsOfAddressHelper;->mSystemGrammaticalGender:I

    const-class p1, Lcom/android/settings/localepicker/TermsOfAddressNotSpecifiedController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/localepicker/TermsOfAddressNotSpecifiedController;

    invoke-virtual {p1, v0}, Lcom/android/settings/localepicker/TermsOfAddressBaseController;->setTermsOfAddressHelper(Lcom/android/settings/localepicker/TermsOfAddressHelper;)V

    const-class p1, Lcom/android/settings/localepicker/TermsOfAddressFeminineController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/localepicker/TermsOfAddressFeminineController;

    invoke-virtual {p1, v0}, Lcom/android/settings/localepicker/TermsOfAddressBaseController;->setTermsOfAddressHelper(Lcom/android/settings/localepicker/TermsOfAddressHelper;)V

    const-class p1, Lcom/android/settings/localepicker/TermsOfAddressMasculineController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/localepicker/TermsOfAddressMasculineController;

    invoke-virtual {p1, v0}, Lcom/android/settings/localepicker/TermsOfAddressBaseController;->setTermsOfAddressHelper(Lcom/android/settings/localepicker/TermsOfAddressHelper;)V

    const-class p1, Lcom/android/settings/localepicker/TermsOfAddressNeutralController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/android/settings/localepicker/TermsOfAddressNeutralController;

    invoke-virtual {p0, v0}, Lcom/android/settings/localepicker/TermsOfAddressBaseController;->setTermsOfAddressHelper(Lcom/android/settings/localepicker/TermsOfAddressHelper;)V

    return-void
.end method
