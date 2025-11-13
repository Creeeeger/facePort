.class public Lcom/android/settings/datetime/DateTimeSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "DateTimeSettings.java"

# interfaces
.implements Lcom/android/settings/datetime/TimePreferenceController$TimePreferenceHost;
.implements Lcom/android/settings/datetime/DatePreferenceController$DatePreferenceHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datetime/DateTimeSettings$SettingsObserver;
    }
.end annotation


# static fields
.field public static final RESET_SETTINGS_DATA:Lcom/samsung/android/settings/general/OnResetSettingsDataListener;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field private static keyDatePreference:Ljava/lang/String;

.field private static keyShowingPreference:Ljava/lang/String;

.field private static keyTimePreference:Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDialogOpen:Landroid/app/Dialog;

.field private mOrientation:I

.field private mSettingsObserver:Lcom/android/settings/datetime/DateTimeSettings$SettingsObserver;


# direct methods
.method static bridge synthetic -$$Nest$fgetmActivity(Lcom/android/settings/datetime/DateTimeSettings;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/datetime/DateTimeSettings;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDialogOpen(Lcom/android/settings/datetime/DateTimeSettings;)Landroid/app/Dialog;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/datetime/DateTimeSettings;->mDialogOpen:Landroid/app/Dialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOrientation(Lcom/android/settings/datetime/DateTimeSettings;)I
    .locals 0

    iget p0, p0, Lcom/android/settings/datetime/DateTimeSettings;->mOrientation:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmOrientation(Lcom/android/settings/datetime/DateTimeSettings;I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/datetime/DateTimeSettings;->mOrientation:I

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetkeyShowingPreference()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/datetime/DateTimeSettings;->keyShowingPreference:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smbuildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/datetime/DateTimeSettings;Z)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/settings/datetime/DateTimeSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/datetime/DateTimeSettings;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 291
    new-instance v0, Lcom/android/settings/datetime/DateTimeSettings$2;

    sget v1, Lcom/android/settings/R$xml;->sec_date_time_prefs:I

    invoke-direct {v0, v1}, Lcom/android/settings/datetime/DateTimeSettings$2;-><init>(I)V

    sput-object v0, Lcom/android/settings/datetime/DateTimeSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    .line 302
    new-instance v0, Lcom/android/settings/datetime/DateTimeSettings$3;

    invoke-direct {v0}, Lcom/android/settings/datetime/DateTimeSettings$3;-><init>()V

    sput-object v0, Lcom/android/settings/datetime/DateTimeSettings;->RESET_SETTINGS_DATA:Lcom/samsung/android/settings/general/OnResetSettingsDataListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/datetime/DateTimeSettings;)Landroid/content/ContentResolver;
    .locals 0

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/datetime/DateTimeSettings;)Landroid/content/ContentResolver;
    .locals 0

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/datetime/DateTimeSettings;Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settings/datetime/DateTimeSettings;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 187
    new-instance v1, Lcom/android/settings/datetime/AutoTimeZonePreferenceController;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/datetime/AutoTimeZonePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/datetime/UpdateTimeAndDateCallback;Z)V

    .line 190
    new-instance v2, Lcom/android/settings/datetime/AutoTimePreferenceController;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/datetime/AutoTimePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/datetime/UpdateTimeAndDateCallback;)V

    .line 193
    new-instance v3, Lcom/android/settings/datetime/AutoTimeFormatPreferenceController;

    invoke-direct {v3, p0, p1}, Lcom/android/settings/datetime/AutoTimeFormatPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/datetime/UpdateTimeAndDateCallback;)V

    .line 197
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    new-instance v3, Lcom/android/settings/datetime/TimeFormatPreferenceController;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/settings/datetime/TimeFormatPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/datetime/UpdateTimeAndDateCallback;Z)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    new-instance p2, Lcom/android/settings/datetime/TimeZonePreferenceController;

    invoke-direct {p2, p0, v1}, Lcom/android/settings/datetime/TimeZonePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/datetime/AutoTimeZonePreferenceController;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    new-instance p2, Lcom/android/settings/datetime/TimePreferenceController;

    invoke-direct {p2, p0, p1, v2}, Lcom/android/settings/datetime/TimePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/datetime/TimePreferenceController$TimePreferenceHost;Lcom/android/settings/datetime/AutoTimePreferenceController;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    new-instance p2, Lcom/android/settings/datetime/DatePreferenceController;

    invoke-direct {p2, p0, p1, v2}, Lcom/android/settings/datetime/DatePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/datetime/DatePreferenceController$DatePreferenceHost;Lcom/android/settings/datetime/AutoTimePreferenceController;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 3
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

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 176
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 177
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "firstRun"

    const/4 v2, 0x0

    .line 178
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 180
    invoke-static {p1, p0, v0}, Lcom/android/settings/datetime/DateTimeSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/datetime/DateTimeSettings;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getDialogMetricsCategory(I)I
    .locals 0

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x260

    return p0

    :cond_1
    const/16 p0, 0x25f

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "DateTimeSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x26

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 85
    sget p0, Lcom/android/settings/R$xml;->sec_date_time_prefs:I

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 91
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 92
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    new-instance v1, Lcom/android/settings/datetime/TimeChangeListenerMixin;

    invoke-direct {v1, p1, p0}, Lcom/android/settings/datetime/TimeChangeListenerMixin;-><init>(Landroid/content/Context;Lcom/android/settings/datetime/UpdateTimeAndDateCallback;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 93
    const-class p1, Lcom/android/settings/datetime/LocationTimeZoneDetectionPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/datetime/LocationTimeZoneDetectionPreferenceController;

    invoke-virtual {p1, p0}, Lcom/android/settings/datetime/LocationTimeZoneDetectionPreferenceController;->setFragment(Lcom/android/settings/core/InstrumentedPreferenceFragment;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 135
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 136
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datetime/DateTimeSettings;->mActivity:Landroid/app/Activity;

    .line 139
    new-instance p1, Lcom/android/settings/datetime/DateTimeSettings$SettingsObserver;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iget-object v1, p0, Lcom/android/settings/datetime/DateTimeSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, p0, v0, v1}, Lcom/android/settings/datetime/DateTimeSettings$SettingsObserver;-><init>(Lcom/android/settings/datetime/DateTimeSettings;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/datetime/DateTimeSettings;->mSettingsObserver:Lcom/android/settings/datetime/DateTimeSettings$SettingsObserver;

    .line 143
    iget-object p1, p0, Lcom/android/settings/datetime/DateTimeSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/android/settings/datetime/DateTimeSettings;->mOrientation:I

    .line 146
    iget-object p1, p0, Lcom/android/settings/datetime/DateTimeSettings;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->applyDateAndTimeForChinaAndWifi(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 147
    iget-object p0, p0, Lcom/android/settings/datetime/DateTimeSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x0

    const-string v0, "auto_time_zone"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 240
    const-class p1, Lcom/android/settings/datetime/TimePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/datetime/TimePreferenceController;

    .line 241
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/datetime/TimePreferenceController;->buildTimePicker(Landroid/app/Activity;)Landroidx/picker/app/SeslTimePickerDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datetime/DateTimeSettings;->mDialogOpen:Landroid/app/Dialog;

    .line 242
    sget-object v0, Lcom/android/settings/datetime/DateTimeSettings;->keyTimePreference:Ljava/lang/String;

    sput-object v0, Lcom/android/settings/datetime/DateTimeSettings;->keyShowingPreference:Ljava/lang/String;

    .line 243
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/datetime/DateTimeSettings;->setDialogLocation(Landroid/app/Dialog;Ljava/lang/String;)V

    .line 244
    iget-object p0, p0, Lcom/android/settings/datetime/DateTimeSettings;->mDialogOpen:Landroid/app/Dialog;

    return-object p0

    .line 246
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 234
    :cond_1
    const-class p1, Lcom/android/settings/datetime/DatePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/datetime/DatePreferenceController;

    .line 235
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/datetime/DatePreferenceController;->buildDatePicker(Landroid/app/Activity;)Landroidx/picker/app/SeslDatePickerDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datetime/DateTimeSettings;->mDialogOpen:Landroid/app/Dialog;

    .line 236
    sget-object v0, Lcom/android/settings/datetime/DateTimeSettings;->keyDatePreference:Ljava/lang/String;

    sput-object v0, Lcom/android/settings/datetime/DateTimeSettings;->keyShowingPreference:Ljava/lang/String;

    .line 237
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/datetime/DateTimeSettings;->setDialogLocation(Landroid/app/Dialog;Ljava/lang/String;)V

    .line 238
    iget-object p0, p0, Lcom/android/settings/datetime/DateTimeSettings;->mDialogOpen:Landroid/app/Dialog;

    return-object p0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 154
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 156
    const-class p1, Lcom/android/settings/datetime/TimePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/datetime/TimePreferenceController;

    invoke-virtual {p1}, Lcom/android/settings/datetime/TimePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/android/settings/datetime/DateTimeSettings;->keyTimePreference:Ljava/lang/String;

    .line 157
    const-class p1, Lcom/android/settings/datetime/DatePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/datetime/DatePreferenceController;

    invoke-virtual {p1}, Lcom/android/settings/datetime/DatePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/android/settings/datetime/DateTimeSettings;->keyDatePreference:Ljava/lang/String;

    .line 159
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/android/settings/datetime/DateTimeSettings$1;

    invoke-direct {p2, p0}, Lcom/android/settings/datetime/DateTimeSettings$1;-><init>(Lcom/android/settings/datetime/DateTimeSettings;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public setDialogLocation(Landroid/app/Dialog;Ljava/lang/String;)V
    .locals 1

    .line 253
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 256
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    .line 260
    :cond_1
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 261
    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->seslGetPreferenceBounds(Landroid/graphics/Rect;)V

    .line 262
    iget p0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p0, v0

    .line 263
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 264
    invoke-virtual {p1, p0, p2}, Landroid/app/Dialog;->semSetAnchor(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public showDatePicker()V
    .locals 1

    const/4 v0, 0x0

    .line 288
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    return-void
.end method

.method public showTimePicker()V
    .locals 1

    const/4 v0, 0x1

    .line 282
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removeDialog(I)V

    .line 283
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    return-void
.end method

.method public updateTimeAndDateDisplay(Landroid/content/Context;)V
    .locals 0

    .line 215
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    return-void
.end method
