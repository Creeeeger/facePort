.class public Lcom/samsung/android/settings/notification/SelectedRadioBubblePreferenceController;
.super Lcom/android/settings/notification/app/NotificationPreferenceController;
.source "SelectedRadioBubblePreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field private mIsAppPage:Z

.field private mListener:Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;Landroidx/fragment/app/FragmentManager;ZLcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/app/NotificationPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    .line 49
    iput-object p5, p0, Lcom/samsung/android/settings/notification/SelectedRadioBubblePreferenceController;->mListener:Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;

    .line 50
    iput-object p3, p0, Lcom/samsung/android/settings/notification/SelectedRadioBubblePreferenceController;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 51
    iput-boolean p4, p0, Lcom/samsung/android/settings/notification/SelectedRadioBubblePreferenceController;->mIsAppPage:Z

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "bubble_selected"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 3

    .line 61
    invoke-super {p0}, Lcom/android/settings/notification/app/NotificationPreferenceController;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 64
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/SelectedRadioBubblePreferenceController;->mIsAppPage:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/notification/app/NotificationPreferenceController;->isFloatingIconBubble()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/notification/app/NotificationPreferenceController;->isDefaultChannel()Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 71
    :cond_2
    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-eqz p0, :cond_3

    move v1, v2

    :cond_3
    return v1

    :cond_4
    return v2
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SelectedRadioBubblePreferenceController;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v0, :cond_1

    .line 91
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/notification/app/NotificationPreferenceController;->isFloatingIconBubble()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 95
    check-cast p1, Lcom/samsung/android/settings/notification/RadioPreference;

    .line 96
    new-instance p2, Lcom/android/settings/notification/app/BubbleWarningDialogFragment;

    invoke-direct {p2}, Lcom/android/settings/notification/app/BubbleWarningDialogFragment;-><init>()V

    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    .line 97
    invoke-virtual {p2, v2, v0, v1}, Lcom/android/settings/notification/app/BubbleWarningDialogFragment;->setPkgPrefInfo(Ljava/lang/String;II)Lcom/android/settings/notification/app/BubbleWarningDialogFragment;

    move-result-object p2

    iget-object p0, p0, Lcom/samsung/android/settings/notification/SelectedRadioBubblePreferenceController;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string v0, "dialog"

    .line 98
    invoke-virtual {p2, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 99
    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/notification/RadioPreference;->setChecked(Z)V

    return p0

    :cond_0
    if-eqz p2, :cond_1

    .line 103
    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iput v1, p1, Lcom/android/settings/notification/NotificationBackend$AppRow;->bubblePreference:I

    .line 104
    iget-object p2, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v0, p1, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget p1, p1, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {p2, v0, p1, v1}, Lcom/android/settings/notification/NotificationBackend;->setAllowBubbles(Ljava/lang/String;II)Z

    .line 108
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/notification/SelectedRadioBubblePreferenceController;->mListener:Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;

    if-eqz p0, :cond_2

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;->onFieldValueChanged()V

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-eqz v0, :cond_1

    .line 81
    iget-object v1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/notification/NotificationBackend;->getBubblePreference(Ljava/lang/String;I)I

    move-result v0

    .line 82
    check-cast p1, Lcom/samsung/android/settings/notification/RadioPreference;

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/notification/app/NotificationPreferenceController;->isFloatingIconBubble()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 84
    :goto_0
    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/notification/RadioPreference;->setChecked(Z)V

    :cond_1
    return-void
.end method
