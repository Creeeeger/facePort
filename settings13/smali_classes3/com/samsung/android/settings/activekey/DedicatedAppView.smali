.class public Lcom/samsung/android/settings/activekey/DedicatedAppView;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DedicatedAppView.java"

# interfaces
.implements Lcom/android/settingslib/widget/OnMainSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/activekey/DedicatedAppView$LoadAppListTask;
    }
.end annotation


# instance fields
.field private mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLoadAppListTask:Lcom/samsung/android/settings/activekey/DedicatedAppView$LoadAppListTask;

.field private mLoggingFlow:I

.field mPackageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPressType:I

.field private mProgressBar:Landroid/view/ViewGroup;

.field private mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/activekey/DedicatedAppView;)Landroidx/apppickerview/widget/AppPickerView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/activekey/DedicatedAppView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/samsung/android/settings/activekey/DedicatedAppView;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLoadAppListTask(Lcom/samsung/android/settings/activekey/DedicatedAppView;)Lcom/samsung/android/settings/activekey/DedicatedAppView$LoadAppListTask;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mLoadAppListTask:Lcom/samsung/android/settings/activekey/DedicatedAppView$LoadAppListTask;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPressType(Lcom/samsung/android/settings/activekey/DedicatedAppView;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mPressType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmProgressBar(Lcom/samsung/android/settings/activekey/DedicatedAppView;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mProgressBar:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetupOnBindListener(Lcom/samsung/android/settings/activekey/DedicatedAppView;Landroidx/apppickerview/widget/AppPickerView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/activekey/DedicatedAppView;->setupOnBindListener(Landroidx/apppickerview/widget/AppPickerView;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, -0x1

    .line 56
    iput v0, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mLoggingFlow:I

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mPackageList:Ljava/util/ArrayList;

    .line 233
    new-instance v0, Lcom/samsung/android/settings/activekey/DedicatedAppView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/activekey/DedicatedAppView$1;-><init>(Lcom/samsung/android/settings/activekey/DedicatedAppView;)V

    iput-object v0, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private setupOnBindListener(Landroidx/apppickerview/widget/AppPickerView;)V
    .locals 1

    .line 292
    new-instance v0, Lcom/samsung/android/settings/activekey/DedicatedAppView$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/settings/activekey/DedicatedAppView$2;-><init>(Lcom/samsung/android/settings/activekey/DedicatedAppView;Landroidx/apppickerview/widget/AppPickerView;)V

    invoke-virtual {p1, v0}, Landroidx/apppickerview/widget/AppPickerView;->setOnBindListener(Landroidx/apppickerview/widget/AppPickerView$OnBindListener;)V

    return-void
.end method


# virtual methods
.method public getFragmentTitleResId(Landroid/content/Context;)I
    .locals 0

    .line 117
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 118
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "pressed_type"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "active"

    .line 119
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 120
    sget p0, Lcom/android/settings/R$string;->active_key_dedicated_app_title:I

    return p0

    :cond_0
    const-string p1, "xcover"

    .line 121
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 122
    sget p0, Lcom/android/settings/R$string;->xcover_key_dedicated_app_title:I

    return p0

    :cond_1
    const-string p1, "top"

    .line 123
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 124
    sget p0, Lcom/android/settings/R$string;->xcover_top_key_dedicated_app_title:I

    return p0

    :cond_2
    const-string p1, "sidekey"

    .line 125
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 126
    sget p0, Lcom/android/settings/R$string;->sec_short_press_dedicated_app:I

    return p0

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method public getHierarchicalParentFragment(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 102
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 103
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "pressed_type"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "active"

    .line 104
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "xcover"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "top"

    .line 106
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 107
    const-class p0, Lcom/samsung/android/settings/activekey/XcoverTopKeySettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p1, "sidekey"

    .line 108
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 109
    const-class p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 105
    :cond_2
    :goto_0
    const-class p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    .line 97
    iget p0, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mLoggingFlow:I

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 165
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 166
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    .line 167
    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    .line 168
    invoke-virtual {p1}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->show()V

    .line 169
    iget-object p1, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->addOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    .line 170
    new-instance p1, Lcom/samsung/android/settings/activekey/DedicatedAppView$LoadAppListTask;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/settings/activekey/DedicatedAppView$LoadAppListTask;-><init>(Lcom/samsung/android/settings/activekey/DedicatedAppView;Lcom/samsung/android/settings/activekey/DedicatedAppView$LoadAppListTask-IA;)V

    iput-object p1, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mLoadAppListTask:Lcom/samsung/android/settings/activekey/DedicatedAppView$LoadAppListTask;

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 74
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onAttach(Landroid/content/Context;)V

    .line 75
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "pressed_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "active"

    .line 76
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x10689

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 77
    iput p1, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mPressType:I

    .line 78
    iput v1, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mLoggingFlow:I

    .line 79
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->active_key_dedicated_app_title:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_0

    :cond_0
    const-string v0, "xcover"

    .line 80
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    .line 81
    iput p1, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mPressType:I

    .line 82
    iput v1, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mLoggingFlow:I

    .line 83
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->xcover_key_dedicated_app_title:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_0

    :cond_1
    const-string v0, "top"

    .line 84
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x2

    .line 85
    iput p1, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mPressType:I

    const p1, 0x10693

    .line 86
    iput p1, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mLoggingFlow:I

    .line 87
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->xcover_top_key_dedicated_app_title:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_0

    :cond_2
    const-string v0, "sidekey"

    .line 88
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x3

    .line 89
    iput p1, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mPressType:I

    const p1, 0x10694

    .line 90
    iput p1, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mLoggingFlow:I

    .line 91
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->sec_short_press_dedicated_app:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 134
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 135
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mContext:Landroid/content/Context;

    .line 137
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mPressType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :cond_1
    :goto_0
    invoke-static {p1, v2}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasDedicatedAppEnable(Landroid/content/Context;Z)Z

    move-result p1

    if-nez p1, :cond_2

    .line 138
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasSideKeyDedicatedAppEnable(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 139
    iget-object p1, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mPressType:I

    invoke-static {p1, v0, v1}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->setDedicatedAppSwitch(Landroid/content/Context;IZ)V

    .line 140
    iget-object p1, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mPressType:I

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->saveDedicatedApp(Landroid/content/Context;ILjava/lang/String;)V

    .line 141
    iget-object p1, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mPressType:I

    invoke-static {p1, v0, v1}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->saveDedicatedAppLabel(Landroid/content/Context;ILjava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_2
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 148
    sget p2, Lcom/android/settings/R$layout;->sec_labs_app_picker_view_layout:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 150
    sget p2, Lcom/android/settings/R$id;->sec_labs_app_picker_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/apppickerview/widget/AppPickerView;

    iput-object p2, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    const/4 p3, 0x1

    .line 151
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 152
    iget-object p2, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    const/16 p3, 0xf

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->semSetRoundedCorners(I)V

    .line 153
    iget-object p2, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, p3, v0}, Landroid/view/ViewGroup;->semSetRoundedCornerColor(II)V

    .line 154
    iget-object p2, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 156
    sget p2, Lcom/android/settings/R$id;->loading_panel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mProgressBar:Landroid/view/ViewGroup;

    const/4 p3, 0x3

    .line 157
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->semSetRoundedCorners(I)V

    .line 158
    iget-object p2, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mProgressBar:Landroid/view/ViewGroup;

    .line 159
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    .line 158
    invoke-virtual {p2, p3, p0}, Landroid/view/ViewGroup;->semSetRoundedCornerColor(II)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 196
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    .line 197
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->removeOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    .line 199
    iget-object p0, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->hide()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 187
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 188
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mProgressBar:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 189
    iget-object p0, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mProgressBar:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 175
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 176
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mPressType:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->getDedicatedAppSwitch(Landroid/content/Context;I)Z

    move-result v0

    .line 177
    iget-object v1, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v1, :cond_0

    .line 179
    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    .line 181
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/activekey/DedicatedAppView;->setDetailView(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 2

    .line 206
    iget-object p1, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mPressType:I

    invoke-static {p1, v0, p2}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->setDedicatedAppSwitch(Landroid/content/Context;IZ)V

    .line 207
    iget-object p1, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mPressType:I

    invoke-static {p1, v0}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->getDedicatedAppState(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 208
    iget-object p1, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mPressType:I

    invoke-static {p1, v0}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->getDedicatedApp(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    .line 209
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mPressType:I

    invoke-static {v0, p2, v1, p1}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->setB2BDeltaKeyCustomizationInfo(Landroid/content/Context;ZILjava/lang/String;)V

    .line 211
    :cond_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/activekey/DedicatedAppView;->setDetailView(Ljava/lang/Boolean;)V

    return-void
.end method

.method public setDetailView(Ljava/lang/Boolean;)V
    .locals 4

    .line 215
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x1

    const/16 v1, 0x8

    if-nez p1, :cond_0

    .line 216
    iget-object p1, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 217
    iget-object p1, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mProgressBar:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 218
    iget-object p0, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 220
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mLoadAppListTask:Lcom/samsung/android/settings/activekey/DedicatedAppView$LoadAppListTask;

    invoke-virtual {p1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object p1

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne p1, v2, :cond_1

    return-void

    .line 223
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mLoadAppListTask:Lcom/samsung/android/settings/activekey/DedicatedAppView$LoadAppListTask;

    invoke-virtual {p1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object p1

    sget-object v2, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    const/4 v3, 0x0

    if-ne p1, v2, :cond_2

    .line 224
    iget-object p0, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mLoadAppListTask:Lcom/samsung/android/settings/activekey/DedicatedAppView$LoadAppListTask;

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 226
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mProgressBar:Landroid/view/ViewGroup;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 227
    iget-object p1, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 228
    iget-object p0, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method
