.class public Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public mAppPickerGridView:Landroidx/picker/widget/SeslAppPickerGridView;

.field public mBlockList:Ljava/util/ArrayList;

.field public mContext:Landroid/content/Context;

.field public mEmptyText:Landroid/widget/TextView;

.field public mEmptyView:Landroid/view/ViewGroup;

.field public final mHandler:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$1;

.field public mLoadAppListTask:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;

.field public mLoading:Landroid/view/ViewGroup;

.field public mLoggingFlow:I

.field public mPressType:I

.field public mState:Z

.field public mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mBlockList:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mLoggingFlow:I

    new-instance v0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$1;-><init>(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)V

    iput-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mHandler:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$1;

    return-void
.end method


# virtual methods
.method public final doAppLoading(Z)V
    .locals 4

    const/16 v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mHandler:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$1;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mLoading:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mAppPickerGridView:Landroidx/picker/widget/SeslAppPickerGridView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mLoadAppListTask:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;

    invoke-virtual {p1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object p1

    sget-object v3, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-ne p1, v3, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mLoadAppListTask:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mLoading:Landroid/view/ViewGroup;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mAppPickerGridView:Landroidx/picker/widget/SeslAppPickerGridView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mHandler:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$1;

    const-wide/16 v0, 0xfa

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method

.method public final getMetricsCategory()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mLoggingFlow:I

    return p0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    iget-object p1, p1, Lcom/android/settings/SettingsActivity;->mMainSwitch:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iput-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SeslSwitchBar;->show()V

    iget-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iget-boolean v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mState:Z

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    new-instance p1, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;-><init>(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)V

    iput-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mLoadAppListTask:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;

    iget-boolean p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mState:Z

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->doAppLoading(Z)V

    return-void
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onAttach(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo v0, "pressed_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "long"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    iput p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mPressType:I

    const p1, 0x10684

    iput p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mLoggingFlow:I

    goto :goto_0

    :cond_0
    const-string v0, "double"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x10683

    if-eqz v0, :cond_1

    const/4 p1, 0x2

    iput p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mPressType:I

    iput v1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mLoggingFlow:I

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "short"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mPressType:I

    iput v1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mLoggingFlow:I

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "xcover_top_short"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x3

    iput p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mPressType:I

    const p1, 0x1068d

    iput p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mLoggingFlow:I

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "xcover_top_long"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x4

    iput p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mPressType:I

    const p1, 0x1068e

    iput p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mLoggingFlow:I

    :cond_4
    :goto_0
    return-void
.end method

.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    const-string v2, "long_press_app_backup"

    const-string v3, "double_press_app_backup"

    const-string/jumbo v4, "xcover_top_short_press_app_backup"

    const-string/jumbo v5, "xcover_top_long_press_app_backup"

    const-string/jumbo v6, "short_press_app_backup"

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const-string v11, "ActiveKeyInfo"

    const-string v12, "/ app : "

    if-eqz v1, :cond_4

    iget-object v13, v0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mContext:Landroid/content/Context;

    iget v14, v0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mPressType:I

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    if-eq v14, v10, :cond_3

    if-eq v14, v9, :cond_2

    if-eq v14, v8, :cond_1

    if-eq v14, v7, :cond_0

    move-object v2, v6

    goto :goto_0

    :cond_0
    move-object v2, v5

    goto :goto_0

    :cond_1
    move-object v2, v4

    goto :goto_0

    :cond_2
    move-object v2, v3

    :cond_3
    :goto_0
    invoke-static {v15, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v14}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->getActiveKeyDBKey(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[restore] Press Type : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {v3, v12, v2, v11}, Lcom/android/settings/applications/AppStateClonedAppsBridge$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mContext:Landroid/content/Context;

    iget v3, v0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mPressType:I

    invoke-static {v2, v3}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->getPressActionState(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, v0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mContext:Landroid/content/Context;

    iget v3, v0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mPressType:I

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v3}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->getActiveKeyDBKey(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mPressType:I

    invoke-static {v3, v2, v1}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->setExtraKeyCustomizationInfo(ILjava/lang/String;Z)V

    goto :goto_2

    :cond_4
    iget-object v13, v0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mContext:Landroid/content/Context;

    iget v14, v0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mPressType:I

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    invoke-static {v14}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->getActiveKeyDBKey(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v15, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    if-eq v14, v10, :cond_8

    if-eq v14, v9, :cond_7

    if-eq v14, v8, :cond_6

    const/4 v2, 0x4

    if-eq v14, v2, :cond_5

    move-object v2, v6

    goto :goto_1

    :cond_5
    move-object v2, v5

    goto :goto_1

    :cond_6
    move-object v2, v4

    goto :goto_1

    :cond_7
    move-object v2, v3

    :cond_8
    :goto_1
    invoke-static {v15, v2, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v14}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->getActiveKeyDBKey(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[remove] Press Type : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {v2, v12, v7, v11}, Lcom/android/settings/applications/AppStateClonedAppsBridge$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v2, v0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mPressType:I

    invoke-static {v2, v4, v1}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->setExtraKeyCustomizationInfo(ILjava/lang/String;Z)V

    :cond_9
    :goto_2
    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->doAppLoading(Z)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mPressType:I

    invoke-static {p1, v0}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->getPressActionState(Landroid/content/Context;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mState:Z

    iget-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasVzwPttEnable(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    const-string v0, "com.verizon.pushtotalkplus"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasEPttEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    const-string v0, "com.att.eptt"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasBMCPttEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    const-string v0, "com.bell.ptt"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasTMOPttEnable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    const-string v0, "com.sprint.sdcplus"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mBlockList:Ljava/util/ArrayList;

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const p3, 0x7f0d0800

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Landroidx/picker/widget/SeslAppPickerGridView;

    iget-object p3, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mContext:Landroid/content/Context;

    invoke-direct {p2, p3}, Landroidx/picker/widget/SeslAppPickerGridView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mAppPickerGridView:Landroidx/picker/widget/SeslAppPickerGridView;

    const p2, 0x7f0a0131

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/picker/widget/SeslAppPickerGridView;

    iput-object p2, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mAppPickerGridView:Landroidx/picker/widget/SeslAppPickerGridView;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    iget-object p2, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mAppPickerGridView:Landroidx/picker/widget/SeslAppPickerGridView;

    const/16 p3, 0xf

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->semSetRoundedCorners(I)V

    iget-object p2, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mAppPickerGridView:Landroidx/picker/widget/SeslAppPickerGridView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060738

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, p3, v0}, Landroid/view/ViewGroup;->semSetRoundedCornerColor(II)V

    iget-object p2, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mAppPickerGridView:Landroidx/picker/widget/SeslAppPickerGridView;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p2, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mAppPickerGridView:Landroidx/picker/widget/SeslAppPickerGridView;

    new-instance p3, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)V

    invoke-virtual {p2, p3}, Landroidx/picker/widget/SeslAppPickerView;->setOnItemClickEventListener(Landroidx/picker/widget/AppPickerEvent$OnItemClickEventListener;)V

    const p2, 0x7f0a08df

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mLoading:Landroid/view/ViewGroup;

    const/4 p3, 0x3

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->semSetRoundedCorners(I)V

    iget-object p2, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mLoading:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, p3, v0}, Landroid/view/ViewGroup;->semSetRoundedCornerColor(II)V

    const p2, 0x7f0a05b1

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mEmptyView:Landroid/view/ViewGroup;

    const p2, 0x1020004

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mEmptyText:Landroid/widget/TextView;

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasActiveKey()Z

    iget-object p2, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mEmptyText:Landroid/widget/TextView;

    const p3, 0x7f140265

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    iget-object p2, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mEmptyText:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f0b0020

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object p2, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070d9e

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iget-object p3, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result p3

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {v3, p2, v2, p3, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object p2, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mEmptyText:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    iget-object p2, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mEmptyText:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mContext:Landroid/content/Context;

    const p3, 0x7f15092c

    invoke-virtual {p2, p0, p3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    return-object p1
.end method

.method public final onDestroyView()V
    .locals 1

    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/SeslSwitchBar;->hide()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mLoading:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mLoading:Landroid/view/ViewGroup;

    :cond_1
    return-void
.end method

.method public final onStart()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onStart()V

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->addOnSwitchChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    return-void
.end method

.method public final onStop()V
    .locals 1

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->removeOnSwitchChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    return-void
.end method
