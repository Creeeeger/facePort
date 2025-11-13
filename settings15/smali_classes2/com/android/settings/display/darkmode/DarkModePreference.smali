.class public Lcom/android/settings/display/darkmode/DarkModePreference;
.super Lcom/android/settingslib/PrimarySwitchPreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mCallback:Lcom/android/settings/display/darkmode/DarkModePreference$$ExternalSyntheticLambda0;

.field public final mDarkModeObserver:Lcom/android/settings/display/darkmode/DarkModeObserver;

.field public final mFormat:Lcom/android/settings/display/darkmode/TimeFormatter;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mUiModeManager:Landroid/app/UiModeManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/PrimarySwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Lcom/android/settings/display/darkmode/DarkModeObserver;

    invoke-direct {p2, p1}, Lcom/android/settings/display/darkmode/DarkModeObserver;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/display/darkmode/DarkModePreference;->mDarkModeObserver:Lcom/android/settings/display/darkmode/DarkModeObserver;

    const-class v0, Landroid/app/UiModeManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    iput-object v0, p0, Lcom/android/settings/display/darkmode/DarkModePreference;->mUiModeManager:Landroid/app/UiModeManager;

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/settings/display/darkmode/DarkModePreference;->mPowerManager:Landroid/os/PowerManager;

    new-instance v0, Lcom/android/settings/display/darkmode/TimeFormatter;

    invoke-direct {v0, p1}, Lcom/android/settings/display/darkmode/TimeFormatter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/display/darkmode/DarkModePreference;->mFormat:Lcom/android/settings/display/darkmode/TimeFormatter;

    new-instance p1, Lcom/android/settings/display/darkmode/DarkModePreference$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/settings/display/darkmode/DarkModePreference$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/display/darkmode/DarkModePreference;)V

    iput-object p1, p0, Lcom/android/settings/display/darkmode/DarkModePreference;->mCallback:Lcom/android/settings/display/darkmode/DarkModePreference$$ExternalSyntheticLambda0;

    invoke-virtual {p2, p1}, Lcom/android/settings/display/darkmode/DarkModeObserver;->subscribe(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final onAttached()V
    .locals 1

    invoke-virtual {p0}, Landroidx/preference/Preference;->registerDependency()V

    iget-object v0, p0, Lcom/android/settings/display/darkmode/DarkModePreference;->mDarkModeObserver:Lcom/android/settings/display/darkmode/DarkModeObserver;

    iget-object p0, p0, Lcom/android/settings/display/darkmode/DarkModePreference;->mCallback:Lcom/android/settings/display/darkmode/DarkModePreference$$ExternalSyntheticLambda0;

    invoke-virtual {v0, p0}, Lcom/android/settings/display/darkmode/DarkModeObserver;->subscribe(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onDetached()V
    .locals 0

    invoke-super {p0}, Landroidx/preference/Preference;->onDetached()V

    iget-object p0, p0, Lcom/android/settings/display/darkmode/DarkModePreference;->mDarkModeObserver:Lcom/android/settings/display/darkmode/DarkModeObserver;

    invoke-virtual {p0}, Lcom/android/settings/display/darkmode/DarkModeObserver;->unsubscribe()V

    return-void
.end method
