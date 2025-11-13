.class public Lcom/android/settings/notification/zen/ZenDurationDialogPreference;
.super Lcom/android/settingslib/CustomDialogPreferenceCompat;
.source "ZenDurationDialogPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/CustomDialogPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 46
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSingleLineTitle(Z)V

    .line 47
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenDurationDialogPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/CustomDialogPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 40
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSingleLineTitle(Z)V

    .line 41
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenDurationDialogPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/CustomDialogPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 34
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSingleLineTitle(Z)V

    .line 35
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenDurationDialogPreference;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    const/4 v0, 0x1

    .line 52
    invoke-static {p0, v0}, Landroidx/preference/SecPreferenceUtils;->applySummaryColor(Landroidx/preference/Preference;Z)V

    return-void
.end method


# virtual methods
.method protected onPrepareDialogBuilder(Landroidx/appcompat/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 59
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/CustomDialogPreferenceCompat;->onPrepareDialogBuilder(Landroidx/appcompat/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V

    .line 61
    new-instance p2, Lcom/android/settingslib/notification/ZenDurationDialog;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/android/settingslib/notification/ZenDurationDialog;-><init>(Landroid/content/Context;)V

    .line 62
    invoke-virtual {p2, p1}, Lcom/android/settingslib/notification/ZenDurationDialog;->setupDialog(Landroidx/appcompat/app/AlertDialog$Builder;)V

    return-void
.end method
