.class public Lcom/android/systemui/tuner/ShortcutPicker;
.super Landroidx/preference/PreferenceFragment;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mKey:Ljava/lang/String;

.field public mNonePreference:Lcom/android/systemui/tuner/SelectablePreference;

.field public final mSelectablePreferences:Ljava/util/ArrayList;

.field public mTunerService:Lcom/android/systemui/tuner/TunerService;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/preference/PreferenceFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/tuner/ShortcutPicker;->mSelectablePreferences:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string/jumbo p1, "sysui_keyguard_left"

    iget-object v0, p0, Lcom/android/systemui/tuner/ShortcutPicker;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    const p1, 0x7f130b2a

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    const p1, 0x7f130b2b

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    :goto_0
    return-void
.end method

.method public final onCreatePreferences(Ljava/lang/String;)V
    .locals 6

    iget-object p1, p0, Landroidx/preference/PreferenceFragment;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    iget-object v0, p1, Landroidx/preference/PreferenceManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroidx/preference/PreferenceScreen;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroidx/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V

    const/4 p1, 0x1

    iput-boolean p1, v1, Landroidx/preference/PreferenceGroup;->mOrderingAsAdded:Z

    new-instance p1, Landroidx/preference/PreferenceCategory;

    invoke-direct {p1, v0}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    const v3, 0x7f1313bd

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setTitle(I)V

    new-instance v3, Lcom/android/systemui/tuner/SelectablePreference;

    invoke-direct {v3, v0}, Lcom/android/systemui/tuner/SelectablePreference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/tuner/ShortcutPicker;->mNonePreference:Lcom/android/systemui/tuner/SelectablePreference;

    iget-object v4, p0, Lcom/android/systemui/tuner/ShortcutPicker;->mSelectablePreferences:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/systemui/tuner/ShortcutPicker;->mNonePreference:Lcom/android/systemui/tuner/SelectablePreference;

    const v4, 0x7f130b29

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object v3, p0, Lcom/android/systemui/tuner/ShortcutPicker;->mNonePreference:Lcom/android/systemui/tuner/SelectablePreference;

    iget-object v4, v3, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    const v5, 0x7f080ab5

    invoke-static {v5, v4}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/tuner/SelectablePreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iput v5, v3, Landroidx/preference/Preference;->mIconResId:I

    iget-object v3, p0, Lcom/android/systemui/tuner/ShortcutPicker;->mNonePreference:Lcom/android/systemui/tuner/SelectablePreference;

    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Landroid/content/pm/LauncherApps;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/LauncherApps;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    new-instance v3, Lcom/android/systemui/tuner/ShortcutPicker$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/android/systemui/tuner/ShortcutPicker$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/tuner/ShortcutPicker;Landroid/content/Context;Landroidx/preference/PreferenceScreen;Landroidx/preference/PreferenceCategory;)V

    invoke-interface {v2, v3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {v1, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)V

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)V

    iget v4, v3, Landroidx/preference/Preference;->mOrder:I

    const v5, 0x7fffffff

    if-eq v5, v4, :cond_0

    iput v5, v3, Landroidx/preference/Preference;->mOrder:I

    iget-object v4, v3, Landroidx/preference/Preference;->mListener:Landroidx/preference/PreferenceGroupAdapter;

    if-eqz v4, :cond_0

    iget-object v5, v4, Landroidx/preference/PreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    iget-object v4, v4, Landroidx/preference/PreferenceGroupAdapter;->mSyncRunnable:Landroidx/preference/PreferenceGroupAdapter$1;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v5, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragment;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/tuner/ShortcutPicker;->mKey:Ljava/lang/String;

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {p1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/tuner/TunerService;

    iput-object p1, p0, Lcom/android/systemui/tuner/ShortcutPicker;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    iget-object v0, p0, Lcom/android/systemui/tuner/ShortcutPicker;->mKey:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/android/systemui/tuner/ShortcutPicker;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    return-void
.end method

.method public final onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/tuner/ShortcutPicker;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    iget-object v1, p0, Lcom/android/systemui/tuner/ShortcutPicker;->mKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroidx/preference/Preference;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    const/4 p0, 0x1

    return p0
.end method

.method public final onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/tuner/ShortcutPicker;->mSelectablePreferences:Ljava/util/ArrayList;

    new-instance p1, Lcom/android/systemui/tuner/ShortcutPicker$$ExternalSyntheticLambda2;

    invoke-direct {p1, p2}, Lcom/android/systemui/tuner/ShortcutPicker$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
