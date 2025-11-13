.class public Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ActiveKeyAppGridView.java"

# interfaces
.implements Lcom/android/settingslib/widget/OnMainSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppRow;,
        Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;
    }
.end annotation


# instance fields
.field private mAppPickerGridView:Lcom/samsung/android/settings/usefulfeature/AppGridView;

.field private mAppRows:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppRow;",
            ">;"
        }
    .end annotation
.end field

.field private mBlockList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mEmptyText:Landroid/widget/TextView;

.field private mEmptyView:Landroid/view/ViewGroup;

.field private mHandler:Landroid/os/Handler;

.field private mLoadAppListTask:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;

.field private mLoading:Landroid/view/ViewGroup;

.field private mLoggingFlow:I

.field private mPressType:I

.field private mState:Z

.field private mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAppPickerGridView(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)Lcom/samsung/android/settings/usefulfeature/AppGridView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mAppPickerGridView:Lcom/samsung/android/settings/usefulfeature/AppGridView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAppRows(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mAppRows:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBlockList(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mBlockList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLoadAppListTask(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mLoadAppListTask:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPressType(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mPressType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$msetupOnBindListener(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;Landroidx/apppickerview/widget/AppPickerView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->setupOnBindListener(Landroidx/apppickerview/widget/AppPickerView;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartLoading(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->startLoading()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopLoading(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->stopLoading()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mBlockList:Ljava/util/ArrayList;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mAppRows:Ljava/util/Map;

    const/4 v0, -0x1

    .line 92
    iput v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mLoggingFlow:I

    .line 201
    new-instance v0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$1;-><init>(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)V

    iput-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private doAppLoading(Z)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 187
    iget-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 188
    iget-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mLoading:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 189
    iget-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mAppPickerGridView:Lcom/samsung/android/settings/usefulfeature/AppGridView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 190
    iget-object p0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 192
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mLoadAppListTask:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;

    invoke-virtual {p1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object p1

    sget-object v2, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-ne p1, v2, :cond_1

    .line 193
    iget-object p0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mLoadAppListTask:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 195
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->startLoading()V

    .line 196
    iget-object p0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xfa

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method

.method private getBlockList(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 447
    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasVzwPttEnable(Landroid/content/Context;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 448
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    const-string p1, "com.verizon.pushtotalkplus"

    .line 449
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 450
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasEPttEnable(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 451
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    const-string p1, "com.att.eptt"

    .line 452
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 453
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasBMCPttEnable(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 454
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    const-string p1, "com.bell.ptt"

    .line 455
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 456
    :cond_2
    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasTMOPttEnable(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 457
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    const-string p1, "com.sprint.sdcplus"

    .line 458
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private setupOnBindListener(Landroidx/apppickerview/widget/AppPickerView;)V
    .locals 1

    .line 392
    new-instance v0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$2;-><init>(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)V

    invoke-virtual {p1, v0}, Landroidx/apppickerview/widget/AppPickerView;->setOnBindListener(Landroidx/apppickerview/widget/AppPickerView$OnBindListener;)V

    return-void
.end method

.method private startLoading()V
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mLoading:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 261
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mAppPickerGridView:Lcom/samsung/android/settings/usefulfeature/AppGridView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 263
    iget-object p0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private stopLoading()V
    .locals 3

    .line 268
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mLoading:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 269
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 270
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mAppPickerGridView:Lcom/samsung/android/settings/usefulfeature/AppGridView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 271
    iget-object p0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    .line 99
    iget p0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mLoggingFlow:I

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 177
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 178
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    .line 179
    invoke-virtual {p1}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->show()V

    .line 180
    iget-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iget-boolean v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mState:Z

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    .line 181
    new-instance p1, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;-><init>(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask-IA;)V

    iput-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mLoadAppListTask:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;

    .line 182
    iget-boolean p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mState:Z

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->doAppLoading(Z)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 104
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onAttach(Landroid/content/Context;)V

    .line 105
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "pressed_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "long"

    .line 106
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 107
    iput p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mPressType:I

    const p1, 0x10684

    .line 108
    iput p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mLoggingFlow:I

    goto :goto_0

    :cond_0
    const-string v0, "double"

    .line 109
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x10683

    if-eqz v0, :cond_1

    const/4 p1, 0x2

    .line 110
    iput p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mPressType:I

    .line 111
    iput v1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mLoggingFlow:I

    goto :goto_0

    :cond_1
    const-string v0, "short"

    .line 112
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x0

    .line 113
    iput p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mPressType:I

    .line 114
    iput v1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mLoggingFlow:I

    goto :goto_0

    :cond_2
    const-string v0, "xcover_top_short"

    .line 115
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x3

    .line 116
    iput p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mPressType:I

    const p1, 0x1068d

    .line 117
    iput p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mLoggingFlow:I

    goto :goto_0

    :cond_3
    const-string v0, "xcover_top_long"

    .line 118
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x4

    .line 119
    iput p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mPressType:I

    const p1, 0x1068e

    .line 120
    iput p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mLoggingFlow:I

    :cond_4
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 126
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 127
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mContext:Landroid/content/Context;

    .line 128
    iget v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mPressType:I

    invoke-static {p1, v0}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->getPressActionState(Landroid/content/Context;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mState:Z

    .line 129
    iget-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->getBlockList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mBlockList:Ljava/util/ArrayList;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .line 134
    sget p3, Lcom/android/settings/R$layout;->sec_app_shortcut_view:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 136
    new-instance p2, Lcom/samsung/android/settings/usefulfeature/AppGridView;

    iget-object p3, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mContext:Landroid/content/Context;

    invoke-direct {p2, p3}, Lcom/samsung/android/settings/usefulfeature/AppGridView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mAppPickerGridView:Lcom/samsung/android/settings/usefulfeature/AppGridView;

    .line 137
    sget p2, Lcom/android/settings/R$id;->appshortcutview:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/settings/usefulfeature/AppGridView;

    iput-object p2, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mAppPickerGridView:Lcom/samsung/android/settings/usefulfeature/AppGridView;

    const/4 p3, 0x1

    .line 138
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 139
    iget-object p2, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mAppPickerGridView:Lcom/samsung/android/settings/usefulfeature/AppGridView;

    const/16 v0, 0xf

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->semSetRoundedCorners(I)V

    .line 140
    iget-object p2, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mAppPickerGridView:Lcom/samsung/android/settings/usefulfeature/AppGridView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/view/ViewGroup;->semSetRoundedCornerColor(II)V

    .line 141
    iget-object p2, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mAppPickerGridView:Lcom/samsung/android/settings/usefulfeature/AppGridView;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 143
    sget p2, Lcom/android/settings/R$id;->loading_panel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mLoading:Landroid/view/ViewGroup;

    const/4 v0, 0x3

    .line 144
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->semSetRoundedCorners(I)V

    .line 145
    iget-object p2, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mLoading:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mContext:Landroid/content/Context;

    .line 146
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 145
    invoke-virtual {p2, v0, v1}, Landroid/view/ViewGroup;->semSetRoundedCornerColor(II)V

    .line 148
    sget p2, Lcom/android/settings/R$id;->empty_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mEmptyView:Landroid/view/ViewGroup;

    const p2, 0x1020004

    .line 149
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mEmptyText:Landroid/widget/TextView;

    .line 150
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasXcoverKeySetting()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 151
    iget p2, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mPressType:I

    if-nez p2, :cond_0

    .line 152
    iget-object p2, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mEmptyText:Landroid/widget/TextView;

    sget p3, Lcom/android/settings/R$string;->xcover_key_shortcut_off_message:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    if-ne p2, p3, :cond_1

    .line 154
    iget-object p2, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mEmptyText:Landroid/widget/TextView;

    sget p3, Lcom/android/settings/R$string;->xcover_key_shortcut_off_message_press_hold:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    if-ne p2, v0, :cond_2

    .line 156
    iget-object p2, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mEmptyText:Landroid/widget/TextView;

    sget p3, Lcom/android/settings/R$string;->xcover_top_key_shortcut_off_message:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    const/4 p3, 0x4

    if-ne p2, p3, :cond_4

    .line 158
    iget-object p2, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mEmptyText:Landroid/widget/TextView;

    sget p3, Lcom/android/settings/R$string;->xcover_top_key_shortcut_off_message_press_hold:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 161
    :cond_3
    iget-object p2, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mEmptyText:Landroid/widget/TextView;

    sget p3, Lcom/android/settings/R$string;->active_key_shortcut_off_message:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 163
    :cond_4
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mEmptyText:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/android/settings/R$integer;->daydream_settings_empty_view_text_size:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 165
    iget-object p2, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/settings/R$dimen;->sec_widget_body_text_padding_start_end:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 166
    iget-object p3, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result p3

    .line 167
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v0

    .line 168
    iget-object v1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    .line 169
    iget-object v3, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {v3, p2, v1, p3, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 170
    iget-object p2, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mEmptyText:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 171
    iget-object p2, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mEmptyText:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mContext:Landroid/content/Context;

    sget p3, Lcom/android/settings/R$style;->description_text:I

    invoke-virtual {p2, p0, p3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 234
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    .line 235
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {v0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->hide()V

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mLoading:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 239
    iput-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mLoading:Landroid/view/ViewGroup;

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 216
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onStart()V

    .line 217
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->addOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 225
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    .line 226
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->removeOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    :cond_0
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 247
    iget-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mPressType:I

    invoke-static {p1, v0}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->restorePressActionFromBackup(Landroid/content/Context;I)V

    .line 248
    iget-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mPressType:I

    invoke-static {p1, v0}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->getPressActionState(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 249
    iget-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mPressType:I

    invoke-static {p1, v0}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->getActiveKeyApp(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    .line 250
    iget v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mPressType:I

    invoke-static {p2, v0, p1}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->setExtraKeyCustomizationInfo(ZILjava/lang/String;)V

    goto :goto_0

    .line 253
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mPressType:I

    invoke-static {p1, v0}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->removePressActionAndMakeBackup(Landroid/content/Context;I)V

    .line 254
    iget p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mPressType:I

    const-string v0, ""

    invoke-static {p2, p1, v0}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->setExtraKeyCustomizationInfo(ZILjava/lang/String;)V

    .line 256
    :cond_1
    :goto_0
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->doAppLoading(Z)V

    return-void
.end method

.method protected savePressActionApp(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppRow;)V
    .locals 2

    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppRow;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppRow;->mActivityName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 429
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mPressType:I

    invoke-static {v0, v1, p1}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->savePressActionApp(Landroid/content/Context;ILjava/lang/String;)V

    .line 430
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method
