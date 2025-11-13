.class public final Lcom/android/settings/development/TransitionAnimationScalePreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field static final DEFAULT_VALUE:F = 1.0f

.field static final TRANSITION_ANIMATION_SCALE_SELECTOR:I = 0x1


# instance fields
.field public final mListSummaries:[Ljava/lang/String;

.field public final mListValues:[Ljava/lang/String;

.field public final mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/TransitionAnimationScalePreferenceController;->mWindowManager:Landroid/view/IWindowManager;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0301b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/TransitionAnimationScalePreferenceController;->mListValues:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0301b4

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/TransitionAnimationScalePreferenceController;->mListSummaries:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "transition_animation_scale"

    return-object p0
.end method

.method public final onDeveloperOptionsSwitchDisabled()V
    .locals 1

    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/development/TransitionAnimationScalePreferenceController;->writeAnimationScaleOption$1(Ljava/lang/Object;)V

    return-void
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p2}, Lcom/android/settings/development/TransitionAnimationScalePreferenceController;->writeAnimationScaleOption$1(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final updateAnimationScaleValue$1()V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/development/TransitionAnimationScalePreferenceController;->mListValues:[Ljava/lang/String;

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/development/TransitionAnimationScalePreferenceController;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->getAnimationScale(I)F

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    aget-object v4, v0, v3

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    cmpg-float v4, v1, v4

    if-gtz v4, :cond_0

    move v2, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v1, Landroidx/preference/ListPreference;

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/development/TransitionAnimationScalePreferenceController;->mListSummaries:[Ljava/lang/String;

    aget-object p0, p0, v2

    invoke-virtual {v1, p0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/development/TransitionAnimationScalePreferenceController;->updateAnimationScaleValue$1()V

    return-void
.end method

.method public final writeAnimationScaleOption$1(Ljava/lang/Object;)V
    .locals 2

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    iget-object v0, p0, Lcom/android/settings/development/TransitionAnimationScalePreferenceController;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    invoke-virtual {p0}, Lcom/android/settings/development/TransitionAnimationScalePreferenceController;->updateAnimationScaleValue$1()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
