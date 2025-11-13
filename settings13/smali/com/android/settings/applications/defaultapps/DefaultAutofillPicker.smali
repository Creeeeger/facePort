.class public Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;
.super Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;
.source "DefaultAutofillPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$AutofillSettingIntentProvider;,
        Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$AutofillPickerConfirmationDialogFragment;
    }
.end annotation


# static fields
.field static final AUTOFILL_PROBE:Landroid/content/Intent;


# instance fields
.field private mCancelListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;


# direct methods
.method public static synthetic $r8$lambda$5r31vESAIIGqpA5hruQvWdYMy7U(Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;Landroid/content/Context;Landroid/content/Intent;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->lambda$newAddServicePreferenceOrNull$1(Landroid/content/Context;Landroid/content/Intent;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$MAxXuDhTg7jLX8MGSsm9jZ6dTwo(Landroid/app/Activity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->lambda$onCreate$0(Landroid/app/Activity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmCancelListener(Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdate(Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->update()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 67
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.autofill.AutofillService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->AUTOFILL_PROBE:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;-><init>()V

    .line 152
    new-instance v0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$1;-><init>(Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;)V

    iput-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    return-void
.end method

.method private addAddServicePreference()V
    .locals 1

    .line 226
    invoke-direct {p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->newAddServicePreferenceOrNull()Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method private addDescriptionPreference()V
    .locals 3

    .line 362
    new-instance v0, Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/widget/SecUnclickablePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 363
    sget v1, Lcom/android/settings/R$string;->sec_default_autofill_picker_description:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    const-string v1, "description"

    .line 364
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    const/4 v1, -0x1

    .line 365
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOrder(I)V

    const/4 v1, 0x1

    .line 366
    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecUnclickablePreference;->setPositionMode(I)V

    .line 367
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method public static getDefaultKey(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 257
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 262
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "autofill_service"

    .line 261
    invoke-static {p0, v1, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 264
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 266
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    const-string p0, "DefaultAutofillPicker"

    const-string p1, "Invalid context or content-resolver"

    .line 258
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private synthetic lambda$newAddServicePreferenceOrNull$1(Landroid/content/Context;Landroid/content/Intent;Landroidx/preference/Preference;)Z
    .locals 0

    .line 204
    iget p0, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mUserId:I

    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$onCreate$0(Landroid/app/Activity;Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x0

    .line 91
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 92
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private newAddServicePreferenceOrNull()Landroidx/preference/Preference;
    .locals 4

    .line 193
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mUserId:I

    const-string v2, "autofill_service_search_uri"

    .line 192
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 196
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 200
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 201
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    .line 202
    new-instance v2, Landroidx/preference/Preference;

    invoke-direct {v2, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 203
    new-instance v3, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 208
    sget p0, Lcom/android/settings/R$string;->sec_autofill_add_service:I

    invoke-virtual {v2, p0}, Landroidx/preference/Preference;->setTitle(I)V

    .line 209
    sget p0, Lcom/android/settings/R$layout;->sec_preference_radio:I

    invoke-virtual {v2, p0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 210
    sget p0, Lcom/android/settings/R$layout;->sec_preference_widget_add:I

    invoke-virtual {v2, p0}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    const/4 p0, 0x0

    .line 211
    invoke-virtual {v2, p0}, Landroidx/preference/Preference;->setIconSpaceReserved(Z)V

    const v0, 0x7ffffffe

    .line 216
    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setOrder(I)V

    .line 217
    invoke-virtual {v2, p0}, Landroidx/preference/Preference;->setPersistent(Z)V

    return-object v2
.end method

.method private update()V
    .locals 0

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->updateCandidates()V

    .line 174
    invoke-direct {p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->addAddServicePreference()V

    .line 176
    invoke-direct {p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->addDescriptionPreference()V

    return-void
.end method


# virtual methods
.method protected getCandidates()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/applications/DefaultAppInfo;",
            ">;"
        }
    .end annotation

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 235
    iget-object v1, p0, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->mPm:Landroid/content/pm/PackageManager;

    sget-object v2, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->AUTOFILL_PROBE:Landroid/content/Intent;

    iget v3, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mUserId:I

    const/16 v4, 0x80

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    .line 237
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 238
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 239
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v5, "android.permission.BIND_AUTOFILL_SERVICE"

    .line 240
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 241
    new-instance v5, Lcom/android/settingslib/applications/DefaultAppInfo;

    iget-object v6, p0, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->mPm:Landroid/content/pm/PackageManager;

    iget v7, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mUserId:I

    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v10, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v5, v2, v6, v7, v8}, Lcom/android/settingslib/applications/DefaultAppInfo;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;ILandroid/content/ComponentName;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v5, "android.permission.BIND_AUTOFILL"

    .line 244
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 246
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AutofillService from \'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\' uses unsupported permission "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ". It works for now, but might not be supported on future releases"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DefaultAutofillPicker"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    new-instance v4, Lcom/android/settingslib/applications/DefaultAppInfo;

    iget-object v5, p0, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->mPm:Landroid/content/pm/PackageManager;

    iget v6, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mUserId:I

    new-instance v7, Landroid/content/ComponentName;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v2, v5, v6, v7}, Lcom/android/settingslib/applications/DefaultAppInfo;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;ILandroid/content/ComponentName;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method protected getConfirmationMessage(Lcom/android/settingslib/widget/CandidateInfo;)Ljava/lang/CharSequence;
    .locals 3

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 282
    :cond_0
    invoke-virtual {p1}, Lcom/android/settingslib/widget/CandidateInfo;->loadLabel()Ljava/lang/CharSequence;

    move-result-object p1

    .line 283
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->autofill_confirmation_message:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 285
    invoke-static {p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic getConfirmationTitle(Lcom/android/settingslib/widget/CandidateInfo;)Ljava/lang/CharSequence;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->getConfirmationTitle(Lcom/android/settingslib/widget/CandidateInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getConfirmationTitle(Lcom/android/settingslib/widget/CandidateInfo;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 358
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->sec_autofill_select_popup_title:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getDefaultKey()Ljava/lang/String;
    .locals 1

    .line 274
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget p0, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mUserId:I

    invoke-static {v0, p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->getDefaultKey(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x318

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 136
    sget p0, Lcom/android/settings/R$xml;->default_autofill_settings:I

    return p0
.end method

.method protected newConfirmationDialogFragment(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment$ConfirmationDialogFragment;
    .locals 1

    .line 109
    new-instance v0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$AutofillPickerConfirmationDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$AutofillPickerConfirmationDialogFragment;-><init>()V

    .line 113
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment$ConfirmationDialogFragment;->init(Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 86
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 89
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "package_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    new-instance v0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    .line 96
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mUserId:I

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 99
    invoke-direct {p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->update()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 183
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 371
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 372
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 373
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$dimen;->sec_widget_list_with_checkbox_margin_start:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    .line 374
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settings/R$dimen;->sec_widget_list_with_checkbox_size:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    add-float/2addr p1, p2

    .line 375
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settings/R$dimen;->sec_widget_list_with_checkbox_margin_end:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    add-float/2addr p1, p2

    float-to-int p1, p1

    .line 376
    new-instance p2, Lcom/samsung/android/settings/widget/SecDividerItemDecorator;

    .line 377
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$drawable;->sec_top_level_list_divider:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v0, v1, p1}, Lcom/samsung/android/settings/widget/SecDividerItemDecorator;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/Context;I)V

    .line 378
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method protected setDefaultKey(Ljava/lang/String;)Z
    .locals 3

    .line 290
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mUserId:I

    const-string v2, "autofill_service"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 294
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 296
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "package_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 298
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 300
    :goto_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 301
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method protected shouldShowItemNone()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
