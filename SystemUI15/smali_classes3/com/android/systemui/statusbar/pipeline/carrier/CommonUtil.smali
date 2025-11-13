.class public final Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final countryISO:Ljava/lang/String;

.field public final overriddenIconBranding:Ljava/lang/String;

.field public final salesCode:Ljava/lang/String;

.field public final systemPropertiesWrapper:Lcom/android/systemui/statusbar/pipeline/carrier/SystemPropertiesWrapper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pipeline/carrier/SystemPropertiesWrapper;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->systemPropertiesWrapper:Lcom/android/systemui/statusbar/pipeline/carrier/SystemPropertiesWrapper;

    iget-object p1, p1, Lcom/android/systemui/statusbar/pipeline/carrier/SystemPropertiesWrapper;->salesCode:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->salesCode:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p1

    const-string v0, "CountryISO"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->countryISO:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->overriddenIconBranding:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getIconBranding(I)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->supportTSS20()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->countryISO:Ljava/lang/String;

    const-string v2, "US"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->overriddenIconBranding:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p0

    const-string p1, "CscFeature_SystemUI_ConfigOpBrandingForIndicatorIcon"

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object p0

    const/4 v0, 0x0

    const-string v2, "CarrierFeature_SystemUI_ConfigOpBrandingForIndicatorIcon"

    invoke-virtual {p0, p1, v2, v1, v0}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    :cond_2
    :goto_1
    return-object p0
.end method

.method public final supportTSS20()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->systemPropertiesWrapper:Lcom/android/systemui/statusbar/pipeline/carrier/SystemPropertiesWrapper;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pipeline/carrier/SystemPropertiesWrapper;->singleSKU:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/pipeline/carrier/SystemPropertiesWrapper;->unified:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
