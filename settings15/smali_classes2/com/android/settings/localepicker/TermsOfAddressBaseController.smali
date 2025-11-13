.class public abstract Lcom/android/settings/localepicker/TermsOfAddressBaseController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field private static final sExecutor:Ljava/util/concurrent/Executor;


# instance fields
.field private mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private mPreference:Lcom/android/settings/widget/TickButtonPreference;

.field private mPreferenceScreen:Landroidx/preference/PreferenceScreen;

.field private mTermsOfAddressHelper:Lcom/android/settings/localepicker/TermsOfAddressHelper;


# direct methods
.method public static synthetic $r8$lambda$-XQX09CjTw3OoGPquJXlIwCQf88(Lcom/android/settings/localepicker/TermsOfAddressBaseController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/localepicker/TermsOfAddressBaseController;->lambda$displayPreference$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$vUWv4a9sDW8gcmM9lQkbtVapKZU(Lcom/android/settings/localepicker/TermsOfAddressBaseController;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/localepicker/TermsOfAddressBaseController;->lambda$displayPreference$1(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/android/settings/localepicker/TermsOfAddressBaseController;->sExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget-object p1, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/localepicker/TermsOfAddressBaseController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private lambda$displayPreference$0()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/localepicker/TermsOfAddressBaseController;->mTermsOfAddressHelper:Lcom/android/settings/localepicker/TermsOfAddressHelper;

    invoke-virtual {p0}, Lcom/android/settings/localepicker/TermsOfAddressBaseController;->getGrammaticalGenderType()I

    move-result p0

    iget-object v1, v0, Lcom/android/settings/localepicker/TermsOfAddressHelper;->mGrammaticalInflectionManager:Landroid/app/GrammaticalInflectionManager;

    invoke-virtual {v1, p0}, Landroid/app/GrammaticalInflectionManager;->setSystemWideGrammaticalGender(I)V

    iput p0, v0, Lcom/android/settings/localepicker/TermsOfAddressHelper;->mSystemGrammaticalGender:I

    return-void
.end method

.method private synthetic lambda$displayPreference$1(Landroidx/preference/Preference;)Z
    .locals 2

    sget-object p1, Lcom/android/settings/localepicker/TermsOfAddressBaseController;->sExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/settings/localepicker/TermsOfAddressBaseController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/localepicker/TermsOfAddressBaseController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/localepicker/TermsOfAddressBaseController;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/settings/localepicker/TermsOfAddressBaseController;->mPreference:Lcom/android/settings/widget/TickButtonPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/localepicker/TermsOfAddressBaseController;->setSelected(Lcom/android/settings/widget/TickButtonPreference;)V

    iget-object p1, p0, Lcom/android/settings/localepicker/TermsOfAddressBaseController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/localepicker/TermsOfAddressBaseController;->getMetricsActionKey()I

    move-result p0

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/util/Pair;

    invoke-virtual {p1, v0, p0, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    const/4 p0, 0x1

    return p0
.end method

.method private setSelected(Lcom/android/settings/widget/TickButtonPreference;)V
    .locals 4

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/settings/localepicker/TermsOfAddressBaseController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/localepicker/TermsOfAddressBaseController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/widget/TickButtonPreference;

    invoke-virtual {v1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/TickButtonPreference;->setSelected(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updatePreferences()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/localepicker/TermsOfAddressBaseController;->mPreference:Lcom/android/settings/widget/TickButtonPreference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/localepicker/TermsOfAddressBaseController;->mTermsOfAddressHelper:Lcom/android/settings/localepicker/TermsOfAddressHelper;

    iget v1, v1, Lcom/android/settings/localepicker/TermsOfAddressHelper;->mSystemGrammaticalGender:I

    invoke-virtual {p0}, Lcom/android/settings/localepicker/TermsOfAddressBaseController;->getGrammaticalGenderType()I

    move-result p0

    if-ne v1, p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/settings/widget/TickButtonPreference;->setSelected(Z)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    iput-object p1, p0, Lcom/android/settings/localepicker/TermsOfAddressBaseController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/TickButtonPreference;

    iput-object p1, p0, Lcom/android/settings/localepicker/TermsOfAddressBaseController;->mPreference:Lcom/android/settings/widget/TickButtonPreference;

    new-instance v0, Lcom/android/settings/localepicker/TermsOfAddressBaseController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settings/localepicker/TermsOfAddressBaseController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/localepicker/TermsOfAddressBaseController;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    invoke-direct {p0}, Lcom/android/settings/localepicker/TermsOfAddressBaseController;->updatePreferences()V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBackupKeys()Ljava/util/List;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public abstract getGrammaticalGenderType()I
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getMetricsActionKey()I
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    sget-object p0, Lcom/samsung/android/settings/cube/Controllable$ControllableType;->NO_INTERACTION:Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    return-object p0
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setTermsOfAddressHelper(Lcom/android/settings/localepicker/TermsOfAddressHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/localepicker/TermsOfAddressBaseController;->mTermsOfAddressHelper:Lcom/android/settings/localepicker/TermsOfAddressHelper;

    return-void
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
