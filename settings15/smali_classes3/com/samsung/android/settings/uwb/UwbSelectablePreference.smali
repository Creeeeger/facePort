.class public final Lcom/samsung/android/settings/uwb/UwbSelectablePreference;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mClick5OverEventRunnable:Lcom/samsung/android/settings/uwb/UwbSelectablePreference$1;

.field public mClickCount:I

.field public final mClickEventHandler:Landroid/os/Handler;

.field public final mContext:Landroid/content/Context;

.field public final mEnableDisableEventRunnable:Lcom/samsung/android/settings/uwb/UwbSelectablePreference$1;

.field public mIsUwbEnabled:Z

.field public mLabsEnabled:Z

.field public final mMainController:Lcom/samsung/android/settings/uwb/UwbPreferenceController;

.field public mSelectablePreference:Landroidx/preference/TwoStatePreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/uwb/UwbPreferenceController;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/uwb/UwbSelectablePreference;->mLabsEnabled:Z

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/uwb/UwbSelectablePreference;->mClickEventHandler:Landroid/os/Handler;

    iput v0, p0, Lcom/samsung/android/settings/uwb/UwbSelectablePreference;->mClickCount:I

    iput-boolean v0, p0, Lcom/samsung/android/settings/uwb/UwbSelectablePreference;->mIsUwbEnabled:Z

    new-instance v0, Lcom/samsung/android/settings/uwb/UwbSelectablePreference$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/uwb/UwbSelectablePreference$1;-><init>(Lcom/samsung/android/settings/uwb/UwbSelectablePreference;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/uwb/UwbSelectablePreference;->mEnableDisableEventRunnable:Lcom/samsung/android/settings/uwb/UwbSelectablePreference$1;

    new-instance v0, Lcom/samsung/android/settings/uwb/UwbSelectablePreference$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/uwb/UwbSelectablePreference$1;-><init>(Lcom/samsung/android/settings/uwb/UwbSelectablePreference;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/uwb/UwbSelectablePreference;->mClick5OverEventRunnable:Lcom/samsung/android/settings/uwb/UwbSelectablePreference$1;

    iput-object p1, p0, Lcom/samsung/android/settings/uwb/UwbSelectablePreference;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/uwb/UwbSelectablePreference;->mMainController:Lcom/samsung/android/settings/uwb/UwbPreferenceController;

    const-string/jumbo p1, "uwb.labs.enable"

    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "true"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/uwb/UwbSelectablePreference;->mLabsEnabled:Z

    return-void
.end method


# virtual methods
.method public final setChecked(Z)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/UwbSelectablePreference;->mSelectablePreference:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public final setEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/UwbSelectablePreference;->mSelectablePreference:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method
