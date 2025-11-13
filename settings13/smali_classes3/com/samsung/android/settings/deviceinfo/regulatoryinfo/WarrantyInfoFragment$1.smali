.class Lcom/samsung/android/settings/deviceinfo/regulatoryinfo/WarrantyInfoFragment$1;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "WarrantyInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/deviceinfo/regulatoryinfo/WarrantyInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected isPageSearchEnabled(Landroid/content/Context;)Z
    .locals 0

    .line 59
    sget-boolean p0, Lcom/samsung/android/settings/deviceinfo/regulatoryinfo/ServiceInformationPreferenceController;->SUPPORT_SERVICE_INFORMATION:Z

    return p0
.end method
