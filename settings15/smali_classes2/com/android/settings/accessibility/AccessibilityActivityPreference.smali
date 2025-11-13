.class public Lcom/android/settings/accessibility/AccessibilityActivityPreference;
.super Lcom/android/settingslib/RestrictedPreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final TARGET_FRAGMENT:Ljava/lang/String;


# instance fields
.field public isLastInList:Z

.field public final mA11yShortcutInfo:Landroid/accessibilityservice/AccessibilityShortcutInfo;

.field public final mComponentName:Landroid/content/ComponentName;

.field public final mExtraArgumentsFuture:Lcom/google/common/util/concurrent/ListenableFuture;

.field public final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settings/accessibility/AccessibilityActivityPreference;

    const-class v0, Lcom/android/settings/accessibility/LaunchAccessibilityActivityPreferenceFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/accessibility/AccessibilityActivityPreference;->TARGET_FRAGMENT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILandroid/accessibilityservice/AccessibilityShortcutInfo;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/settings/accessibility/AccessibilityActivityPreference;->isLastInList:Z

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilityActivityPreference;->mPm:Landroid/content/pm/PackageManager;

    iput-object p4, p0, Lcom/android/settings/accessibility/AccessibilityActivityPreference;->mA11yShortcutInfo:Landroid/accessibilityservice/AccessibilityShortcutInfo;

    invoke-virtual {p4}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/accessibility/AccessibilityActivityPreference;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p4}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p4, p1}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->loadSummary(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    sget-object p1, Lcom/android/settings/accessibility/AccessibilityActivityPreference;->TARGET_FRAGMENT:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setFragment(Ljava/lang/String;)V

    const p1, 0x7f0d0ae6

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->setPersistent()V

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setOrder(I)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p3, "component_name"

    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance p1, Lcom/android/settings/accessibility/AccessibilityActivityPreference$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/settings/accessibility/AccessibilityActivityPreference$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/accessibility/AccessibilityActivityPreference;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilityActivityPreference;->mExtraArgumentsFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settingslib/RestrictedPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-boolean p0, p0, Lcom/android/settings/accessibility/AccessibilityActivityPreference;->isLastInList:Z

    xor-int/lit8 p0, p0, 0x1

    iput-boolean p0, p1, Landroidx/preference/PreferenceViewHolder;->mDividerAllowedBelow:Z

    return-void
.end method

.method public final performClick()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityActivityPreference;->mExtraArgumentsFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to finish grabbing necessary arguments to open the fragment: componentName: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilityActivityPreference;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccessibilityActivityPreference"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-super {p0}, Lcom/android/settingslib/RestrictedPreference;->performClick()V

    return-void
.end method
