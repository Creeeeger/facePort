.class public Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;
.super Landroidx/fragment/app/Fragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final mCategoryLookupTable:Ljava/util/HashMap;

.field public static final mHandler:Landroid/os/Handler;


# instance fields
.field public final mAllItemList:Ljava/util/ArrayList;

.field public mCheckedPos:I

.field public mContext:Landroid/content/Context;

.field public mCustomPatternCount:I

.field public mDefaultPatternSepIndex:I

.field public mHasHapticChannels:Z

.field public mIntensityContainer:Landroid/widget/FrameLayout;

.field public final mItemClickListener:Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity$2;

.field public mListContainer:Landroid/widget/FrameLayout;

.field public mQueryHelper:Lcom/samsung/android/settings/asbase/vibration/VibPickerQueryHelper;

.field public final mRealItemList:Ljava/util/ArrayList;

.field public mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public mResolver:Landroid/content/ContentResolver;

.field public mRingtone:Landroid/media/Ringtone;

.field public mSavedInstanceState:Landroid/os/Bundle;

.field public mScrollHandler:Landroid/os/Handler;

.field public mSelectedItemOtherSim:Lcom/samsung/android/settings/asbase/vibration/VibPickerItem;

.field public mSepIndexDbName:Ljava/lang/String;

.field public mSoundUri:Landroid/net/Uri;

.field public mStaticItemCount:I

.field public mSyncBasePos:I

.field public mSyncWithHapticDbName:Ljava/lang/String;

.field public mVibHelper:Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;

.field public mVibIntensitySeekBar:Lcom/samsung/android/settings/asbase/vibration/SecVibPickerIntensitySettings;

.field public mVibPickerListAdapter:Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;

