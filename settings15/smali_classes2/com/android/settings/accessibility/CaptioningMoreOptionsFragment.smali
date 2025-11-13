.class public Lcom/android/settings/accessibility/CaptioningMoreOptionsFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/samsung/android/settings/accessibility/base/search/AccessibilityBaseSearchIndexProvider;

    const-string v1, "com.android.settings.accessibility.CaptioningPropertiesFragment"

    const-string v2, "captioning_more_options"

    const v3, 0x7f170070

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/settings/accessibility/base/search/AccessibilityBaseSearchIndexProvider;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/accessibility/CaptioningMoreOptionsFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

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

    const-string p0, "CaptioningMoreOptionsFragment"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x71c

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f170070

    return p0
.end method
