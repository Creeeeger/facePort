.class public Lcom/samsung/android/settings/general/ProfileSelectAutofillFragment;
.super Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;
.source "ProfileSelectAutofillFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getFragments()[Landroidx/fragment/app/Fragment;
    .locals 2

    const/4 p0, 0x2

    new-array p0, p0, [Landroidx/fragment/app/Fragment;

    .line 31
    new-instance v0, Lcom/samsung/android/settings/general/AutofillPickerPersonalFragment;

    invoke-direct {v0}, Lcom/samsung/android/settings/general/AutofillPickerPersonalFragment;-><init>()V

    const/4 v1, 0x0

    aput-object v0, p0, v1

    new-instance v0, Lcom/samsung/android/settings/general/AutofillPickerWorkFragment;

    invoke-direct {v0}, Lcom/samsung/android/settings/general/AutofillPickerWorkFragment;-><init>()V

    const/4 v1, 0x1

    aput-object v0, p0, v1

    return-object p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 39
    sget p0, Lcom/android/settings/R$xml;->sec_autofill_dashboard_settings_header:I

    return p0
.end method