.field public mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mCategoryLookupTable:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mHasHapticChannels:Z

    iput v0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mStaticItemCount:I

    iput v0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mCustomPatternCount:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mCheckedPos:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mSyncBasePos:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mVibPickerListAdapter:Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mAllItemList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mRealItemList:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity$2;-><init>(Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mItemClickListener:Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity$2;

    return-void
.end method

.method public static getKeyByCategoryTitle(Ljava/lang/String;)I
    .locals 3

    sget-object v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mCategoryLookupTable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    sget-object v2, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mCategoryLookupTable:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public final addPatternList(I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mQueryHelper:Lcom/samsung/android/settings/asbase/vibration/VibPickerQueryHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/asbase/vibration/VibPickerQueryHelper;->getPatternList(I)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->getPickerItem(Landroid/os/Bundle;)Lcom/samsung/android/settings/asbase/vibration/VibPickerItem;

    move-result-object v0

    iget v1, v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerItem;->mIsCustom:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mCustomPatternCount:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mCustomPatternCount:I

    :cond_0
    iget-object v1, v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerItem;->mCategory:Ljava/lang/String;

    iget v2, v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerItem;->mPattern:I

    const v3, 0xc3a4

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mAllItemList:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->getKeyByCategoryTitle(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mAllItemList:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->getKeyByCategoryTitle(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final getPickerItem(Landroid/os/Bundle;)Lcom/samsung/android/settings/asbase/vibration/VibPickerItem;
    .locals 13

    const-string v0, "_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "vibration_name"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v1, "vibration_pattern"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    const-string/jumbo v1, "vibration_type"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v1, "custom_data"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v1, "is_custom"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    const-string/jumbo v1, "position"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x1

    if-ne v12, v1, :cond_0

    const-string v2, "Custom"

    goto :goto_0

    :cond_0
    const-string v2, "Galaxy"

    :goto_0
    const v3, 0xc3a4

    if-ne v10, v3, :cond_1

    iget p1, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mSyncBasePos:I

    rsub-int/lit8 p1, p1, 0x1

    iget v0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mStaticItemCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mStaticItemCount:I

    const-string p0, "Default"

    const/4 v0, -0x1

    move-object v9, p0

    move v4, p1

    move v3, v0

    goto :goto_1

    :cond_1
    move v4, p1

    move v3, v0

    move-object v9, v2

    :goto_1
    new-instance p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerItem;

    const/4 v5, 0x0

    const/4 v7, 0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v12}, Lcom/samsung/android/settings/asbase/vibration/VibPickerItem;-><init>(IILjava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    return-object p0
.end method

.method public final getSepIndex()I
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mSepIndexDbName:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mDefaultPatternSepIndex:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sget-boolean v1, Lcom/samsung/android/settings/asbase/rune/VibRune;->SUPPORT_SYNC_WITH_HAPTIC:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mSyncWithHapticDbName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mHasHapticChannels:Z

    if-eqz v1, :cond_0

    const v0, 0xc350

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mSyncWithHapticDbName:Ljava/lang/String;

    invoke-static {v1, p0, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    :goto_0
    return v0
.end method

.method public final initView$3(Landroid/view/View;)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    new-instance v2, Lcom/samsung/android/settings/asbase/vibration/VibPickerQueryHelper;

    iget-object v3, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mResolver:Landroid/content/ContentResolver;

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/asbase/vibration/VibPickerQueryHelper;-><init>(Landroid/content/ContentResolver;)V

    iput-object v2, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mQueryHelper:Lcom/samsung/android/settings/asbase/vibration/VibPickerQueryHelper;

    iget-object v2, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mVibHelper:Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;

    iget-object v3, v2, Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;->mVibType:Lcom/samsung/android/settings/asbase/vibration/IVibPickerType;

    iget-boolean v2, v2, Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;->mIsSecondSim:Z

    invoke-interface {v3, v2}, Lcom/samsung/android/settings/asbase/vibration/IVibPickerType;->getSepIndexDbName(Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mSepIndexDbName:Ljava/lang/String;

    iget-object v2, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mQueryHelper:Lcom/samsung/android/settings/asbase/vibration/VibPickerQueryHelper;

    iget-object v3, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mVibHelper:Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;

    iget-object v3, v3, Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;->mVibType:Lcom/samsung/android/settings/asbase/vibration/IVibPickerType;

    invoke-interface {v3}, Lcom/samsung/android/settings/asbase/vibration/IVibPickerType;->getDatabaseTableName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "content://com.android.settings.personalvibration.PersonalVibrationProvider/"

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/settings/asbase/vibration/VibPickerQueryHelper;->mUri:Landroid/net/Uri;

    iget-object v2, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mVibHelper:Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;

    iget-object v2, v2, Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;->mVibType:Lcom/samsung/android/settings/asbase/vibration/IVibPickerType;

    invoke-interface {v2}, Lcom/samsung/android/settings/asbase/vibration/IVibPickerType;->getDefaultSepIndex()I

    move-result v2

    iput v2, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mDefaultPatternSepIndex:I

    sget-boolean v2, Lcom/samsung/android/settings/asbase/rune/VibRune;->SUPPORT_SYNC_WITH_HAPTIC:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_8

    iget-object v2, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mVibHelper:Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;

    iget-object v6, v2, Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;->mVibType:Lcom/samsung/android/settings/asbase/vibration/IVibPickerType;

    iget-boolean v2, v2, Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;->mIsSecondSim:Z

    invoke-interface {v6, v2}, Lcom/samsung/android/settings/asbase/vibration/IVibPickerType;->getSyncWithHapticDbName(Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mSyncWithHapticDbName:Ljava/lang/String;

    iget-object v2, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mVibHelper:Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;

    iget-boolean v6, v2, Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;->mIsFromContact:Z

    iget-boolean v7, v2, Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;->mIsSecondSim:Z

    iget-object v8, v2, Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;->mVibType:Lcom/samsung/android/settings/asbase/vibration/IVibPickerType;

    const-string/jumbo v9, "unknown_ringtone"

    if-eqz v6, :cond_3

    iget-object v6, v2, Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;->mContactSound:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v10, "content://settings/system/ringtone"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, v2, Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;->mContactSound:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/content/ContentProvider;->getAuthorityWithoutUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v9, "settings"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v2, v2, Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;->mContext:Landroid/content/Context;

    invoke-interface {v8, v7}, Lcom/samsung/android/settings/asbase/vibration/IVibPickerType;->getSoundType(Z)I

    move-result v6

    invoke-static {v2, v6}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    goto :goto_1

    :cond_0
    :goto_0
    move-object v2, v5

    goto :goto_1

    :cond_1
    iget-object v6, v2, Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;->mContactSound:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, v2, Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;->mContactSound:Landroid/net/Uri;

    goto :goto_1

    :cond_3
    iget-object v6, v2, Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;->mSoundPickerUri:Ljava/lang/String;

    if-nez v6, :cond_4

    iget-object v2, v2, Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;->mContext:Landroid/content/Context;

    invoke-interface {v8, v7}, Lcom/samsung/android/settings/asbase/vibration/IVibPickerType;->getSoundType(Z)I

    move-result v6

    invoke-static {v2, v6}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    goto :goto_1

    :cond_4
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_0

    :cond_5
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    :goto_1
    iput-object v2, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mSoundUri:Landroid/net/Uri;

    if-eqz v2, :cond_7

    iget-object v6, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mContext:Landroid/content/Context;

    invoke-static {v6, v2}, Landroid/media/AudioManager;->hasHapticChannels(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mVibHelper:Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;

    iget-object v6, v2, Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;->mVibType:Lcom/samsung/android/settings/asbase/vibration/IVibPickerType;

    iget-boolean v7, v2, Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;->mIsSecondSim:Z

    invoke-interface {v6, v7}, Lcom/samsung/android/settings/asbase/vibration/IVibPickerType;->getCallBackgroundDbName(Z)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    iget-object v2, v2, Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v6, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_6

    goto :goto_2

    :cond_6
    move v2, v4

    goto :goto_3

    :cond_7
    :goto_2
    move v2, v3

    :goto_3
    iput-boolean v2, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mHasHapticChannels:Z

    iput v3, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mSyncBasePos:I

    :cond_8
    const v2, 0x7f0a02eb

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const v2, 0x7f0a10f7

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    iput-object v6, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mIntensityContainer:Landroid/widget/FrameLayout;

    const v6, 0x7f0a10f8

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    iput-object v6, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mListContainer:Landroid/widget/FrameLayout;

    const/16 v7, 0xf

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->semSetRoundedCorners(I)V

    iget-object v6, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mListContainer:Landroid/widget/FrameLayout;

    iget-object v8, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mContext:Landroid/content/Context;

    const v9, 0x7f060738

    invoke-virtual {v8, v9}, Landroid/content/Context;->getColor(I)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/FrameLayout;->semSetRoundedCornerColor(II)V

    const v6, 0x7f0a0c66

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mContext:Landroid/content/Context;

    iget-object v6, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mVibHelper:Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;

    iget-object v6, v6, Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;->mCaller:Ljava/lang/String;

    iget-object v8, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mResolver:Landroid/content/ContentResolver;

    sget-object v10, Lcom/samsung/android/settings/asbase/vibration/VibPickerStyle;->SPLANNER:Lcom/samsung/android/settings/asbase/vibration/VibPickerStyle;

    const-string v10, "current_sec_active_themepackage"

    invoke-static {v8, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget-object v10, Lcom/samsung/android/settings/asbase/vibration/VibPickerStyle;->packageMap:Ljava/util/Map;

    check-cast v10, Ljava/util/HashMap;

    invoke-virtual {v10, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/settings/asbase/vibration/VibPickerStyle;

    if-eqz v6, :cond_9

    if-nez v8, :cond_9

    invoke-virtual {v6}, Lcom/samsung/android/settings/asbase/vibration/VibPickerStyle;->getStyle()I

    move-result v6

    goto :goto_4

    :cond_9
    const v6, 0x7f15072c

    :goto_4
    invoke-virtual {v0, v6}, Landroid/content/Context;->setTheme(I)V

    iget-object v0, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mVibHelper:Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;

    iget-boolean v0, v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;->mIsFromContact:Z

    if-nez v0, :cond_a

    iget-object v0, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/asbase/utils/VibUtils;->isSupportDcHaptic(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_a

    new-instance v0, Lcom/samsung/android/settings/asbase/vibration/SecVibPickerIntensitySettings;

    invoke-direct {v0}, Lcom/samsung/android/settings/asbase/vibration/SecVibPickerIntensitySettings;-><init>()V

    iput-object v0, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mVibIntensitySeekBar:Lcom/samsung/android/settings/asbase/vibration/SecVibPickerIntensitySettings;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v6, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mVibHelper:Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;

    iget v6, v6, Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;->mType:I

    const-string/jumbo v8, "type"

    invoke-virtual {v0, v8, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v6, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mVibHelper:Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;

    iget-object v8, v6, Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;->mVibType:Lcom/samsung/android/settings/asbase/vibration/IVibPickerType;

    iget-boolean v6, v6, Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;->mIsSecondSim:Z

    invoke-interface {v8, v6}, Lcom/samsung/android/settings/asbase/vibration/IVibPickerType;->getSepIndexDbName(Z)Ljava/lang/String;

    move-result-object v6

    const-string v8, "indexDb"

    invoke-virtual {v0, v8, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mVibHelper:Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;

    iget-object v6, v6, Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;->mVibType:Lcom/samsung/android/settings/asbase/vibration/IVibPickerType;

    invoke-interface {v6}, Lcom/samsung/android/settings/asbase/vibration/IVibPickerType;->getDefaultSepIndex()I

    move-result v6

    const-string v8, "defaultIndex"

    invoke-virtual {v0, v8, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v6, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mVibHelper:Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;

    iget-object v6, v6, Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;->mVibType:Lcom/samsung/android/settings/asbase/vibration/IVibPickerType;

    invoke-interface {v6}, Lcom/samsung/android/settings/asbase/vibration/IVibPickerType;->getRepeat()I

    move-result v6

    const-string/jumbo v8, "repeat"

    invoke-virtual {v0, v8, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v6, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mVibHelper:Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;

    iget-boolean v6, v6, Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;->mIsSecondSim:Z

    const-string v8, "isSecondSimActivated"

    invoke-virtual {v0, v8, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v6, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mVibIntensitySeekBar:Lcom/samsung/android/settings/asbase/vibration/SecVibPickerIntensitySettings;

    invoke-virtual {v6, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Landroidx/fragment/app/BackStackRecord;

    invoke-direct {v6, v0}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iget-object v0, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mVibIntensitySeekBar:Lcom/samsung/android/settings/asbase/vibration/SecVibPickerIntensitySettings;

    invoke-virtual {v6, v2, v0, v5}, Landroidx/fragment/app/BackStackRecord;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Landroidx/fragment/app/BackStackRecord;->commitInternal(Z)I

    :cond_a
    iget-object v0, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mContext:Landroid/content/Context;

    const v6, 0x7f080ab2

    invoke-virtual {v2, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v6, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f070d27

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    iget-object v8, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x7f070dd3

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    new-instance v10, Lcom/samsung/android/settings/asbase/vibration/RecyclerViewDecoration;

    iget-object v11, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mContext:Landroid/content/Context;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    iput-object v2, v10, Lcom/samsung/android/settings/asbase/vibration/RecyclerViewDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    iput v6, v10, Lcom/samsung/android/settings/asbase/vibration/RecyclerViewDecoration;->mInsetLeft:I

    iput v8, v10, Lcom/samsung/android/settings/asbase/vibration/RecyclerViewDecoration;->mInsetRight:I

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, v10, Lcom/samsung/android/settings/asbase/vibration/RecyclerViewDecoration;->mDividerHeight:I

    new-instance v2, Landroidx/appcompat/util/SeslRoundedCorner;

    invoke-direct {v2, v11}, Landroidx/appcompat/util/SeslRoundedCorner;-><init>(Landroid/content/Context;)V

    iput-object v2, v10, Lcom/samsung/android/settings/asbase/vibration/RecyclerViewDecoration;->mItemRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

    new-instance v2, Landroidx/appcompat/util/SeslRoundedCorner;

    invoke-direct {v2, v11}, Landroidx/appcompat/util/SeslRoundedCorner;-><init>(Landroid/content/Context;)V

    iput-object v2, v10, Lcom/samsung/android/settings/asbase/vibration/RecyclerViewDecoration;->mListRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

    const/4 v6, 0x3

    invoke-virtual {v2, v6}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCorners(I)V

    invoke-virtual {v11, v9}, Landroid/content/Context;->getColor(I)I

    move-result v8

    invoke-virtual {v2, v6, v8}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCornerColor(II)V

    invoke-virtual {v0, v10}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object v0, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setSoundEffectsEnabled(Z)V

    iget-object v0, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFillBottomEnabled(Z)V

    iget-object v0, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iput-boolean v4, v0, Landroidx/recyclerview/widget/RecyclerView;->mDrawLastRoundedCorner:Z

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->getListHorizontalPadding(Landroid/content/Context;)I

    move-result v0

    iget-object v2, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0, v3, v0, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    iget-object v2, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/high16 v6, 0x2000000

    invoke-virtual {v2, v6}, Landroidx/recyclerview/widget/RecyclerView;->setScrollBarStyle(I)V

    iget-object v2, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFillHorizontalPaddingEnabled(Z)V

    iget-object v2, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v6, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v6, v8, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v7, v6}, Landroid/view/ViewGroup;->semSetRoundedCorners(ILandroid/util/Pair;)V

    iget-object v0, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v9}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v7, v2}, Landroid/view/ViewGroup;->semSetRoundedCornerColor(II)V

    iget-object v0, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mAllItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mRealItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput v3, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mStaticItemCount:I

    iput v3, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mCustomPatternCount:I

    new-instance v0, Ljava/util/ArrayList;

    const v2, 0x7f142837

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v6, 0x7f142836

    invoke-virtual {v1, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f142839

    invoke-virtual {v1, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "None"

    filled-new-array {v8, v2, v6, v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v2, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mCategoryLookupTable:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    new-instance v7, Lcom/samsung/android/settings/asbase/vibration/VibPickerItem;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v12, v9

    check-cast v12, Ljava/lang/String;

    iget-object v9, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mVibHelper:Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;

    iget v13, v9, Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;->mType:I

    sget-object v9, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mCategoryLookupTable:Ljava/util/HashMap;

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v16, v6

    check-cast v16, Ljava/lang/String;

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v14, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object v9, v7

    invoke-direct/range {v9 .. v19}, Lcom/samsung/android/settings/asbase/vibration/VibPickerItem;-><init>(IILjava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mAllItemList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_b
    sget-boolean v0, Lcom/samsung/android/settings/asbase/rune/VibRune;->SUPPORT_SYNC_WITH_HAPTIC:Z

    if-nez v0, :cond_c

    goto :goto_6

    :cond_c
    new-instance v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerItem;

    iget-object v2, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mVibHelper:Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;

    iget v13, v2, Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;->mType:I

    iget-object v2, v2, Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;->mVibType:Lcom/samsung/android/settings/asbase/vibration/IVibPickerType;

    invoke-interface {v2}, Lcom/samsung/android/settings/asbase/vibration/IVibPickerType;->getSyncItemTitle()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v15

    const-string v16, "None"

    const v17, 0xc350

    const/4 v10, -0x1

    const/4 v11, 0x0

    const-string v12, ""

    const/4 v14, 0x1

    const-string v18, ""

    const/16 v19, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v19}, Lcom/samsung/android/settings/asbase/vibration/VibPickerItem;-><init>(IILjava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    iget-object v2, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mAllItemList:Ljava/util/ArrayList;

    invoke-static {v8}, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->getKeyByCategoryTitle(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mStaticItemCount:I

    add-int/2addr v0, v4

    iput v0, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mStaticItemCount:I

    :goto_6
    iget-object v0, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mVibHelper:Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;

    iget-boolean v0, v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;->mHasDefaultItem:Z

    const v2, 0xc350

    const/4 v6, 0x2

    if-nez v0, :cond_d

    goto :goto_9

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->getSepIndex()I

    move-result v15

    if-ne v15, v2, :cond_e

    const v0, 0x7f14283f

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_7
    move-object v10, v0

    goto :goto_8

    :cond_e
    iget-object v0, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mQueryHelper:Lcom/samsung/android/settings/asbase/vibration/VibPickerQueryHelper;

    invoke-virtual {v0, v15}, Lcom/samsung/android/settings/asbase/vibration/VibPickerQueryHelper;->getPatternName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :goto_8
    new-instance v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerItem;

    iget v7, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mSyncBasePos:I

    rsub-int/lit8 v9, v7, 0x2

    iget-object v7, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mVibHelper:Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;

    iget v11, v7, Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;->mType:I

    const v7, 0x7f142838

    invoke-virtual {v1, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v12, 0x1

    const-string v14, "Default"

    const/4 v8, -0x1

    const-string v16, ""

    const/16 v17, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v17}, Lcom/samsung/android/settings/asbase/vibration/VibPickerItem;-><init>(IILjava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    iget-object v7, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mAllItemList:Ljava/util/ArrayList;

    const-string v8, "Default"

    invoke-static {v8}, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->getKeyByCategoryTitle(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mStaticItemCount:I

    add-int/2addr v0, v4

    iput v0, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mStaticItemCount:I

    :goto_9
    invoke-virtual {v1, v6}, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->addPatternList(I)V

    iget-object v0, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mVibHelper:Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;

    iget v0, v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;->mType:I

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->addPatternList(I)V

    iget-object v0, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mAllItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v8, v6, :cond_f

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_10
    :goto_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/settings/asbase/vibration/VibPickerItem;

    if-eqz v8, :cond_10

    iget v9, v8, Lcom/samsung/android/settings/asbase/vibration/VibPickerItem;->mItemType:I

    if-nez v9, :cond_12

    iget-object v9, v8, Lcom/samsung/android/settings/asbase/vibration/VibPickerItem;->mCategory:Ljava/lang/String;

    const-string v10, "Galaxy"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_11

    const-string v10, "Custom"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    :cond_11
    iget-object v9, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mRealItemList:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_12
    iget-object v9, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mRealItemList:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_13
    new-instance v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerItem;

    iget-object v7, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mRealItemList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v12

    iget-object v7, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mVibHelper:Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;

    iget v14, v7, Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;->mType:I

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v20}, Lcom/samsung/android/settings/asbase/vibration/VibPickerItem;-><init>(IILjava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    iget-object v7, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mRealItemList:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mVibPickerListAdapter:Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;

    if-eqz v0, :cond_14

    iget v7, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mCustomPatternCount:I

    iput v7, v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;->mCustomPatternCount:I

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object v0, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mVibPickerListAdapter:Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;

    iget v7, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mCheckedPos:I

    iput v7, v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;->mSelectedItemPosition:I

    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_14
    new-instance v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;

    iget-object v9, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mContext:Landroid/content/Context;

    iget-object v7, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mVibHelper:Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;

    iget v10, v7, Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;->mType:I

    iget-object v11, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mRealItemList:Ljava/util/ArrayList;

    iget v12, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mCustomPatternCount:I

    iget-object v13, v7, Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;->mCaller:Ljava/lang/String;

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;ILjava/lang/String;)V

    iput-object v0, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mVibPickerListAdapter:Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;

    sget-boolean v7, Lcom/samsung/android/settings/asbase/rune/VibRune;->SUPPORT_SYNC_WITH_HAPTIC:Z

    if-eqz v7, :cond_15

    iget-boolean v8, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mHasHapticChannels:Z

    iget-object v9, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mContext:Landroid/content/Context;

    const-string v10, "audio"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/AudioManager;

    invoke-virtual {v9, v6}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v9

    new-instance v10, Lcom/samsung/android/settings/asbase/utils/SoundUtils$$ExternalSyntheticLambda0;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    invoke-interface {v9, v10}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v9

    iput-boolean v8, v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;->mSyncEnabled:Z

    iput-boolean v9, v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;->mIsBluetoothA2dpOn:Z

    :cond_15
    iget-object v0, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mVibPickerListAdapter:Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;

    iget-object v8, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mItemClickListener:Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity$2;

    iput-object v8, v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;->mListener:Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity$2;

    iget-object v8, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v8, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->getSepIndex()I

    move-result v8

    const-string v0, "getSelectedPosition() curSepIndex : "

    const-string v9, "VibPickerActivity"

    invoke-static {v8, v0, v9}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mVibHelper:Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;

    iget-boolean v0, v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;->mIsFromContact:Z

    const/4 v9, -0x1

    if-eqz v0, :cond_1b

    iget-object v0, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mSavedInstanceState:Landroid/os/Bundle;

    if-eqz v0, :cond_17

    const-string v10, "instant_position"

    invoke-virtual {v0, v10, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v9, :cond_17

    iget v2, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mSyncBasePos:I

    sub-int/2addr v6, v2

    if-ne v0, v6, :cond_16

    move v2, v9

    goto :goto_b

    :cond_16
    iget-object v2, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mVibPickerListAdapter:Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;->getItem(I)Lcom/samsung/android/settings/asbase/vibration/VibPickerItem;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/settings/asbase/vibration/VibPickerItem;->mPattern:I

    :goto_b
    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->setResultBySelection(I)V

    goto :goto_12

    :cond_17
    iget-object v0, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mVibHelper:Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;

    iget-object v0, v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;->mContactPattern:Ljava/lang/String;

    if-nez v0, :cond_18

    goto :goto_c

    :cond_18
    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v5, v0

    sub-int/2addr v5, v4

    aget-object v5, v0, v5

    :goto_c
    if-eqz v5, :cond_1a

    :try_start_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v4, 0x5

    if-ge v0, v4, :cond_19

    iget-object v0, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mQueryHelper:Lcom/samsung/android/settings/asbase/vibration/VibPickerQueryHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lcom/samsung/android/settings/asbase/vibration/VibPickerConstants;->getSepIndexById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_d
    move v8, v0

    goto :goto_e

    :catch_0
    move-exception v0

    goto :goto_10

    :cond_19
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_d

    :goto_e
    if-eqz v7, :cond_1b

    if-ne v8, v2, :cond_1b

    iget-boolean v0, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mHasHapticChannels:Z

    if-nez v0, :cond_1b

    iget v0, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mSyncBasePos:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_f
    rsub-int/lit8 v0, v0, 0x2

    goto :goto_12

    :goto_10
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_11

    :cond_1a
    iget-object v0, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mVibHelper:Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;

    iget-boolean v0, v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;->mHasDefaultItem:Z

    if-eqz v0, :cond_1b

    iget v0, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mSyncBasePos:I

    goto :goto_f

    :cond_1b
    :goto_11
    iget-object v0, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mVibPickerListAdapter:Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;

    invoke-virtual {v0, v8}, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;->getPositionByIndex(I)I

    move-result v0

    :goto_12
    if-eq v0, v9, :cond_1c

    iput v0, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mCheckedPos:I

    iget-object v2, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mVibPickerListAdapter:Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;

    iput v0, v2, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;->mSelectedItemPosition:I

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    iget-object v2, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v2, v0, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer;

    iget-object v3, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mVibHelper:Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;

    iget-boolean v3, v3, Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;->mIsSecondSim:Z

    iget-object v1, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mVibPickerListAdapter:Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;->getItem(I)Lcom/samsung/android/settings/asbase/vibration/VibPickerItem;

    move-result-object v0

    invoke-virtual {v2}, Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, v2, Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer;->mSelectedItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1c

    iget-object v1, v2, Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer;->mSelectedItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    return-void
.end method

.method public final isAdaptLandScapeMode(Landroid/content/res/Configuration;)Z
    .locals 2

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v1, 0x1a4

    if-ge v0, v1, :cond_0

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mVibHelper:Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;

    iget-boolean p1, p1, Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;->mIsFromContact:Z

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/asbase/utils/VibUtils;->isSupportDcHaptic(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->isAdaptLandScapeMode(Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d09e3

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d09e7

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->initView$3(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mScrollHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity$3;-><init>(Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;)V

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v1, "vibrator_manager"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/VibratorManager;

    invoke-virtual {v0}, Landroid/os/VibratorManager;->getDefaultVibrator()Landroid/os/Vibrator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mVibrator:Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mSavedInstanceState:Landroid/os/Bundle;

    new-instance p1, Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "sim_slot"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p1, v2, v0, v1}, Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;-><init>(ILandroid/content/Context;Landroid/content/Intent;)V

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mVibHelper:Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mScrollHandler:Landroid/os/Handler;

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    iget-object p3, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->isAdaptLandScapeMode(Landroid/content/res/Configuration;)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    const p3, 0x7f0d09e3

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const p3, 0x7f0d09e7

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->initView$3(Landroid/view/View;)V

    return-object p1
.end method

.method public final onDestroy()V
    .locals 2

    const-string v0, "VibPickerActivity"

    const-string/jumbo v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mAllItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mRealItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mStaticItemCount:I

    iput v0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mCustomPatternCount:I

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onPause()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    :cond_1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->updateSelectedItemOtherSim()V

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onSaveInstanceState - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mCheckedPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VibPickerActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "instant_position"

    iget p0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mCheckedPos:I

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public final setResultBySelection(I)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "content://com.android.settings.personalvibration.PersonalVibrationProvider/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method public final updateSelectedItemOtherSim()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mVibHelper:Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;

    iget-boolean v0, v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;->mIsSecondSim:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer;

    iget-object v2, v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer;->mSelectedItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v0, v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer;->mSelectedItemList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerItem;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer;

    iget-object v2, v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer;->mSelectedItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v0, v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer;->mSelectedItemList:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerItem;

    :cond_1
    :goto_0
    const/4 v0, -0x1

    if-eqz v1, :cond_2

    iput-object v1, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mSelectedItemOtherSim:Lcom/samsung/android/settings/asbase/vibration/VibPickerItem;

    const v2, 0x7f142836

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerItem;->mCategory:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mVibPickerListAdapter:Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;

    iget v1, v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerItem;->mPattern:I

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;->getPositionByIndex(I)I

    move-result v1

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    iget-object p0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mVibPickerListAdapter:Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;

    if-ne v1, v0, :cond_3

    iget v1, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;->mSelectedItemOtherSimPosition:I

    if-eq v1, v0, :cond_4

    iput v0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;->mSelectedItemOtherSimPosition:I

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;->mSelectedItemOtherSimPosition:I

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    iput v1, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;->mSelectedItemOtherSimPosition:I

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_4
    :goto_2
    return-void
.end method
