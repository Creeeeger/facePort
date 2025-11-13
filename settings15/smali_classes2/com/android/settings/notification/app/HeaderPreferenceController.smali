.class public final Lcom/android/settings/notification/app/HeaderPreferenceController;
.super Lcom/android/settings/notification/app/NotificationPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Landroidx/lifecycle/LifecycleObserver;


# instance fields
.field public final mFragment:Lcom/android/settings/dashboard/DashboardFragment;

.field public final mFromChannel:Z

.field public mStarted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/notification/app/NotificationPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/notification/app/HeaderPreferenceController;->mStarted:Z

    iput-boolean p1, p0, Lcom/android/settings/notification/app/HeaderPreferenceController;->mFromChannel:Z

    iput-object p2, p0, Lcom/android/settings/notification/app/HeaderPreferenceController;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;I)V
    .locals 0

    const/4 p3, 0x0

    invoke-direct {p0, p1, p3}, Lcom/android/settings/notification/app/NotificationPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/notification/app/HeaderPreferenceController;->mStarted:Z

    iput-object p2, p0, Lcom/android/settings/notification/app/HeaderPreferenceController;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/notification/app/HeaderPreferenceController;->mFromChannel:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/notification/NotificationBackend;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lcom/android/settings/notification/app/NotificationPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/notification/app/HeaderPreferenceController;->mStarted:Z

    iput-boolean p1, p0, Lcom/android/settings/notification/app/HeaderPreferenceController;->mFromChannel:Z

    iput-object p2, p0, Lcom/android/settings/notification/app/HeaderPreferenceController;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    return-void
.end method


# virtual methods
.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "pref_app_header"

    return-object p0
.end method

.method public final getSummary()Ljava/lang/CharSequence;
    .locals 4

    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v2, v2, Lcom/android/settings/notification/NotificationBackend$AppRow;->label:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    const v3, 0x7f141ab9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    invoke-virtual {p0}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object p0, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->label:Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public final isAvailable()Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isIncludedInFilter()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onStart()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/notification/app/HeaderPreferenceController;->mStarted:Z

    return-void
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 7

    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/notification/app/HeaderPreferenceController;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    if-eqz v0, :cond_6

    iget-boolean v1, p0, Lcom/android/settings/notification/app/HeaderPreferenceController;->mStarted:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v4, v3, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v3, v3, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v5, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    invoke-static {v3, v4}, Lcom/android/settings/notification/NotificationBackend;->getNotificationAlertsEnabledForPackage(ILjava/lang/String;)Z

    move-result v3

    goto :goto_1

    :cond_2
    move v3, v6

    :goto_1
    iget-object p1, p1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v4, 0x7f0a05c5

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v5, Lcom/android/settings/widget/EntityHeaderController;

    invoke-direct {v5, v1, v0, p1}, Lcom/android/settings/widget/EntityHeaderController;-><init>(Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/Fragment;Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object p1, p1, Lcom/android/settings/notification/NotificationBackend$AppRow;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Lcom/android/settings/widget/EntityHeaderController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/android/settings/notification/app/HeaderPreferenceController;->mFromChannel:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/notification/app/NotificationPreferenceController;->isDefaultChannel()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object p1, p1, Lcom/android/settings/notification/NotificationBackend$AppRow;->label:Ljava/lang/CharSequence;

    :goto_2
    iput-object p1, v5, Lcom/android/settings/widget/EntityHeaderController;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/settings/notification/app/HeaderPreferenceController;->getSummary()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v5, Lcom/android/settings/widget/EntityHeaderController;->mSummary:Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object v2

    :goto_3
    iput-object v2, v5, Lcom/android/settings/widget/EntityHeaderController;->mSecondSummary:Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v0, p1, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iput-object v0, v5, Lcom/android/settings/widget/EntityHeaderController;->mPackageName:Ljava/lang/String;

    const/4 v0, 0x0

    if-nez v3, :cond_5

    const v1, 0x7f080622

    goto :goto_4

    :cond_5
    move v1, v0

    :goto_4
    iput v1, v5, Lcom/android/settings/widget/EntityHeaderController;->mTitleIcon:I

    iget p1, p1, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    iput p1, v5, Lcom/android/settings/widget/EntityHeaderController;->mUid:I

    iput v6, v5, Lcom/android/settings/widget/EntityHeaderController;->mAction1:I

    iput v0, v5, Lcom/android/settings/widget/EntityHeaderController;->mAction2:I

    iput-boolean v6, v5, Lcom/android/settings/widget/EntityHeaderController;->mHasAppInfoLink:Z

    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v5, p1}, Lcom/android/settings/widget/EntityHeaderController;->done(Landroid/content/Context;)Lcom/android/settingslib/widget/LayoutPreference;

    move-result-object p1

    iget-object v1, p1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v2, 0x7f0a05c7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0708d9

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    iput p0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    return-void
.end method
