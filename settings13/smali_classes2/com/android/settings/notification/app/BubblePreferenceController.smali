.class public Lcom/android/settings/notification/app/BubblePreferenceController;
.super Lcom/android/settings/notification/app/NotificationPreferenceController;
.source "BubblePreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field static final SYSTEM_WIDE_OFF:I = 0x0

.field static final SYSTEM_WIDE_ON:I = 0x1


# instance fields
.field private mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field private mHasSentInvalidMsg:Z

.field private mIsAppPage:Z

.field private mListener:Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;

.field private mNumConversations:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;Lcom/android/settings/notification/NotificationBackend;ZLcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p3}, Lcom/android/settings/notification/app/NotificationPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    .line 60
    iput-object p2, p0, Lcom/android/settings/notification/app/BubblePreferenceController;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 61
    iput-boolean p4, p0, Lcom/android/settings/notification/app/BubblePreferenceController;->mIsAppPage:Z

    .line 62
    iput-object p5, p0, Lcom/android/settings/notification/app/BubblePreferenceController;->mListener:Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;

    return-void
.end method

.method public static applyBubblesApproval(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 1

    .line 165
    new-instance v0, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    .line 166
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/notification/NotificationBackend;->setAllowBubbles(Ljava/lang/String;II)Z

    .line 169
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "notification_bubbles"

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static revertBubblesApproval(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .line 152
    new-instance p0, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {p0}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    const/4 v0, 0x0

    .line 153
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/settings/notification/NotificationBackend;->setAllowBubbles(Ljava/lang/String;II)Z

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "bubble_pref"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 3

    .line 72
    invoke-super {p0}, Lcom/android/settings/notification/app/NotificationPreferenceController;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 75
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/notification/app/BubblePreferenceController;->mIsAppPage:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/notification/app/NotificationPreferenceController;->isFloatingIconBubble()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/notification/app/NotificationPreferenceController;->isDefaultChannel()Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 82
    :cond_2
    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-eqz p0, :cond_3

    iget p0, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->bubblePreference:I

    if-eqz p0, :cond_3

    move v1, v2

    :cond_3
    return v1

    :cond_4
    return v2
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_0

    .line 120
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/app/NotificationChannel;->setAllowBubbles(Z)V

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/notification/app/NotificationPreferenceController;->saveChannel()V

    goto :goto_0

    .line 122
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/notification/app/BubblePreferenceController;->mIsAppPage:Z

    if-eqz v0, :cond_3

    .line 124
    check-cast p1, Lcom/android/settings/notification/app/BubblePreference;

    .line 125
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/app/BubblePreferenceController;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v0, :cond_2

    .line 126
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/notification/app/NotificationPreferenceController;->isFloatingIconBubble()Z

    move-result v0

    if-nez v0, :cond_1

    .line 128
    invoke-virtual {p1}, Lcom/android/settings/notification/app/BubblePreference;->getSelectedPreference()I

    move-result p1

    if-nez p1, :cond_1

    .line 131
    new-instance p1, Lcom/android/settings/notification/app/BubbleWarningDialogFragment;

    invoke-direct {p1}, Lcom/android/settings/notification/app/BubbleWarningDialogFragment;-><init>()V

    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v1, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    .line 132
    invoke-virtual {p1, v1, v0, p2}, Lcom/android/settings/notification/app/BubbleWarningDialogFragment;->setPkgPrefInfo(Ljava/lang/String;II)Lcom/android/settings/notification/app/BubbleWarningDialogFragment;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/notification/app/BubblePreferenceController;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string p2, "dialog"

    .line 133
    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 136
    :cond_1
    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iput p2, p1, Lcom/android/settings/notification/NotificationBackend$AppRow;->bubblePreference:I

    .line 137
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v1, p1, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget p1, p1, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/settings/notification/NotificationBackend;->setAllowBubbles(Ljava/lang/String;II)Z

    .line 140
    :cond_2
    iget-object p0, p0, Lcom/android/settings/notification/app/BubblePreferenceController;->mListener:Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;

    if-eqz p0, :cond_3

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;->onFieldValueChanged()V

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 5

    .line 90
    iget-boolean v0, p0, Lcom/android/settings/notification/app/BubblePreferenceController;->mIsAppPage:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-eqz v0, :cond_3

    .line 91
    iget-object v3, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v4, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {v3, v4, v0}, Lcom/android/settings/notification/NotificationBackend;->isInInvalidMsgState(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/notification/app/BubblePreferenceController;->mHasSentInvalidMsg:Z

    .line 92
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v3, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v4, v3, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v3, v3, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {v0, v4, v3}, Lcom/android/settings/notification/NotificationBackend;->getConversations(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/android/settings/notification/app/BubblePreferenceController;->mNumConversations:I

    .line 95
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->bubblePreference:I

    .line 96
    check-cast p1, Lcom/android/settings/notification/app/BubblePreference;

    .line 97
    iget-object v3, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {p1, v3}, Lcom/android/settings/notification/app/BubblePreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 98
    iget-boolean v3, p0, Lcom/android/settings/notification/app/BubblePreferenceController;->mHasSentInvalidMsg:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/settings/notification/app/BubblePreferenceController;->mNumConversations:I

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :cond_1
    :goto_0
    invoke-virtual {p1, v2}, Lcom/android/settings/notification/app/BubblePreference;->setSelectedVisibility(Z)V

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/notification/app/NotificationPreferenceController;->isFloatingIconBubble()Z

    move-result p0

    if-nez p0, :cond_2

    .line 100
    invoke-virtual {p1, v1}, Lcom/android/settings/notification/app/BubblePreference;->setSelectedPreference(I)V

    goto :goto_1

    .line 102
    :cond_2
    invoke-virtual {p1, v0}, Lcom/android/settings/notification/app/BubblePreference;->setSelectedPreference(I)V

    goto :goto_1

    .line 104
    :cond_3
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_6

    .line 106
    check-cast p1, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    .line 107
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 109
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->canBubble()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->bubblePreference:I

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    .line 111
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getAllowBubbles()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_5

    .line 112
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/notification/app/NotificationPreferenceController;->isFloatingIconBubble()Z

    move-result p0

    if-eqz p0, :cond_5

    move v1, v2

    .line 109
    :cond_5
    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_6
    :goto_1
    return-void
.end method
