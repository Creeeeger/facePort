.class public final Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceForWorkPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/preference/PreferenceManager$OnActivityResultListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0019\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007J\u0006\u0010\u001c\u001a\u00020\u001dJ\u0010\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u001f\u001a\u00020 H\u0016J\u0008\u0010!\u001a\u00020\tH\u0016J\u0006\u0010\"\u001a\u00020#J\u0010\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\'H\u0016J\u000e\u0010(\u001a\u00020\u001d2\u0006\u0010)\u001a\u00020\u0011J\u0006\u0010*\u001a\u00020\u001dJ\u0008\u0010+\u001a\u00020%H\u0016J\"\u0010,\u001a\u00020%2\u0006\u0010-\u001a\u00020\t2\u0006\u0010.\u001a\u00020\t2\u0008\u0010/\u001a\u0004\u0018\u00010#H\u0016J\u0008\u00100\u001a\u00020\u001dH\u0002R\u0014\u0010\u0008\u001a\u00020\tX\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0014\u0010\u000c\u001a\u00020\tX\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000bR\u0016\u0010\u000e\u001a\n \u000f*\u0004\u0018\u00010\u00060\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u000b\"\u0004\u0008\u001a\u0010\u001b\u00a8\u00061"
    }
    d2 = {
        "Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceForWorkPreferenceController;",
        "Lcom/android/settings/core/BasePreferenceController;",
        "Landroid/preference/PreferenceManager$OnActivityResultListener;",
        "context",
        "Landroid/content/Context;",
        "preferenceKey",
        "",
        "(Landroid/content/Context;Ljava/lang/String;)V",
        "ADD_SAMSUNG_ACCOUNT_FOR_WORK_REQUEST_CODE",
        "",
        "getADD_SAMSUNG_ACCOUNT_FOR_WORK_REQUEST_CODE",
        "()I",
        "INTELLIGENCE_SERVICE_ACTIVITY_FOR_WORK_REQUEST_CODE",
        "getINTELLIGENCE_SERVICE_ACTIVITY_FOR_WORK_REQUEST_CODE",
        "TAG",
        "kotlin.jvm.PlatformType",
        "mParentFragment",
        "Landroidx/fragment/app/Fragment;",
        "mPreference",
        "Landroidx/preference/SecPreference;",
        "getMPreference",
        "()Landroidx/preference/SecPreference;",
        "setMPreference",
        "(Landroidx/preference/SecPreference;)V",
        "mUserId",
        "getMUserId",
        "setMUserId",
        "(I)V",
        "addSamsungAccount",
        "",
        "displayPreference",
        "screen",
        "Landroidx/preference/PreferenceScreen;",
        "getAvailabilityStatus",
        "getIntelligenceServiceSettingsIntent",
        "Landroid/content/Intent;",
        "handlePreferenceTreeClick",
        "",
        "preference",
        "Landroidx/preference/Preference;",
        "init",
        "parentFragment",
        "intelligenceServiceSettingStart",
        "isControllable",
        "onActivityResult",
        "requestCode",
        "resultCode",
        "data",
        "onClicked",
        "applications__sources__apps__SecSettings__android_common__SecSettings-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final ADD_SAMSUNG_ACCOUNT_FOR_WORK_REQUEST_CODE:I

.field private final INTELLIGENCE_SERVICE_ACTIVITY_FOR_WORK_REQUEST_CODE:I

.field private final TAG:Ljava/lang/String;

.field private mParentFragment:Landroidx/fragment/app/Fragment;

.field private mPreference:Landroidx/preference/SecPreference;

.field private mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-class p1, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceForWorkPreferenceController;

    const-string p1, "IntelligenceServiceForWorkPreferenceController"

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceForWorkPreferenceController;->TAG:Ljava/lang/String;

    const/16 p1, 0x7d1

    iput p1, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceForWorkPreferenceController;->INTELLIGENCE_SERVICE_ACTIVITY_FOR_WORK_REQUEST_CODE:I

    const/16 p1, 0x7d2

    iput p1, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceForWorkPreferenceController;->ADD_SAMSUNG_ACCOUNT_FOR_WORK_REQUEST_CODE:I

    return-void
.end method

.method private final onClicked()V
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceForWorkPreferenceController;->mUserId:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/account/AccountUtils;->isSamsungAccountExistsAsUser(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceForWorkPreferenceController;->intelligenceServiceSettingStart()V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.settings.action.INTELLIGENCE_SERVICE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceForWorkPreferenceController;->mParentFragment:Landroidx/fragment/app/Fragment;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v2, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceForWorkPreferenceController;->INTELLIGENCE_SERVICE_ACTIVITY_FOR_WORK_REQUEST_CODE:I

    iget p0, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceForWorkPreferenceController;->mUserId:I

    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {v1, v0, v2, p0}, Landroid/app/Activity;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final addSamsungAccount()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceForWorkPreferenceController;->mParentFragment:Landroidx/fragment/app/Fragment;

    iget v2, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceForWorkPreferenceController;->ADD_SAMSUNG_ACCOUNT_FOR_WORK_REQUEST_CODE:I

    iget v3, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceForWorkPreferenceController;->mUserId:I

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v4, v3}, Lcom/samsung/android/settings/account/AccountUtils;->addSamsungAccount(Landroid/content/Context;Landroidx/fragment/app/Fragment;III)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceForWorkPreferenceController;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityNotFoundException"

    invoke-static {v1, v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    const-string/jumbo v0, "screen"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->getManagedProfileId(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceForWorkPreferenceController;->mUserId:I

    const-string v0, "intelligence_service"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceForWorkPreferenceController;->mPreference:Landroidx/preference/SecPreference;

    return-void
.end method

.method public final getADD_SAMSUNG_ACCOUNT_FOR_WORK_REQUEST_CODE()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceForWorkPreferenceController;->ADD_SAMSUNG_ACCOUNT_FOR_WORK_REQUEST_CODE:I

    return p0
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x3

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

.method public final getINTELLIGENCE_SERVICE_ACTIVITY_FOR_WORK_REQUEST_CODE()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceForWorkPreferenceController;->INTELLIGENCE_SERVICE_ACTIVITY_FOR_WORK_REQUEST_CODE:I

    return p0
.end method

.method public final getIntelligenceServiceSettingsIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    iget-object v2, v1, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object p0, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    const p0, 0x13880

    iput p0, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    iput-object v0, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mArguments:Landroid/os/Bundle;

    const/4 p0, 0x0

    const v0, 0x7f1424b2

    invoke-virtual {v1, v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(ILjava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
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

.method public final getMPreference()Landroidx/preference/SecPreference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceForWorkPreferenceController;->mPreference:Landroidx/preference/SecPreference;

    return-object p0
.end method

.method public final getMUserId()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceForWorkPreferenceController;->mUserId:I

    return p0
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

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    const-string v0, "preference"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceForWorkPreferenceController;->onClicked()V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
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

.method public final init(Landroidx/fragment/app/Fragment;)V
    .locals 1

    const-string v0, "parentFragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceForWorkPreferenceController;->mParentFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method public final intelligenceServiceSettingStart()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceForWorkPreferenceController;->getIntelligenceServiceSettingsIntent()Landroid/content/Intent;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceForWorkPreferenceController;->mUserId:I

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceForWorkPreferenceController;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityNotFoundException"

    invoke-static {v1, v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public isControllable()Z
    .locals 0

    const/4 p0, 0x1

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

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 3

    iget-object p3, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceForWorkPreferenceController;->TAG:Ljava/lang/String;

    const-string v0, "onActivityResult: requestCode : "

    const-string v1, ", resultCode : "

    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/settings/fuelgauge/datasaver/DynamicDenylistManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    iget p3, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceForWorkPreferenceController;->ADD_SAMSUNG_ACCOUNT_FOR_WORK_REQUEST_CODE:I

    const-string v0, "ai_info_confirmed"

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne p1, p3, :cond_1

    if-ne p2, v1, :cond_0

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/account/AccountUtils;->isChildAccount(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget p2, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceForWorkPreferenceController;->mUserId:I

    invoke-static {p1, v0, v2, p2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceForWorkPreferenceController;->intelligenceServiceSettingStart()V

    :cond_0
    return v2

    :cond_1
    iget p3, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceForWorkPreferenceController;->INTELLIGENCE_SERVICE_ACTIVITY_FOR_WORK_REQUEST_CODE:I

    if-ne p1, p3, :cond_3

    if-ne p2, v1, :cond_3

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget p2, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceForWorkPreferenceController;->mUserId:I

    invoke-static {p1, p2}, Lcom/samsung/android/settings/account/AccountUtils;->isSamsungAccountExistsAsUser(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget p2, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceForWorkPreferenceController;->mUserId:I

    invoke-static {p1, v0, v2, p2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceForWorkPreferenceController;->intelligenceServiceSettingStart()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceForWorkPreferenceController;->addSamsungAccount()V

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final setMPreference(Landroidx/preference/SecPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceForWorkPreferenceController;->mPreference:Landroidx/preference/SecPreference;

    return-void
.end method

.method public final setMUserId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceForWorkPreferenceController;->mUserId:I

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
