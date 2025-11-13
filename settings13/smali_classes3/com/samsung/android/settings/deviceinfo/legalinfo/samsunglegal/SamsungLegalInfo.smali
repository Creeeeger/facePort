.class public Lcom/samsung/android/settings/deviceinfo/legalinfo/samsunglegal/SamsungLegalInfo;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "SamsungLegalInfo.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Lcom/android/settings/search/BaseSearchIndexProvider;

    sget v1, Lcom/android/settings/R$xml;->sec_samsung_legal_info:I

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/samsung/android/settings/deviceinfo/legalinfo/samsunglegal/SamsungLegalInfo;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "SamsungLegalInfo"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x2524

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 32
    sget p0, Lcom/android/settings/R$xml;->sec_samsung_legal_info:I

    return p0
.end method
