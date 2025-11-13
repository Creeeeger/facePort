.class public final Lcom/android/systemui/statusbar/pipeline/carrier/MobileDataUtil;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final commonUtil:Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/carrier/MobileDataUtil;->commonUtil:Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;

    return-void
.end method


# virtual methods
.method public final get5gIconConfig(I)Ljava/lang/String;
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/carrier/MobileDataUtil;->commonUtil:Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->supportTSS20()Z

    move-result p0

    const-string v0, ""

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object p0

    const-string v1, "CarrierFeature_SystemUI_ConfigOpBranding5GIcon"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p0

    const-string p1, "CscFeature_SystemUI_ConfigOpBranding5GIcon"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final getLteWideBandConfig(I)Ljava/lang/String;
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/carrier/MobileDataUtil;->commonUtil:Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->supportTSS20()Z

    move-result p0

    const-string v0, ""

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object p0

    const-string v1, "CarrierFeature_SystemUI_ConfigOpBrandingLTEWideBandIcon"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p0

    const-string p1, "CscFeature_SystemUI_ConfigOpBrandingLTEWideBandIcon"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_0
    return-object p0
.end method
