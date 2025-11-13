.class public Lcom/samsung/android/settings/notification/NotificationAppPreference;
.super Lcom/samsung/android/settings/widget/PrimarySwitchPreference;
.source "NotificationAppPreference.java"


# instance fields
.field private mChecked:Z

.field private mEnableSwitch:Z

.field private mIconSize:I

.field private mNoneBlockable:Z

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method public static synthetic $r8$lambda$JatOIOlnoIowsLOb_9PzRlUnqXU(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/notification/NotificationAppPreference;->lambda$onBindViewHolder$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmChecked(Lcom/samsung/android/settings/notification/NotificationAppPreference;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/notification/NotificationAppPreference;->mChecked:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSwitch(Lcom/samsung/android/settings/notification/NotificationAppPreference;)Landroid/widget/Switch;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/notification/NotificationAppPreference;->mSwitch:Landroid/widget/Switch;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/widget/PrimarySwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 40
    iput-boolean p1, p0, Lcom/samsung/android/settings/notification/NotificationAppPreference;->mEnableSwitch:Z

    const/4 p1, 0x0

    .line 42
    iput-boolean p1, p0, Lcom/samsung/android/settings/notification/NotificationAppPreference;->mNoneBlockable:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/widget/PrimarySwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 40
    iput-boolean p1, p0, Lcom/samsung/android/settings/notification/NotificationAppPreference;->mEnableSwitch:Z

    const/4 p1, 0x0

    .line 42
    iput-boolean p1, p0, Lcom/samsung/android/settings/notification/NotificationAppPreference;->mNoneBlockable:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/settings/widget/PrimarySwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x1

    .line 40
    iput-boolean p1, p0, Lcom/samsung/android/settings/notification/NotificationAppPreference;->mEnableSwitch:Z

    const/4 p1, 0x0

    .line 42
    iput-boolean p1, p0, Lcom/samsung/android/settings/notification/NotificationAppPreference;->mNoneBlockable:Z

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/notification/NotificationAppPreference;Z)Z
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->persistBoolean(Z)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$onBindViewHolder$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 113
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method protected getSecondTargetResId()I
    .locals 0

    .line 77
    sget p0, Lcom/android/settings/R$layout;->preference_widget_primary_switch:I

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 5

    .line 82
    invoke-super {p0, p1}, Lcom/samsung/android/settings/widget/PrimarySwitchPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const/4 v0, 0x0

    .line 85
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    .line 86
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v2, 0x1020006

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 87
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/samsung/android/settings/notification/NotificationAppPreference;->mIconSize:I

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    sget v1, Lcom/android/settings/R$id;->switchWidget:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    if-eqz v2, :cond_1

    .line 95
    invoke-virtual {p0}, Lcom/android/settingslib/RestrictedPreference;->isDisabledByAdmin()Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v3

    :cond_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 96
    new-instance v0, Lcom/samsung/android/settings/notification/NotificationAppPreference$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/notification/NotificationAppPreference$1;-><init>(Lcom/samsung/android/settings/notification/NotificationAppPreference;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    new-instance v0, Lcom/samsung/android/settings/notification/NotificationAppPreference$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/samsung/android/settings/notification/NotificationAppPreference$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 117
    :cond_1
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/NotificationAppPreference;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_2

    .line 119
    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p0, Lcom/samsung/android/settings/notification/NotificationAppPreference;->mSwitch:Landroid/widget/Switch;

    iget-boolean v1, p0, Lcom/samsung/android/settings/notification/NotificationAppPreference;->mChecked:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 121
    iget-object v0, p0, Lcom/samsung/android/settings/notification/NotificationAppPreference;->mSwitch:Landroid/widget/Switch;

    iget-boolean v1, p0, Lcom/samsung/android/settings/notification/NotificationAppPreference;->mEnableSwitch:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 125
    :cond_2
    sget v0, Lcom/android/settings/R$id;->two_target_divider:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 126
    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/NotificationAppPreference;->mNoneBlockable:Z

    if-eqz v0, :cond_4

    .line 127
    iget-object p0, p0, Lcom/samsung/android/settings/notification/NotificationAppPreference;->mSwitch:Landroid/widget/Switch;

    if-eqz p0, :cond_3

    invoke-virtual {p0, v3}, Landroid/widget/Switch;->setVisibility(I)V

    :cond_3
    if-eqz p1, :cond_4

    .line 128
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    .line 138
    iput-boolean p1, p0, Lcom/samsung/android/settings/notification/NotificationAppPreference;->mChecked:Z

    .line 139
    iget-object p0, p0, Lcom/samsung/android/settings/notification/NotificationAppPreference;->mSwitch:Landroid/widget/Switch;

    if-eqz p0, :cond_0

    .line 140
    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 156
    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/notification/NotificationAppPreference;->setSwitchEnabled(Z)V

    return-void
.end method

.method public setSwitchEnabled(Z)V
    .locals 0

    .line 145
    iput-boolean p1, p0, Lcom/samsung/android/settings/notification/NotificationAppPreference;->mEnableSwitch:Z

    .line 146
    iget-object p0, p0, Lcom/samsung/android/settings/notification/NotificationAppPreference;->mSwitch:Landroid/widget/Switch;

    if-eqz p0, :cond_0

    .line 147
    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setEnabled(Z)V

    :cond_0
    return-void
.end method
