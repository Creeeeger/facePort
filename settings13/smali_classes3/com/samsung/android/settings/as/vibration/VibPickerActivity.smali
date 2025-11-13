.class public Lcom/samsung/android/settings/as/vibration/VibPickerActivity;
.super Lcom/android/settings/core/SettingsBaseActivity;
.source "VibPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/as/vibration/VibPickerActivity$DeleteAsyncTask;
    }
.end annotation


# static fields
.field private static final mCategoryLookupTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mHandler:Landroid/os/Handler;


# instance fields
.field final mAllItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/as/vibration/VibPickerItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCheckedPos:I

.field private mContext:Landroid/content/Context;

.field private mCustomPatternCount:I

.field private mDefaultPatternSepIndex:I

.field private mHasHapticChannels:Z

.field private mHorizontalDivider:Landroid/view/View;

.field private mIntensityContainer:Landroid/widget/FrameLayout;

.field private final mItemClickListener:Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$OnItemClickListener;

.field private mListContainer:Landroid/widget/FrameLayout;

.field private mPickerContainer:Landroid/widget/LinearLayout;

.field private mQueryHelper:Lcom/samsung/android/settings/as/vibration/VibPickerQueryHelper;

.field final mRealItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/as/vibration/VibPickerItem;",
            ">;"
        }
    .end annotation
.end field

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mResolver:Landroid/content/ContentResolver;

.field private mRingtone:Landroid/media/Ringtone;

.field private mSepIndexDbName:Ljava/lang/String;

.field private mSoundUri:Landroid/net/Uri;

.field private mStaticItemCount:I

.field private mSync:Z

.field private mSyncWithHapticDbName:Ljava/lang/String;

.field private mVibHelper:Lcom/samsung/android/settings/as/vibration/VibPickerHelper;

