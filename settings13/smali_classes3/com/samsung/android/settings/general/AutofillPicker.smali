.class public Lcom/samsung/android/settings/general/AutofillPicker;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "AutofillPicker.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 59
    new-instance v0, Lcom/samsung/android/settings/general/AutofillPicker$1;

    sget v1, Lcom/android/settings/R$xml;->sec_default_autofill_picker_settings:I

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/general/AutofillPicker$1;-><init>(I)V

    sput-object v0, Lcom/samsung/android/settings/general/AutofillPicker;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static buildAutofillPreferenceControllers(Landroid/content/Context;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;)V"
        }
    .end annotation

    .line 72
    new-instance v0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPreferenceController;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPreferenceController;-><init>(Landroid/content/Context;)V

    .line 73
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v1, Lcom/android/settings/widget/PreferenceCategoryController;

    const-string v2, "autofill_category"

    invoke-direct {v1, p0, v2}, Lcom/android/settings/widget/PreferenceCategoryController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v3, v2, [Lcom/android/settingslib/core/AbstractPreferenceController;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 75
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/PreferenceCategoryController;->setChildren(Ljava/util/List;)Lcom/android/settings/widget/PreferenceCategoryController;

    move-result-object v0

    .line 74
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    new-instance v0, Lcom/android/settings/applications/defaultapps/DefaultWorkAutofillPreferenceController;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/defaultapps/DefaultWorkAutofillPreferenceController;-><init>(Landroid/content/Context;)V

    .line 78
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v1, Lcom/android/settings/widget/PreferenceCategoryController;

    const-string v3, "autofill_work_app_defaults"

    invoke-direct {v1, p0, v3}, Lcom/android/settings/widget/PreferenceCategoryController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-array p0, v2, [Lcom/android/settingslib/core/AbstractPreferenceController;

    aput-object v0, p0, v4

    .line 80
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/PreferenceCategoryController;->setChildren(Ljava/util/List;)Lcom/android/settings/widget/PreferenceCategoryController;

    move-result-object p0

    .line 79
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 54
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    invoke-static {p1, p0}, Lcom/samsung/android/settings/general/AutofillPicker;->buildAutofillPreferenceControllers(Landroid/content/Context;Ljava/util/List;)V

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "AutofillPicker"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x318

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 49
    sget p0, Lcom/android/settings/R$xml;->sec_default_autofill_picker_settings:I

    return p0
.end method
