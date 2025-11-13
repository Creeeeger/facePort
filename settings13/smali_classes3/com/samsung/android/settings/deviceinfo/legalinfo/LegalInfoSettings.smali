.class public Lcom/samsung/android/settings/deviceinfo/legalinfo/LegalInfoSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "LegalInfoSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 63
    new-instance v0, Lcom/samsung/android/settings/deviceinfo/legalinfo/LegalInfoSettings$1;

    sget v1, Lcom/android/settings/R$xml;->sec_legal_info_settings:I

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/legalinfo/LegalInfoSettings$1;-><init>(I)V

    sput-object v0, Lcom/samsung/android/settings/deviceinfo/legalinfo/LegalInfoSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "LegalInfoSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0xe1

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 60
    sget p0, Lcom/android/settings/R$xml;->sec_legal_info_settings:I

    return p0
.end method