.field private mVibPickerListAdapter:Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public static synthetic $r8$lambda$bZSPFseiHKjmjD1L1DYGW_T-_mQ(Lcom/samsung/android/settings/as/vibration/VibPickerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->lambda$onOptionsItemSelected$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmCheckedPos(Lcom/samsung/android/settings/as/vibration/VibPickerActivity;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mCheckedPos:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRecyclerView(Lcom/samsung/android/settings/as/vibration/VibPickerActivity;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmResolver(Lcom/samsung/android/settings/as/vibration/VibPickerActivity;)Landroid/content/ContentResolver;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSepIndexDbName(Lcom/samsung/android/settings/as/vibration/VibPickerActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mSepIndexDbName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSyncWithHapticDbName(Lcom/samsung/android/settings/as/vibration/VibPickerActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mSyncWithHapticDbName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVibHelper(Lcom/samsung/android/settings/as/vibration/VibPickerActivity;)Lcom/samsung/android/settings/as/vibration/VibPickerHelper;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mVibHelper:Lcom/samsung/android/settings/as/vibration/VibPickerHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVibPickerListAdapter(Lcom/samsung/android/settings/as/vibration/VibPickerActivity;)Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mVibPickerListAdapter:Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCustomPatternCount(Lcom/samsung/android/settings/as/vibration/VibPickerActivity;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mCustomPatternCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$misSelectedDefaultItem(Lcom/samsung/android/settings/as/vibration/VibPickerActivity;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->isSelectedDefaultItem()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mplayPatternIndex(Lcom/samsung/android/settings/as/vibration/VibPickerActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->playPatternIndex(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetCheckedPosition(Lcom/samsung/android/settings/as/vibration/VibPickerActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->setCheckedPosition(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 86
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mHandler:Landroid/os/Handler;

    .line 87
    new-instance v0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mCategoryLookupTable:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 82
    invoke-direct {p0}, Lcom/android/settings/core/SettingsBaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 111
    iput-boolean v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mHasHapticChannels:Z

    .line 112
    iput-boolean v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mSync:Z

    .line 114
    iput v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mStaticItemCount:I

    .line 115
    iput v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mCustomPatternCount:I

    const/4 v0, -0x1

    .line 116
    iput v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mCheckedPos:I

    const/4 v0, 0x0

    .line 118
    iput-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mVibPickerListAdapter:Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mAllItemList:Ljava/util/ArrayList;

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mRealItemList:Ljava/util/ArrayList;

    .line 253
    new-instance v0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity$2;-><init>(Lcom/samsung/android/settings/as/vibration/VibPickerActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mItemClickListener:Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$OnItemClickListener;

    return-void
.end method

.method private addFooterItem()V
    .locals 12

    .line 460
    new-instance v11, Lcom/samsung/android/settings/as/vibration/VibPickerItem;

    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mRealItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mVibHelper:Lcom/samsung/android/settings/as/vibration/VibPickerHelper;

    .line 461
    invoke-virtual {v0}, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->getType()I

    move-result v4

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/samsung/android/settings/as/vibration/VibPickerItem;-><init>(IILjava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 462
    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mRealItemList:Ljava/util/ArrayList;

    invoke-virtual {p0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addPatternList(I)V
    .locals 3

    .line 426
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mQueryHelper:Lcom/samsung/android/settings/as/vibration/VibPickerQueryHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/as/vibration/VibPickerQueryHelper;->getPatternList(I)Ljava/util/List;

    move-result-object p1

    .line 428
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 429
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->getPickerItem(Landroid/os/Bundle;)Lcom/samsung/android/settings/as/vibration/VibPickerItem;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 432
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/settings/as/vibration/VibPickerItem;->getIsCustom()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 433
    iget v1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mCustomPatternCount:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mCustomPatternCount:I

    .line 436
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mAllItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/samsung/android/settings/as/vibration/VibPickerItem;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->getKeyByCategoryTitle(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method private addRealItemList()V
    .locals 5

    .line 441
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mAllItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 442
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    .line 443
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/as/vibration/VibPickerItem;

    if-eqz v2, :cond_1

    .line 445
    invoke-virtual {v2}, Lcom/samsung/android/settings/as/vibration/VibPickerItem;->getItemType()I

    move-result v3

    if-nez v3, :cond_3

    .line 446
    invoke-virtual {v2}, Lcom/samsung/android/settings/as/vibration/VibPickerItem;->getCategory()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Galaxy"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 447
    invoke-virtual {v2}, Lcom/samsung/android/settings/as/vibration/VibPickerItem;->getCategory()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Custom"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 448
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mRealItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 451
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mRealItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-void
.end method

.method private getDefaultItemPosition()I
    .locals 0

    .line 354
    sget-boolean p0, Lcom/samsung/android/settings/as/rune/VibRune;->SUPPORT_SYNC_WITH_HAPTIC:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private getKeyByCategoryTitle(Ljava/lang/String;)I
    .locals 2

    .line 546
    sget-object p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mCategoryLookupTable:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 547
    sget-object v1, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mCategoryLookupTable:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 548
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private getPickerItem(Landroid/os/Bundle;)Lcom/samsung/android/settings/as/vibration/VibPickerItem;
    .locals 13

    const-string v0, "_id"

    .line 521
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "vibration_name"

    .line 522
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v1, "vibration_pattern"

    .line 523
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    const-string v1, "vibration_type"

    .line 524
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v1, "custom_data"

    .line 525
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v1, "is_custom"

    .line 526
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    const-string v1, "position"

    .line 527
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

    if-ne v10, v3, :cond_2

    .line 532
    iget-object p1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mVibHelper:Lcom/samsung/android/settings/as/vibration/VibPickerHelper;

    invoke-virtual {p1}, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->hasDefaultItem()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    const/4 p1, 0x0

    const/4 v0, -0x1

    .line 538
    iget v2, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mStaticItemCount:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mStaticItemCount:I

    const-string p0, "Default"

    move-object v9, p0

    move v4, p1

    move v3, v0

    goto :goto_1

    :cond_2
    move v4, p1

    move v3, v0

    move-object v9, v2

    .line 541
    :goto_1
    new-instance p0, Lcom/samsung/android/settings/as/vibration/VibPickerItem;

    const/4 v5, 0x0

    const/4 v7, 0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v12}, Lcom/samsung/android/settings/as/vibration/VibPickerItem;-><init>(IILjava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    return-object p0
.end method

.method private getSelectedPosition()I
    .locals 4

    .line 325
    invoke-direct {p0}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->getSepIndex()I

    move-result v0

    .line 326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSelectedPosition() curSepIndex : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VibPickerActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mVibHelper:Lcom/samsung/android/settings/as/vibration/VibPickerHelper;

    invoke-virtual {v1}, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->isFromContact()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 329
    iget-object v1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mVibHelper:Lcom/samsung/android/settings/as/vibration/VibPickerHelper;

    invoke-virtual {v1}, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->getContactPattern()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 333
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_0

    .line 334
    iget-object v2, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mQueryHelper:Lcom/samsung/android/settings/as/vibration/VibPickerQueryHelper;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/as/vibration/VibPickerQueryHelper;->getSepIndexById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 335
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 337
    :goto_0
    sget-boolean v1, Lcom/samsung/android/settings/as/rune/VibRune;->SUPPORT_SYNC_WITH_HAPTIC:Z

    if-eqz v1, :cond_2

    const v1, 0xc350

    if-ne v0, v1, :cond_2

    .line 338
    iget-boolean v1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mHasHapticChannels:Z

    if-nez v1, :cond_2

    .line 339
    invoke-direct {p0}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->getDefaultItemPosition()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v1

    .line 342
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1

    .line 345
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mVibHelper:Lcom/samsung/android/settings/as/vibration/VibPickerHelper;

    invoke-virtual {v1}, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->hasDefaultItem()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 346
    invoke-direct {p0}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->getDefaultItemPosition()I

    move-result p0

    return p0

    .line 350
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mVibPickerListAdapter:Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;->getPositionByIndex(I)I

    move-result p0

    return p0
.end method

.method private getSepIndex()I
    .locals 3

    .line 555
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mSepIndexDbName:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mDefaultPatternSepIndex:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 556
    sget-boolean v1, Lcom/samsung/android/settings/as/rune/VibRune;->SUPPORT_SYNC_WITH_HAPTIC:Z

    if-eqz v1, :cond_1

    .line 557
    invoke-direct {p0}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->isSyncSelected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 558
    iget-boolean v1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mHasHapticChannels:Z

    if-eqz v1, :cond_0

    const v0, 0xc350

    goto :goto_0

    .line 561
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mSyncWithHapticDbName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, p0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    :goto_0
    return v0
.end method

.method private initVibrationInfo()V
    .locals 3

    .line 139
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mContext:Landroid/content/Context;

    .line 140
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mResolver:Landroid/content/ContentResolver;

    const-string v0, "vibrator_manager"

    .line 141
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/VibratorManager;

    .line 142
    invoke-virtual {v0}, Landroid/os/VibratorManager;->getDefaultVibrator()Landroid/os/Vibrator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mVibrator:Landroid/os/Vibrator;

    .line 143
    new-instance v0, Lcom/samsung/android/settings/as/vibration/VibPickerQueryHelper;

    iget-object v1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/as/vibration/VibPickerQueryHelper;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mQueryHelper:Lcom/samsung/android/settings/as/vibration/VibPickerQueryHelper;

    .line 144
    new-instance v0, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;

    iget-object v1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mVibHelper:Lcom/samsung/android/settings/as/vibration/VibPickerHelper;

    .line 145
    invoke-virtual {v0}, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->getSepIndexDbName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mSepIndexDbName:Ljava/lang/String;

    .line 146
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mQueryHelper:Lcom/samsung/android/settings/as/vibration/VibPickerQueryHelper;

    iget-object v1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mVibHelper:Lcom/samsung/android/settings/as/vibration/VibPickerHelper;

    invoke-virtual {v1}, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->getDatabaseTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/as/vibration/VibPickerQueryHelper;->setTablePath(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mVibHelper:Lcom/samsung/android/settings/as/vibration/VibPickerHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->getDefaultSepIndex()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mDefaultPatternSepIndex:I

    .line 149
    sget-boolean v0, Lcom/samsung/android/settings/as/rune/VibRune;->SUPPORT_SYNC_WITH_HAPTIC:Z

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mVibHelper:Lcom/samsung/android/settings/as/vibration/VibPickerHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->getSyncWithHapticDbName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mSyncWithHapticDbName:Ljava/lang/String;

    .line 151
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mVibHelper:Lcom/samsung/android/settings/as/vibration/VibPickerHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->getSoundUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mSoundUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 152
    iget-object v1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mContext:Landroid/content/Context;

    .line 153
    invoke-static {v1, v0}, Landroid/media/AudioManager;->hasHapticChannels(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mVibHelper:Lcom/samsung/android/settings/as/vibration/VibPickerHelper;

    .line 154
    invoke-virtual {v0}, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->hasNotificationSyncDisableReason()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mHasHapticChannels:Z

    :cond_1
    return-void
.end method

.method private isAdaptLandScapeMode(Landroid/content/res/Configuration;)Z
    .locals 2

    .line 618
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 619
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v1, 0x1a4

    if-ge v0, v1, :cond_0

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 622
    invoke-direct {p0}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->isSupportVibIntensity()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSelectedDefaultItem()Z
    .locals 1

    .line 484
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mVibHelper:Lcom/samsung/android/settings/as/vibration/VibPickerHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->hasDefaultItem()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mCheckedPos:I

    iget p0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mStaticItemCount:I

    sub-int/2addr v0, p0

    const/4 p0, -0x1

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSupportVibIntensity()Z
    .locals 1

    .line 644
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mVibHelper:Lcom/samsung/android/settings/as/vibration/VibPickerHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->isFromContact()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/as/utils/VibUtils;->isSupportDcHaptic(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSyncSelected()Z
    .locals 2

    .line 569
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mSyncWithHapticDbName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private synthetic lambda$onOptionsItemSelected$0()V
    .locals 1

    .line 672
    iget-boolean v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mSync:Z

    if-nez v0, :cond_0

    .line 673
    invoke-virtual {p0}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method private playHapticRingtone()V
    .locals 3

    .line 488
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mSoundUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    return-void

    .line 490
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/media/RingtoneManager;->semGetRingtone(Landroid/content/Context;ILandroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_1

    .line 492
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mVibHelper:Lcom/samsung/android/settings/as/vibration/VibPickerHelper;

    .line 493
    invoke-virtual {v1}, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->getAudioUsage()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x4

    .line 494
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mHasHapticChannels:Z

    xor-int/lit8 v1, v1, 0x1

    .line 495
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setHapticChannelsMuted(Z)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 496
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 497
    iget-object v1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1, v0}, Landroid/media/Ringtone;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 498
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mRingtone:Landroid/media/Ringtone;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setVolume(F)V

    .line 499
    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {p0}, Landroid/media/Ringtone;->play()V

    :cond_1
    return-void
.end method

.method private playPatternIndex(I)V
    .locals 1

    .line 470
    invoke-direct {p0}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->stopVibAndRingtone()V

    .line 472
    sget-boolean v0, Lcom/samsung/android/settings/as/rune/VibRune;->SUPPORT_SYNC_WITH_HAPTIC:Z

    if-eqz v0, :cond_2

    .line 473
    invoke-direct {p0}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->isSelectedDefaultItem()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->isSyncSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mHasHapticChannels:Z

    if-nez v0, :cond_1

    :cond_0
    const v0, 0xc350

    if-ne p1, v0, :cond_2

    .line 475
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->playHapticRingtone()V

    return-void

    .line 480
    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->playVibration(I)V

    return-void
.end method

.method private playVibration(I)V
    .locals 2

    .line 504
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mVibHelper:Lcom/samsung/android/settings/as/vibration/VibPickerHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->getRepeat()I

    move-result v0

    invoke-static {p1, v0}, Landroid/os/VibrationEffect;->semCreateHaptic(II)Landroid/os/VibrationEffect;

    move-result-object p1

    .line 505
    new-instance v0, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {v0}, Landroid/os/VibrationAttributes$Builder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mVibHelper:Lcom/samsung/android/settings/as/vibration/VibPickerHelper;

    .line 506
    invoke-virtual {v1}, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->getVibrationUsage()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/VibrationAttributes$Builder;->setUsage(I)Landroid/os/VibrationAttributes$Builder;

    move-result-object v0

    .line 507
    invoke-virtual {v0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object v0

    .line 508
    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {p0, p1, v0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)V

    return-void
.end method

.method private resetItemList()V
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mAllItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 362
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mRealItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 363
    iput v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mStaticItemCount:I

    .line 364
    iput v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mCustomPatternCount:I

    return-void
.end method

.method private setCheckedPosition(I)V
    .locals 0

    .line 466
    iput p1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mCheckedPos:I

    return-void
.end method

.method private setConfiguration()V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->isAdaptLandScapeMode(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    invoke-direct {p0}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->setLandScapeLayout()V

    goto :goto_0

    .line 170
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->setPortraitLayout()V

    .line 173
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mVibHelper:Lcom/samsung/android/settings/as/vibration/VibPickerHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->getCaller()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/as/vibration/VibPickerStyle;->getPackageStyle(Ljava/lang/String;Landroid/content/ContentResolver;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    .line 174
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mVibHelper:Lcom/samsung/android/settings/as/vibration/VibPickerHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->getTitle()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/core/SettingsBaseActivity;->setTitle(I)V

    return-void
.end method

.method private setContainerView()V
    .locals 1

    .line 159
    sget v0, Lcom/android/settings/R$id;->center_view:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mPickerContainer:Landroid/widget/LinearLayout;

    .line 160
    sget v0, Lcom/android/settings/R$id;->vibpicker_horizontal_divider:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mHorizontalDivider:Landroid/view/View;

    .line 161
    sget v0, Lcom/android/settings/R$id;->vibpicker_intensity_frame:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mIntensityContainer:Landroid/widget/FrameLayout;

    .line 162
    sget v0, Lcom/android/settings/R$id;->vibpicker_list_frame:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mListContainer:Landroid/widget/FrameLayout;

    .line 163
    sget v0, Lcom/android/settings/R$id;->recycler:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method private setLandScapeLayout()V
    .locals 5

    .line 635
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mPickerContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 636
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mHorizontalDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 637
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mIntensityContainer:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 639
    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mListContainer:Landroid/widget/FrameLayout;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setPortraitLayout()V
    .locals 4

    .line 626
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mPickerContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 627
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mHorizontalDivider:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 628
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mIntensityContainer:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 630
    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mListContainer:Landroid/widget/FrameLayout;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setPrevSelectedPosition()V
    .locals 2

    .line 245
    invoke-direct {p0}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->getSelectedPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 247
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->setCheckedPosition(I)V

    .line 248
    iget-object v1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mVibPickerListAdapter:Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;->setSelectItem(I)V

    .line 249
    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_0
    return-void
.end method

.method private setRecyclerView()V
    .locals 3

    .line 193
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 194
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->getItemDecoration()Lcom/samsung/android/settings/as/vibration/RecyclerViewDecoration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 195
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setSoundEffectsEnabled(Z)V

    .line 196
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFillBottomEnabled(Z)V

    .line 197
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetLastRoundedCorner(Z)V

    .line 198
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->semSetRoundedCorners(I)V

    .line 199
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    .line 200
    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    .line 199
    invoke-virtual {v0, v1, p0}, Landroid/view/ViewGroup;->semSetRoundedCornerColor(II)V

    return-void
.end method

.method private setToolBar()V
    .locals 2

    .line 178
    sget v0, Lcom/android/settings/R$id;->action_bar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 179
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 180
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 182
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 183
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 184
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 186
    :cond_0
    sget v0, Lcom/android/settings/R$id;->collapsing_app_bar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    if-eqz v0, :cond_1

    .line 188
    iget-object v1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mVibHelper:Lcom/samsung/android/settings/as/vibration/VibPickerHelper;

    invoke-virtual {v1}, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->getTitle()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private setVibPickerIntensitySettings()V
    .locals 4

    .line 211
    invoke-direct {p0}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->isSupportVibIntensity()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 213
    :cond_0
    new-instance v0, Lcom/samsung/android/settings/as/vibration/SecVibPickerIntensitySettings;

    invoke-direct {v0}, Lcom/samsung/android/settings/as/vibration/SecVibPickerIntensitySettings;-><init>()V

    .line 214
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 215
    iget-object v2, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mVibHelper:Lcom/samsung/android/settings/as/vibration/VibPickerHelper;

    invoke-virtual {v2}, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->getType()I

    move-result v2

    const-string v3, "type"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 216
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 218
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    sget v1, Lcom/android/settings/R$id;->vibpicker_intensity_frame:I

    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 219
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private setVibPickerListAdapter()V
    .locals 7

    .line 232
    new-instance v6, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;

    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mVibHelper:Lcom/samsung/android/settings/as/vibration/VibPickerHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->getType()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mRealItemList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mCustomPatternCount:I

    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mVibHelper:Lcom/samsung/android/settings/as/vibration/VibPickerHelper;

    .line 233
    invoke-virtual {v0}, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->getCaller()Ljava/lang/String;

    move-result-object v5

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;ILjava/lang/String;)V

    iput-object v6, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mVibPickerListAdapter:Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;

    .line 235
    sget-boolean v0, Lcom/samsung/android/settings/as/rune/VibRune;->SUPPORT_SYNC_WITH_HAPTIC:Z

    if-eqz v0, :cond_0

    .line 236
    iget-boolean v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mHasHapticChannels:Z

    iget-object v1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mVibHelper:Lcom/samsung/android/settings/as/vibration/VibPickerHelper;

    .line 237
    invoke-virtual {v1}, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->getNotificationSyncDisableReason()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/as/utils/SoundUtils;->isA2dpOn(Landroid/content/Context;)Z

    move-result v2

    .line 236
    invoke-virtual {v6, v0, v1, v2}, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;->setSyncEnabled(ZLjava/lang/String;Z)V

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mVibPickerListAdapter:Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mItemClickListener:Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;->setOnItemClickListener(Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$OnItemClickListener;)V

    .line 241
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mVibPickerListAdapter:Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private stopVibAndRingtone()V
    .locals 1

    .line 512
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 513
    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 515
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mRingtone:Landroid/media/Ringtone;

    if-eqz p0, :cond_1

    .line 516
    invoke-virtual {p0}, Landroid/media/Ringtone;->stop()V

    :cond_1
    return-void
.end method

.method private updateCategoryList()V
    .locals 15

    .line 368
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "None"

    aput-object v3, v1, v2

    sget v2, Lcom/android/settings/R$string;->sec_vib_picker_default_category:I

    .line 370
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget v2, Lcom/android/settings/R$string;->sec_vib_picker_custom_category:I

    .line 371
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget v2, Lcom/android/settings/R$string;->sec_vib_picker_galaxy_category:I

    .line 372
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 368
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 375
    sget-object v1, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mCategoryLookupTable:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 377
    new-instance v14, Lcom/samsung/android/settings/as/vibration/VibPickerItem;

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mVibHelper:Lcom/samsung/android/settings/as/vibration/VibPickerHelper;

    .line 378
    invoke-virtual {v3}, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->getType()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    sget-object v3, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mCategoryLookupTable:Ljava/util/HashMap;

    .line 379
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object v3, v14

    invoke-direct/range {v3 .. v13}, Lcom/samsung/android/settings/as/vibration/VibPickerItem;-><init>(IILjava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 380
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 381
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    iget-object v3, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mAllItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateDefaultItem()V
    .locals 12

    .line 397
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mVibHelper:Lcom/samsung/android/settings/as/vibration/VibPickerHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->hasDefaultItem()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 399
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->getSepIndex()I

    move-result v9

    const v0, 0xc350

    if-ne v9, v0, :cond_1

    .line 401
    sget v0, Lcom/android/settings/R$string;->sec_vib_picker_sync_with_ringtone:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 402
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mQueryHelper:Lcom/samsung/android/settings/as/vibration/VibPickerQueryHelper;

    invoke-virtual {v0, v9}, Lcom/samsung/android/settings/as/vibration/VibPickerQueryHelper;->getPatternName(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v4, v0

    .line 404
    new-instance v0, Lcom/samsung/android/settings/as/vibration/VibPickerItem;

    const/4 v2, -0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mVibHelper:Lcom/samsung/android/settings/as/vibration/VibPickerHelper;

    invoke-virtual {v1}, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->getType()I

    move-result v5

    const/4 v6, 0x1

    sget v1, Lcom/android/settings/R$string;->sec_vib_picker_default_item_title:I

    .line 405
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x0

    const-string v8, "Default"

    const-string v10, ""

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/samsung/android/settings/as/vibration/VibPickerItem;-><init>(IILjava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 407
    iget-object v1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mAllItemList:Ljava/util/ArrayList;

    const-string v2, "Default"

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->getKeyByCategoryTitle(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    iget v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mStaticItemCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mStaticItemCount:I

    return-void
.end method

.method private updatePickerItemList()V
    .locals 0

    .line 223
    invoke-direct {p0}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->resetItemList()V

    .line 224
    invoke-direct {p0}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->updateCategoryList()V

    .line 225
    invoke-direct {p0}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->updateSyncWithHapticItem()V

    .line 226
    invoke-direct {p0}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->updateDefaultItem()V

    .line 227
    invoke-direct {p0}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->updateVibPickerItemList()V

    .line 228
    invoke-direct {p0}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->updateVibPickerListAdapter()V

    return-void
.end method

.method private updateSyncWithHapticItem()V
    .locals 12

    .line 387
    sget-boolean v0, Lcom/samsung/android/settings/as/rune/VibRune;->SUPPORT_SYNC_WITH_HAPTIC:Z

    if-nez v0, :cond_0

    return-void

    .line 389
    :cond_0
    new-instance v0, Lcom/samsung/android/settings/as/vibration/VibPickerItem;

    const/4 v2, -0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mVibHelper:Lcom/samsung/android/settings/as/vibration/VibPickerHelper;

    invoke-virtual {v1}, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->getType()I

    move-result v5

    const/4 v6, 0x1

    iget-object v1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mVibHelper:Lcom/samsung/android/settings/as/vibration/VibPickerHelper;

    .line 390
    invoke-virtual {v1}, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->getSyncItemTitle()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v9, 0xc350

    const/4 v11, 0x0

    const-string v4, ""

    const-string v8, "None"

    const-string v10, ""

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/samsung/android/settings/as/vibration/VibPickerItem;-><init>(IILjava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 392
    iget-object v1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mAllItemList:Ljava/util/ArrayList;

    const-string v2, "None"

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->getKeyByCategoryTitle(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    iget v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mStaticItemCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mStaticItemCount:I

    return-void
.end method

.method private updateVibPickerItemList()V
    .locals 1

    const/4 v0, 0x2

    .line 419
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->addPatternList(I)V

    .line 420
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mVibHelper:Lcom/samsung/android/settings/as/vibration/VibPickerHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->getType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->addPatternList(I)V

    .line 421
    invoke-direct {p0}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->addRealItemList()V

    .line 422
    invoke-direct {p0}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->addFooterItem()V

    return-void
.end method

.method private updateVibPickerListAdapter()V
    .locals 2

    .line 412
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mVibPickerListAdapter:Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;

    if-eqz v0, :cond_0

    .line 413
    iget v1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mCustomPatternCount:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;->updateVibPatternList(I)V

    .line 414
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mVibPickerListAdapter:Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;

    iget p0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mCheckedPos:I

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;->setSelectItem(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public deleteCustomPattern(I)V
    .locals 5

    .line 594
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mQueryHelper:Lcom/samsung/android/settings/as/vibration/VibPickerQueryHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/as/vibration/VibPickerQueryHelper;->getGalaxyCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 597
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mQueryHelper:Lcom/samsung/android/settings/as/vibration/VibPickerQueryHelper;

    invoke-virtual {v1, p1}, Lcom/samsung/android/settings/as/vibration/VibPickerQueryHelper;->deletePattern(I)I

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "VibPickerActivity"

    const-string v1, "The pattern deletion was successful"

    .line 598
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    iget-object p1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mQueryHelper:Lcom/samsung/android/settings/as/vibration/VibPickerQueryHelper;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/as/vibration/VibPickerQueryHelper;->getPatternList(I)Ljava/util/List;

    move-result-object p1

    .line 600
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 601
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->getPickerItem(Landroid/os/Bundle;)Lcom/samsung/android/settings/as/vibration/VibPickerItem;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 604
    :cond_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    add-int/lit8 v0, v0, 0x1

    .line 605
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "_id"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 606
    invoke-virtual {v1}, Lcom/samsung/android/settings/as/vibration/VibPickerItem;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "vibration_name"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    invoke-virtual {v1}, Lcom/samsung/android/settings/as/vibration/VibPickerItem;->getPattern()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "vibration_pattern"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 608
    invoke-virtual {v1}, Lcom/samsung/android/settings/as/vibration/VibPickerItem;->getVibType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "vibration_type"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 609
    invoke-virtual {v1}, Lcom/samsung/android/settings/as/vibration/VibPickerItem;->getData()Ljava/lang/String;

    move-result-object v3

    const-string v4, "custom_data"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    invoke-virtual {v1}, Lcom/samsung/android/settings/as/vibration/VibPickerItem;->getIsCustom()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "is_custom"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 612
    iget-object v3, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mQueryHelper:Lcom/samsung/android/settings/as/vibration/VibPickerQueryHelper;

    invoke-virtual {v1}, Lcom/samsung/android/settings/as/vibration/VibPickerItem;->getId()I

    move-result v1

    invoke-virtual {v3, v2, v1}, Lcom/samsung/android/settings/as/vibration/VibPickerQueryHelper;->updatePatternList(Landroid/content/ContentValues;I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getItemDecoration()Lcom/samsung/android/settings/as/vibration/RecyclerViewDecoration;
    .locals 4

    .line 204
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$drawable;->sec_widget_list_divider:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 205
    iget-object v1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$dimen;->sec_tab_widget_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 206
    iget-object v2, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$dimen;->sec_widget_list_margin_inner:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 207
    new-instance v3, Lcom/samsung/android/settings/as/vibration/RecyclerViewDecoration;

    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mContext:Landroid/content/Context;

    invoke-direct {v3, v0, v1, v2, p0}, Lcom/samsung/android/settings/as/vibration/RecyclerViewDecoration;-><init>(Landroid/graphics/drawable/Drawable;IILandroid/content/Context;)V

    return-object v3
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 590
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 704
    invoke-direct {p0}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->stopVibAndRingtone()V

    .line 705
    invoke-super {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 649
    invoke-super {p0, p1}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 650
    invoke-direct {p0}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->stopVibAndRingtone()V

    .line 651
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->isAdaptLandScapeMode(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 652
    invoke-direct {p0}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->setLandScapeLayout()V

    goto :goto_0

    .line 654
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->setPortraitLayout()V

    .line 656
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_1

    .line 657
    iget v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mCheckedPos:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 659
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 124
    invoke-super {p0, p1}, Lcom/android/settings/core/SettingsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 125
    sget p1, Lcom/android/settings/R$layout;->sec_vibpicker_v2:I

    invoke-virtual {p0, p1}, Lcom/android/settings/core/SettingsBaseActivity;->setContentView(I)V

    .line 127
    invoke-direct {p0}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->initVibrationInfo()V

    .line 128
    invoke-direct {p0}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->setContainerView()V

    .line 129
    invoke-direct {p0}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->setConfiguration()V

    .line 130
    invoke-direct {p0}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->setToolBar()V

    .line 131
    invoke-direct {p0}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->setRecyclerView()V

    .line 132
    invoke-direct {p0}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->setVibPickerIntensitySettings()V

    .line 133
    invoke-direct {p0}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->updatePickerItemList()V

    .line 134
    invoke-direct {p0}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->setVibPickerListAdapter()V

    .line 135
    invoke-direct {p0}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->setPrevSelectedPosition()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    const-string v0, "VibPickerActivity"

    const-string v1, "onCreateOptionsMenu"

    .line 664
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "VibPickerActivity"

    const-string v1, "onDestroy()"

    .line 689
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 690
    iput-boolean v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mSync:Z

    .line 691
    invoke-direct {p0}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->resetItemList()V

    .line 693
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 670
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 671
    sget-object p1, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/as/vibration/VibPickerActivity;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p0, 0x1

    return p0

    .line 678
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method protected onPause()V
    .locals 0

    .line 698
    invoke-direct {p0}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->stopVibAndRingtone()V

    .line 699
    invoke-super {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 683
    invoke-super {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->onResume()V

    .line 684
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    return-void
.end method
