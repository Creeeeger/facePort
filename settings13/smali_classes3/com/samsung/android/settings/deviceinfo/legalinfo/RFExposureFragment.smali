.class public Lcom/samsung/android/settings/deviceinfo/legalinfo/RFExposureFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "RFExposureFragment.java"


# instance fields
.field private final PREFIX_LANGUAGE_CODE_TAG:Ljava/lang/String;

.field private final PREFIX_MODEL_NAME_TAG:Ljava/lang/String;

.field private final PREFIX_NATION_CODE_TAG:Ljava/lang/String;

.field private final PREFIX_SITE_CODE_TAG:Ljava/lang/String;

.field private final SAR_BASE_URL:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$maddQueryStringToSarBaseUrl(Lcom/samsung/android/settings/deviceinfo/legalinfo/RFExposureFragment;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/legalinfo/RFExposureFragment;->addQueryStringToSarBaseUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const-string v0, "https://www.samsung.com/sar/"

    .line 28
    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/RFExposureFragment;->SAR_BASE_URL:Ljava/lang/String;

    const-string v0, "sarMain?site_cd="

    .line 29
    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/RFExposureFragment;->PREFIX_SITE_CODE_TAG:Ljava/lang/String;

    const-string v0, "&prd_mdl_name="

    .line 30
    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/RFExposureFragment;->PREFIX_MODEL_NAME_TAG:Ljava/lang/String;

    const-string v0, "&selNatCd="

    .line 31
    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/RFExposureFragment;->PREFIX_NATION_CODE_TAG:Ljava/lang/String;

    const-string v0, "&languageCode="

    .line 32
    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/RFExposureFragment;->PREFIX_LANGUAGE_CODE_TAG:Ljava/lang/String;

    return-void
.end method

.method private addQueryStringToSarBaseUrl()Ljava/lang/String;
    .locals 5

    .line 72
    new-instance v0, Lcom/samsung/android/settings/deviceinfo/aboutphone/ModelNameGetter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/ModelNameGetter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/ModelNameGetter;->getModelName()Ljava/lang/String;

    move-result-object p0

    .line 73
    invoke-static {}, Lcom/android/settings/Utils;->readCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "modelName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", country="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", language="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RF_Expoure"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://www.samsung.com/sar/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "sarMain?site_cd="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&prd_mdl_name="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&selNatCd="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&languageCode="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "targetURL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x12cc

    return p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .line 41
    sget p3, Lcom/android/settings/R$layout;->sec_rf_exposure:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 43
    sget p2, Lcom/android/settings/R$id;->rf_exposure_description_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 44
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcom/android/settings/R$string;->rf_exposure_description:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "https://www.samsung.com/sar/"

    aput-object v3, v2, v0

    invoke-virtual {p3, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 46
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 47
    invoke-virtual {p3, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p3

    add-int/lit8 v1, p3, 0x1c

    .line 50
    new-instance v2, Lcom/samsung/android/settings/deviceinfo/legalinfo/RFExposureFragment$1;

    invoke-direct {v2, p0, p3, v1}, Lcom/samsung/android/settings/deviceinfo/legalinfo/RFExposureFragment$1;-><init>(Lcom/samsung/android/settings/deviceinfo/legalinfo/RFExposureFragment;II)V

    const/16 p0, 0x21

    .line 62
    invoke-virtual {v0, v2, p3, v1, p0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 63
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-object p1
.end method
