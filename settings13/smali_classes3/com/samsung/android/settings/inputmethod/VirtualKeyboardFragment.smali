.class public final Lcom/samsung/android/settings/inputmethod/VirtualKeyboardFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "VirtualKeyboardFragment.java"

# interfaces
.implements Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference$OnSavePreferenceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/inputmethod/VirtualKeyboardFragment$FirstInstallTimeComparator;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private final mInputMethodPreferenceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;",
            ">;"
        }
    .end annotation
.end field

.field mInputMethodSettingValues:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

.field private mInstalledKeyboardsCategory:Landroidx/preference/SecPreferenceCategory;

.field private final mKeyboardListMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUserAwareContext:Landroid/content/Context;

.field private mUserId:I


# direct methods
.method static bridge synthetic -$$Nest$smbuildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/inputmethod/VirtualKeyboardFragment;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 261
    new-instance v0, Lcom/samsung/android/settings/inputmethod/VirtualKeyboardFragment$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/inputmethod/VirtualKeyboardFragment$2;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/inputmethod/VirtualKeyboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/inputmethod/VirtualKeyboardFragment;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    .line 73
    new-instance v0, Lcom/samsung/android/settings/inputmethod/VirtualKeyboardFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/inputmethod/VirtualKeyboardFragment$1;-><init>(Lcom/samsung/android/settings/inputmethod/VirtualKeyboardFragment;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/inputmethod/VirtualKeyboardFragment;->mKeyboardListMap:Ljava/util/Map;

    return-void
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 154
    new-instance v1, Lcom/samsung/android/settings/inputmethod/ShowKeyboardButtonPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/inputmethod/ShowKeyboardButtonPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    new-instance v1, Lcom/samsung/android/settings/inputmethod/CurrentKeyboardPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/inputmethod/CurrentKeyboardPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private updateInputMethodPreferenceViews()V
    .locals 14

    .line 191
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/VirtualKeyboardFragment;->mInstalledKeyboardsCategory:Landroidx/preference/SecPreferenceCategory;

    if-nez v0, :cond_0

    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/VirtualKeyboardFragment;->mInputMethodSettingValues:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v0}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->refreshAllInputMethodAndSubtypes()V

    .line 196
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/VirtualKeyboardFragment;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 197
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/VirtualKeyboardFragment;->mUserAwareContext:Landroid/content/Context;

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 198
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getPermittedInputMethods()Ljava/util/List;

    move-result-object v0

    .line 199
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v7

    .line 201
    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/VirtualKeyboardFragment;->mInputMethodSettingValues:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v1}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->getInputMethodList()Ljava/util/List;

    move-result-object v8

    .line 203
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iget v2, p0, Lcom/samsung/android/settings/inputmethod/VirtualKeyboardFragment;->mUserId:I

    .line 204
    invoke-virtual {v1, v2}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodListAsUser(I)Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x0

    if-nez v8, :cond_1

    move v11, v10

    goto :goto_0

    .line 206
    :cond_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    move v11, v1

    :goto_0
    move v12, v10

    :goto_1
    if-ge v12, v11, :cond_4

    .line 208
    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    if-eqz v0, :cond_3

    .line 210
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 211
    invoke-interface {v9, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v4, v10

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v1, 0x1

    move v4, v1

    .line 212
    :goto_3
    new-instance v13, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;

    iget v6, p0, Lcom/samsung/android/settings/inputmethod/VirtualKeyboardFragment;->mUserId:I

    move-object v1, v13

    move-object v2, v7

    move-object v5, p0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;-><init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;ZLcom/samsung/android/settings/inputmethod/SecInputMethodPreference$OnSavePreferenceListener;I)V

    .line 214
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$drawable;->empty_icon:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 215
    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/VirtualKeyboardFragment;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 218
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/VirtualKeyboardFragment;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/settings/inputmethod/VirtualKeyboardFragment$FirstInstallTimeComparator;

    invoke-direct {v1, v7}, Lcom/samsung/android/settings/inputmethod/VirtualKeyboardFragment$FirstInstallTimeComparator;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 220
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/VirtualKeyboardFragment;->mInstalledKeyboardsCategory:Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    :goto_4
    if-ge v10, v11, :cond_6

    .line 222
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/VirtualKeyboardFragment;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;

    .line 224
    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/VirtualKeyboardFragment;->mKeyboardListMap:Ljava/util/Map;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 225
    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/VirtualKeyboardFragment;->mKeyboardListMap:Ljava/util/Map;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOrder(I)V

    .line 228
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/VirtualKeyboardFragment;->mInstalledKeyboardsCategory:Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 229
    invoke-static {v0}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtilCompat;->removeUnnecessaryNonPersistentPreference(Landroidx/preference/Preference;)V

    .line 230
    invoke-virtual {v0}, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->updatePreferenceViews()V

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_6
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

    .line 149
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/settings/inputmethod/VirtualKeyboardFragment;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "VirtualKeyboardFragment"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x159

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 121
    sget p0, Lcom/android/settings/R$xml;->sec_virtual_keyboard_settings:I

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 5

    .line 86
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 87
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "profile"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 88
    const-class v1, Landroid/os/UserManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 89
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v3, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0xa

    if-ne v2, v0, :cond_1

    .line 97
    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    goto :goto_0

    .line 99
    :cond_1
    invoke-static {v1, v2}, Lcom/android/settings/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result v2

    .line 100
    invoke-static {v1}, Lcom/android/settings/Utils;->getManagedProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object v0

    .line 102
    :goto_0
    invoke-virtual {p1, v0, v4}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p1

    goto :goto_1

    .line 106
    :cond_2
    invoke-virtual {v1}, Landroid/os/UserManager;->getPrimaryUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 108
    invoke-virtual {p1, v0, v4}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p1

    .line 115
    :goto_1
    iput v2, p0, Lcom/samsung/android/settings/inputmethod/VirtualKeyboardFragment;->mUserId:I

    .line 116
    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/VirtualKeyboardFragment;->mUserAwareContext:Landroid/content/Context;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 161
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 162
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setAutoRemoveInsetCategory(Z)V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 136
    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 139
    iget-object p2, p0, Lcom/samsung/android/settings/inputmethod/VirtualKeyboardFragment;->mUserAwareContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/inputmethod/VirtualKeyboardFragment;->mInputMethodSettingValues:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    .line 141
    const-class p2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    iput-object p2, p0, Lcom/samsung/android/settings/inputmethod/VirtualKeyboardFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 142
    const-class p2, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/VirtualKeyboardFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const-string p1, "installed_keyboards"

    .line 144
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecPreferenceCategory;

    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/VirtualKeyboardFragment;->mInstalledKeyboardsCategory:Landroidx/preference/SecPreferenceCategory;

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 167
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 170
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/VirtualKeyboardFragment;->mInputMethodSettingValues:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v0}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->refreshAllInputMethodAndSubtypes()V

    .line 171
    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/VirtualKeyboardFragment;->updateInputMethodPreferenceViews()V

    return-void
.end method

.method public onSaveInputMethodPreference(Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;)V
    .locals 3

    .line 176
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->keyboard:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 178
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/VirtualKeyboardFragment;->mUserAwareContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 179
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iget v2, p0, Lcom/samsung/android/settings/inputmethod/VirtualKeyboardFragment;->mUserId:I

    .line 180
    invoke-virtual {v1, v2}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodListAsUser(I)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/inputmethod/VirtualKeyboardFragment;->mUserId:I

    .line 178
    invoke-static {p0, v0, v1, p1, v2}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtilCompat;->saveInputMethodSubtypeListForUser(Landroidx/preference/PreferenceFragmentCompat;Landroid/content/ContentResolver;Ljava/util/List;ZI)V

    .line 184
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/VirtualKeyboardFragment;->mInputMethodSettingValues:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {p1}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->refreshAllInputMethodAndSubtypes()V

    .line 185
    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/VirtualKeyboardFragment;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;

    .line 186
    invoke-virtual {p1}, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->updatePreferenceViews()V

    goto :goto_1

    :cond_1
    return-void
.end method
