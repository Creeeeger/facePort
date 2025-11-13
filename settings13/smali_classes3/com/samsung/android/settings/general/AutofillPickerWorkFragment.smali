.class public Lcom/samsung/android/settings/general/AutofillPickerWorkFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "AutofillPickerWorkFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

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

    .line 51
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    invoke-static {p1, p0}, Lcom/samsung/android/settings/general/AutofillPicker;->buildAutofillPreferenceControllers(Landroid/content/Context;Ljava/util/List;)V

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "AutofillPickerWorkFragment"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x318

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 46
    sget p0, Lcom/android/settings/R$xml;->sec_default_autofill_picker_work_settings:I

    return p0
.end method
