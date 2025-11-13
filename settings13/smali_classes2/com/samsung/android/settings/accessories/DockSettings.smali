.class public Lcom/samsung/android/settings/accessories/DockSettings;
.super Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;
.source "DockSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    new-instance v0, Lcom/samsung/android/settings/accessories/DockSettings$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/accessories/DockSettings$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/accessories/DockSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "DockSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1dba

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 54
    sget p0, Lcom/android/settings/R$xml;->sec_dock_settings:I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 39
    invoke-super {p0, p1}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
