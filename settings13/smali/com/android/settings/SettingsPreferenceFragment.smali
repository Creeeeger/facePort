.class public abstract Lcom/android/settings/SettingsPreferenceFragment;
.super Lcom/android/settings/core/InstrumentedPreferenceFragment;
.source "SettingsPreferenceFragment.java"

# interfaces
.implements Lcom/android/settings/DialogCreatable;
.implements Lcom/android/settings/support/actionbar/HelpResourceProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;
    }
.end annotation


# static fields
.field private static final DELAY_SET_ITEM_ANIMATOR_DURATION_MILLIS:J = 0x2bcL

.field public static final KEY_FOOTER_PREFERENCE:Ljava/lang/String; = "auto_added_footer_preference"

.field private static final ORDER_FIRST:I = -0x1

.field private static final ORDER_LAST:I = 0x7ffffffe

.field private static final SAVE_HIGHLIGHTED_KEY:Ljava/lang/String; = "android:preference_highlighted"

.field private static final SWITCH_PREFERENCE_LAYOUT:I = 0x2

.field private static final SWITCH_PREFERENCE_LAYOUT_LARGE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SettingsPreferenceFragment"


# instance fields
.field public mAdapter:Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;

.field private mAnimationAllowed:Z

.field private mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

.field private mAutoAddFooterPreference:Z

.field private mAutoRemoveAvailable:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mCurrentRootAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field private mDataSetObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

.field protected mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

.field private mEmptyView:Landroid/view/View;

.field private mFooter:Lcom/android/settingslib/widget/LayoutPreference;

.field private mFooterPreference:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

.field private mHeader:Lcom/android/settingslib/widget/LayoutPreference;

.field private mIsDataSetObserverRegistered:Z

.field private mIsLargeText:I

.field private mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field mPinnedHeaderFrameLayout:Landroid/view/ViewGroup;

.field private mPreferenceCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field public mPreferenceHighlighted:Z

.field private mRelativeLinkViewCount:I


# direct methods
.method public static synthetic $r8$lambda$-rb1cyVoBKkMW5mg9rUla56JiG4(Lcom/android/settings/SettingsPreferenceFragment;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->lambda$replaceEnterprisePreferenceScreenTitle$3(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$2tRJOdxlpheVoVxL5cBtrZovTeI(Lcom/android/settings/SettingsPreferenceFragment;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->lambda$replaceEnterpriseStringSummary$4(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$4tVG9w4KDQ7cFuaikmA-Yg8qdss(Lcom/android/settings/SettingsPreferenceFragment;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->lambda$updateEmptyView$1(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5deVPLCX7Er0IOcYNOnCPfkGbJ4(Lcom/android/settings/SettingsPreferenceFragment;Landroidx/appcompat/widget/Toolbar;Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->lambda$updateEmptyView$2(Landroidx/appcompat/widget/Toolbar;Lcom/google/android/material/appbar/AppBarLayout;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$6ba5ijOZtH13BXPabZ8AD-IAoF0(Lcom/android/settings/SettingsPreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;->lambda$onActivityCreated$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$Mdb72nDAdElZrYzF4lQn_KSvYtE(Lcom/android/settings/SettingsPreferenceFragment;II)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->lambda$replaceEnterpriseStringSummary$5(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$iudEMVlb8rGzndjXn5IgWUxkt6U(Lcom/android/settings/SettingsPreferenceFragment;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->lambda$replaceEnterpriseStringTitle$6(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDialogFragment(Lcom/android/settings/SettingsPreferenceFragment;)Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmDialogFragment(Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveNeedlessInsetCategory(Lcom/android/settings/SettingsPreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;->removeNeedlessInsetCategory()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateFooterPreference(Lcom/android/settings/SettingsPreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;->updateFooterPreference()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 90
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 115
    iput-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mIsDataSetObserverRegistered:Z

    .line 116
    new-instance v1, Lcom/android/settings/SettingsPreferenceFragment$1;

    invoke-direct {v1, p0}, Lcom/android/settings/SettingsPreferenceFragment$1;-><init>(Lcom/android/settings/SettingsPreferenceFragment;)V

    iput-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDataSetObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    const/4 v1, 0x1

    .line 214
    iput-boolean v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mAutoRemoveAvailable:Z

    .line 217
    iput-boolean v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mAutoAddFooterPreference:Z

    .line 231
    iput-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPreferenceHighlighted:Z

    .line 633
    iput v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mRelativeLinkViewCount:I

    return-void
.end method

.method private addPreferenceToBottom(Lcom/android/settingslib/widget/LayoutPreference;)V
    .locals 2

    .line 694
    iget v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mRelativeLinkViewCount:I

    mul-int/lit8 v0, v0, 0x2

    const v1, 0x7ffffffe

    sub-int/2addr v1, v0

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setOrder(I)V

    .line 695
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 696
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 697
    iget p1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mRelativeLinkViewCount:I

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setRelativeLinkViewCount(I)V

    :cond_0
    return-void
.end method

.method private addPreferenceToTop(Lcom/android/settingslib/widget/LayoutPreference;)V
    .locals 1

    const/4 v0, -0x1

    .line 566
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOrder(I)V

    .line 567
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 568
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method private findLastPreference(Landroidx/preference/PreferenceGroup;I)Landroidx/preference/Preference;
    .locals 2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_2

    .line 1268
    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1269
    invoke-virtual {v0}, Landroidx/preference/Preference;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1270
    instance-of p1, v0, Landroidx/preference/PreferenceGroup;

    if-eqz p1, :cond_0

    move-object p1, v0

    check-cast p1, Landroidx/preference/PreferenceGroup;

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p2

    if-lez p2, :cond_0

    .line 1271
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->findLastPreference(Landroidx/preference/PreferenceGroup;I)Landroidx/preference/Preference;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0

    :cond_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private getCurrentKeyList()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1323
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1325
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    .line 1327
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    .line 1329
    invoke-virtual {p0, v3}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v4

    .line 1330
    invoke-virtual {v4}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 1331
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1332
    instance-of v5, v4, Landroidx/preference/PreferenceGroup;

    if-eqz v5, :cond_1

    .line 1333
    check-cast v4, Landroidx/preference/PreferenceGroup;

    .line 1334
    invoke-virtual {v4}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v5

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_1

    .line 1336
    invoke-virtual {v4, v6}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v7

    .line 1337
    invoke-virtual {v7}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    .line 1338
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private getParentPreference(Ljava/lang/String;)Landroidx/preference/Preference;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1305
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    .line 1306
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 1308
    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v3

    instance-of v3, v3, Landroidx/preference/PreferenceGroup;

    if-eqz v3, :cond_1

    .line 1309
    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/PreferenceGroup;

    .line 1310
    invoke-virtual {v3, p1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1311
    invoke-virtual {v3, p1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1312
    invoke-virtual {v3}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1313
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "buildPreferenceForCOM getParentPreference ="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SettingsPreferenceFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private synthetic lambda$onActivityCreated$0()V
    .locals 1

    .line 396
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 398
    new-instance v0, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$replaceEnterprisePreferenceScreenTitle$3(I)Ljava/lang/String;
    .locals 0

    .line 1169
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$replaceEnterpriseStringSummary$4(I)Ljava/lang/String;
    .locals 0

    .line 1182
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$replaceEnterpriseStringSummary$5(II)Ljava/lang/String;
    .locals 1

    .line 1195
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1196
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x0

    aput-object p0, v0, p2

    .line 1195
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$replaceEnterpriseStringTitle$6(I)Ljava/lang/String;
    .locals 0

    .line 1209
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$updateEmptyView$1(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 765
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 766
    iget-object p0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private synthetic lambda$updateEmptyView$2(Landroidx/appcompat/widget/Toolbar;Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 3

    .line 751
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 752
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 753
    iget-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 754
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    sub-int/2addr v2, p1

    .line 757
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 760
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result p1

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p2

    sub-int/2addr p1, p2

    sub-int p1, v2, p1

    :goto_0
    if-eqz v1, :cond_1

    .line 762
    iget p2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq p2, p1, :cond_1

    .line 763
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 764
    iget-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mEmptyView:Landroid/view/View;

    new-instance p2, Lcom/android/settings/SettingsPreferenceFragment$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, v1}, Lcom/android/settings/SettingsPreferenceFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/SettingsPreferenceFragment;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private removeNeedlessInsetCategory()V
    .locals 8

    .line 578
    iget-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mAutoRemoveAvailable:Z

    if-nez v0, :cond_0

    return-void

    .line 580
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 581
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 583
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-gtz v2, :cond_1

    return-void

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_4

    .line 592
    invoke-virtual {v0, v5}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 593
    invoke-virtual {v6}, Landroidx/preference/Preference;->isVisible()Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_1

    .line 594
    :cond_2
    instance-of v7, v6, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    if-eqz v7, :cond_5

    .line 595
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    move v5, v4

    :cond_5
    :goto_2
    if-ge v5, v2, :cond_a

    .line 604
    invoke-virtual {v0, v5}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 605
    invoke-virtual {v6}, Landroidx/preference/Preference;->isVisible()Z

    move-result v7

    if-nez v7, :cond_6

    goto :goto_4

    .line 606
    :cond_6
    instance-of v7, v3, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    if-eqz v7, :cond_7

    instance-of v7, v6, Landroidx/preference/PreferenceCategory;

    if-eqz v7, :cond_7

    .line 608
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 609
    :cond_7
    instance-of v7, v3, Landroidx/preference/PreferenceCategory;

    if-eqz v7, :cond_8

    instance-of v7, v6, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    if-eqz v7, :cond_8

    .line 611
    move-object v7, v3

    check-cast v7, Landroidx/preference/PreferenceCategory;

    invoke-virtual {v7}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v7

    if-nez v7, :cond_8

    .line 612
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    :goto_3
    move-object v3, v6

    :cond_9
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 620
    :cond_a
    instance-of v0, v3, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    if-eqz v0, :cond_b

    .line 621
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 624
    :cond_b
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    .line 625
    iget-object v2, p0, Lcom/android/settings/SettingsPreferenceFragment;->mFooterPreference:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    if-eq v1, v2, :cond_c

    .line 626
    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_5

    :cond_d
    return-void
.end method

.method private updateFooterPreference()V
    .locals 6

    .line 1218
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mFooterPreference:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    const-string v1, "SettingsPreferenceFragment"

    if-nez v0, :cond_0

    const-string p0, "mFooterPreference isn\'t initialized."

    .line 1219
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1223
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mAutoAddFooterPreference:Z

    if-nez v0, :cond_1

    goto/16 :goto_4

    .line 1229
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 1230
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_3

    .line 1235
    :cond_2
    iget-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mFooterPreference:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual {v1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_3

    .line 1236
    iget-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mFooterPreference:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_3
    move v1, v2

    .line 1239
    :goto_0
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 1240
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v3

    .line 1241
    invoke-virtual {v3}, Landroidx/preference/Preference;->getOrder()I

    move-result v4

    const v5, 0x7ffffffe

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lcom/android/settings/SettingsPreferenceFragment;->mFooterPreference:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    if-eq v3, v4, :cond_4

    const v4, 0x7ffffffd

    .line 1242
    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setOrder(I)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1246
    :cond_5
    iget-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mFooterPreference:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual {v1}, Landroidx/preference/Preference;->isVisible()Z

    move-result v1

    .line 1248
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-direct {p0, v0, v3}, Lcom/android/settings/SettingsPreferenceFragment;->findLastPreference(Landroidx/preference/PreferenceGroup;I)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1250
    instance-of v3, v0, Landroidx/preference/PreferenceCategory;

    if-nez v3, :cond_7

    instance-of v3, v0, Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    if-nez v3, :cond_7

    instance-of v3, v0, Lcom/samsung/android/settings/widget/SecButtonPreference;

    if-nez v3, :cond_7

    instance-of v3, v0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference;

    if-nez v3, :cond_7

    instance-of v3, v0, Lcom/android/settingslib/widget/LayoutPreference;

    if-eqz v3, :cond_6

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    .line 1254
    invoke-virtual {v0}, Lcom/android/settingslib/widget/LayoutPreference;->isRelativeLinkView()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_6
    if-nez v1, :cond_8

    .line 1260
    iget-object p0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mFooterPreference:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_2

    :cond_7
    :goto_1
    if-eqz v1, :cond_8

    .line 1256
    iget-object p0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mFooterPreference:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_8
    :goto_2
    return-void

    :cond_9
    :goto_3
    const-string p0, "root is null or empty."

    .line 1231
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1225
    :cond_a
    :goto_4
    iget-object p0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mFooterPreference:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method


# virtual methods
.method public addPreferencesFromResource(I)V
    .locals 0

    .line 338
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->addPreferencesFromResource(I)V

    .line 339
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->checkAvailablePrefs(Landroidx/preference/PreferenceGroup;)V

    return-void
.end method

.method protected cacheRemoveAllPrefs(Landroidx/preference/PreferenceGroup;)V
    .locals 5

    .line 810
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPreferenceCache:Landroid/util/ArrayMap;

    .line 811
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 813
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    .line 814
    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 817
    :cond_0
    iget-object v3, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPreferenceCache:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method checkAvailablePrefs(Landroidx/preference/PreferenceGroup;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 345
    :goto_0
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 346
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    .line 347
    instance-of v3, v2, Lcom/android/settings/SelfAvailablePreference;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Lcom/android/settings/SelfAvailablePreference;

    .line 348
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/settings/SelfAvailablePreference;->isAvailable(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 349
    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_1

    .line 350
    :cond_1
    instance-of v3, v2, Landroidx/preference/PreferenceGroup;

    if-eqz v3, :cond_2

    .line 351
    check-cast v2, Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->checkAvailablePrefs(Landroidx/preference/PreferenceGroup;)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected checkForKnoxCustomProKioskEnabledItems()V
    .locals 8

    .line 1347
    invoke-static {}, Lcom/samsung/android/knox/custom/ProKioskManager;->getInstance()Lcom/samsung/android/knox/custom/ProKioskManager;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1349
    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1350
    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getSettingsEnabledItems()I

    move-result v0

    .line 1353
    invoke-static {}, Lcom/samsung/android/knox/custom/SettingsManager;->getInstance()Lcom/samsung/android/knox/custom/SettingsManager;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1355
    invoke-virtual {v1}, Lcom/samsung/android/knox/custom/SettingsManager;->getSettingsHiddenState()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 1358
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getCurrentKeyList()Ljava/util/ArrayList;

    move-result-object v3

    move v4, v2

    .line 1360
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 1361
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 1364
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_3

    :cond_1
    const-string/jumbo v6, "wifi_settings"

    .line 1367
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    and-int/lit8 v6, v1, 0x1

    if-nez v6, :cond_2

    and-int/lit8 v6, v0, 0x1

    if-eqz v6, :cond_2

    move v6, v2

    goto :goto_2

    :cond_2
    const/4 v6, 0x1

    :goto_2
    const-string v7, "bluetooth_settings"

    .line 1373
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    and-int/lit8 v7, v1, 0x2

    if-nez v7, :cond_3

    and-int/lit8 v7, v0, 0x2

    if-eqz v7, :cond_3

    move v6, v2

    :cond_3
    const-string v7, "location_settings"

    .line 1379
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    and-int/lit16 v7, v1, 0x400

    if-nez v7, :cond_4

    and-int/lit8 v7, v0, 0x4

    if-eqz v7, :cond_4

    move v6, v2

    :cond_4
    if-eqz v6, :cond_5

    .line 1386
    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :cond_5
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method

.method public finish()V
    .locals 2

    .line 1132
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1134
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 1135
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    goto :goto_0

    .line 1137
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method public final finishFragment()V
    .locals 0

    .line 866
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method protected getCachedCount()I
    .locals 0

    .line 833
    iget-object p0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPreferenceCache:Landroid/util/ArrayMap;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected getCachedPreference(Ljava/lang/String;)Landroidx/preference/Preference;
    .locals 0

    .line 822
    iget-object p0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPreferenceCache:Landroid/util/ArrayMap;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/preference/Preference;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method protected getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .line 875
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 877
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mContentResolver:Landroid/content/ContentResolver;

    .line 879
    :cond_0
    iget-object p0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mContentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method public getDialogFragment()Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;
    .locals 0

    .line 1419
    iget-object p0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    return-object p0
.end method

.method public getDialogMetricsCategory(I)I
    .locals 0

    return p1
.end method

.method public getEmptyView()Landroid/view/View;
    .locals 0

    .line 783
    iget-object p0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mEmptyView:Landroid/view/View;

    return-object p0
.end method

.method public getFooterView()Lcom/android/settingslib/widget/LayoutPreference;
    .locals 0

    .line 644
    iget-object p0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mFooter:Lcom/android/settingslib/widget/LayoutPreference;

    return-object p0
.end method

.method public getHeaderView()Lcom/android/settingslib/widget/LayoutPreference;
    .locals 0

    .line 531
    iget-object p0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mHeader:Lcom/android/settingslib/widget/LayoutPreference;

    return-object p0
.end method

.method public getInitialExpandedChildCount()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getIntent()Landroid/content/Intent;
    .locals 1

    .line 1142
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1145
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method protected getNextButton()Landroid/widget/Button;
    .locals 0

    .line 1128
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/android/settings/ButtonBarHandler;

    invoke-interface {p0}, Lcom/android/settings/ButtonBarHandler;->getNextButton()Landroid/widget/Button;

    move-result-object p0

    return-object p0
.end method

.method protected getPackageManager()Landroid/content/pm/PackageManager;
    .locals 0

    .line 900
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    return-object p0
.end method

.method public getRelativeLinkViewCount()I
    .locals 0

    .line 640
    iget p0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mRelativeLinkViewCount:I

    return p0
.end method

.method protected getSystemService(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 893
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 886
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected hasNextButton()Z
    .locals 0

    .line 1124
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/android/settings/ButtonBarHandler;

    invoke-interface {p0}, Lcom/android/settings/ButtonBarHandler;->hasNextButton()Z

    move-result p0

    return p0
.end method

.method public highlightPreferenceIfNeeded()V
    .locals 1

    const/4 v0, 0x0

    .line 490
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->highlightPreferenceIfNeeded(Z)V

    return-void
.end method

.method public highlightPreferenceIfNeeded(Z)V
    .locals 3

    .line 477
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 480
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mAdapter:Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;

    if-eqz v0, :cond_1

    .line 483
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    iget-object p0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0, v1, v2, p0, p1}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->requestHighlight(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Lcom/google/android/material/appbar/AppBarLayout;Z)V

    :cond_1
    return-void
.end method

.method protected isFinishingOrDestroyed()Z
    .locals 1

    .line 1163
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1164
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isPreferenceAnimationAllowed()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected isPreferenceExpanded(Landroidx/preference/Preference;)Z
    .locals 0

    .line 511
    iget-object p0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mAdapter:Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;

    if-eqz p0, :cond_1

    .line 512
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroupAdapter;->getPreferenceAdapterPosition(Landroidx/preference/Preference;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 390
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 391
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 394
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->isPreferenceAnimationAllowed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 395
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/android/settings/SettingsPreferenceFragment$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsPreferenceFragment$$ExternalSyntheticLambda5;-><init>(Lcom/android/settings/SettingsPreferenceFragment;)V

    const-wide/16 v1, 0x2bc

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 247
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->shouldSkipForInitialSUW()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skip "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " before SUW completed."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingsPreferenceFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    .line 251
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onAttach(Landroid/content/Context;)V

    .line 253
    iput-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method protected onBindPreferences()V
    .locals 0

    .line 425
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->registerObserverIfNeeded()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7

    .line 284
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 285
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 286
    invoke-static {p1}, Lcom/android/settings/Utils;->isLargeText(Landroid/content/res/Configuration;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 288
    :goto_0
    instance-of v3, v0, Landroidx/preference/PreferenceGroupAdapter;

    if-eqz v3, :cond_c

    iget v3, p0, Lcom/android/settings/SettingsPreferenceFragment;->mIsLargeText:I

    if-eq v1, v3, :cond_c

    .line 289
    iput v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mIsLargeText:I

    const/4 v1, 0x0

    move v3, v1

    .line 291
    :goto_1
    move-object v4, v0

    check-cast v4, Landroidx/preference/PreferenceGroupAdapter;

    invoke-virtual {v4}, Landroidx/preference/PreferenceGroupAdapter;->getItemCount()I

    move-result v5

    if-ge v1, v5, :cond_b

    .line 292
    invoke-virtual {v4, v1}, Landroidx/preference/PreferenceGroupAdapter;->getItem(I)Landroidx/preference/Preference;

    move-result-object v4

    .line 293
    instance-of v5, v4, Landroidx/preference/SwitchPreferenceCompat;

    if-nez v5, :cond_1

    instance-of v5, v4, Landroidx/preference/SwitchPreference;

    if-nez v5, :cond_1

    instance-of v5, v4, Lcom/android/settingslib/PrimarySwitchPreference;

    if-eqz v5, :cond_a

    .line 297
    :cond_1
    invoke-virtual {v4}, Landroidx/preference/Preference;->getLayoutResource()I

    move-result v3

    .line 298
    sget v5, Lcom/android/settings/R$layout;->sec_restricted_switch_preference_large:I

    if-ne v3, v5, :cond_2

    .line 299
    sget v3, Lcom/android/settings/R$layout;->sec_restricted_switch_preference:I

    invoke-virtual {v4, v3}, Landroidx/preference/Preference;->setLayoutResource(I)V

    goto :goto_2

    .line 300
    :cond_2
    sget v6, Lcom/android/settings/R$layout;->sec_restricted_switch_preference:I

    if-ne v3, v6, :cond_3

    .line 301
    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setLayoutResource(I)V

    goto :goto_2

    .line 302
    :cond_3
    sget v5, Lcom/android/settings/R$layout;->sec_restricted_switch_preference_screen_large:I

    if-ne v3, v5, :cond_4

    .line 303
    sget v3, Lcom/android/settings/R$layout;->sec_restricted_switch_preference_screen:I

    invoke-virtual {v4, v3}, Landroidx/preference/Preference;->setLayoutResource(I)V

    goto :goto_2

    .line 304
    :cond_4
    sget v6, Lcom/android/settings/R$layout;->sec_restricted_switch_preference_screen:I

    if-ne v3, v6, :cond_5

    .line 305
    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setLayoutResource(I)V

    goto :goto_2

    .line 306
    :cond_5
    sget v5, Lcom/android/settings/R$layout;->sec_preference_app_large:I

    if-ne v3, v5, :cond_6

    .line 307
    sget v3, Lcom/android/settings/R$layout;->sec_preference_app:I

    invoke-virtual {v4, v3}, Landroidx/preference/Preference;->setLayoutResource(I)V

    goto :goto_2

    .line 308
    :cond_6
    sget v6, Lcom/android/settings/R$layout;->sec_preference_app:I

    if-ne v3, v6, :cond_7

    .line 309
    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setLayoutResource(I)V

    goto :goto_2

    .line 310
    :cond_7
    sget v5, Lcom/android/settings/R$layout;->sec_preference_primary_switch_large:I

    if-ne v3, v5, :cond_8

    .line 311
    sget v3, Lcom/android/settings/R$layout;->sec_preference_primary_switch:I

    invoke-virtual {v4, v3}, Landroidx/preference/Preference;->setLayoutResource(I)V

    goto :goto_2

    .line 312
    :cond_8
    sget v6, Lcom/android/settings/R$layout;->sec_preference_primary_switch:I

    if-ne v3, v6, :cond_9

    .line 313
    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setLayoutResource(I)V

    :cond_9
    :goto_2
    move v3, v2

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_b
    if-eqz v3, :cond_c

    .line 318
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 323
    :cond_c
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 259
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 261
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 264
    invoke-static {p0}, Lcom/android/settings/search/actionbar/SearchMenuController;->init(Lcom/android/settings/core/InstrumentedPreferenceFragment;)V

    if-eqz p1, :cond_0

    const-string v0, "android:preference_highlighted"

    .line 268
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPreferenceHighlighted:Z

    .line 270
    :cond_0
    invoke-static {p0}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->adjustInitialExpandedChildCount(Lcom/android/settings/SettingsPreferenceFragment;)V

    .line 273
    iget-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_2

    .line 274
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/Utils;->isLargeText(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    .line 275
    :goto_0
    iput p1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mIsLargeText:I

    :cond_2
    return-void
.end method

.method protected onCreateAdapter(Landroidx/preference/PreferenceScreen;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 3

    .line 794
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 795
    new-instance v1, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v2, ":settings:fragment_args_key"

    .line 797
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-boolean v2, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPreferenceHighlighted:Z

    invoke-direct {v1, p1, v0, v2}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;-><init>(Landroidx/preference/PreferenceGroup;Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mAdapter:Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;

    const/4 p1, 0x1

    .line 800
    iput-boolean p1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPreferenceHighlighted:Z

    return-object v1
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreateLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 2

    .line 788
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 330
    invoke-super {p0, p1, p2, p3}, Landroidx/preference/PreferenceFragmentCompat;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 331
    sget p2, Lcom/android/settings/R$id;->pinned_header:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPinnedHeaderFrameLayout:Landroid/view/ViewGroup;

    .line 332
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    sget p3, Lcom/android/settings/R$id;->app_bar:I

    invoke-virtual {p2, p3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object p2, p0, Lcom/android/settings/SettingsPreferenceFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    return-object p1
.end method

.method protected onDataSetChanged()V
    .locals 0

    .line 526
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->highlightPreferenceIfNeeded()V

    .line 527
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->updateEmptyView()V

    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 905
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 906
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 907
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    const/4 v0, 0x0

    .line 908
    iput-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 911
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    return-void
.end method

.method public onDialogShowing()V
    .locals 0

    return-void
.end method

.method public onDisplayPreferenceDialog(Landroidx/preference/Preference;)V
    .locals 2

    .line 976
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 978
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 981
    :cond_0
    instance-of v0, p1, Lcom/android/settings/RestrictedListPreference;

    if-eqz v0, :cond_1

    .line 983
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;->newInstance(Ljava/lang/String;)Landroidx/preference/ListPreferenceDialogFragmentCompat;

    move-result-object p1

    goto :goto_0

    .line 984
    :cond_1
    instance-of v0, p1, Lcom/android/settings/CustomListPreference;

    if-eqz v0, :cond_2

    .line 986
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;->newInstance(Ljava/lang/String;)Landroidx/preference/ListPreferenceDialogFragmentCompat;

    move-result-object p1

    goto :goto_0

    .line 987
    :cond_2
    instance-of v0, p1, Lcom/android/settingslib/CustomDialogPreferenceCompat;

    if-eqz v0, :cond_3

    .line 989
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settingslib/CustomDialogPreferenceCompat$CustomPreferenceDialogFragment;->newInstance(Ljava/lang/String;)Lcom/android/settingslib/CustomDialogPreferenceCompat$CustomPreferenceDialogFragment;

    move-result-object p1

    goto :goto_0

    .line 990
    :cond_3
    instance-of v0, p1, Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    if-eqz v0, :cond_4

    .line 992
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settingslib/CustomEditTextPreferenceCompat$CustomPreferenceDialogFragment;->newInstance(Ljava/lang/String;)Lcom/android/settingslib/CustomEditTextPreferenceCompat$CustomPreferenceDialogFragment;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    .line 997
    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 998
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "dialog_preference"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 999
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDialogShowing()V

    return-void

    .line 994
    :cond_4
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onDisplayPreferenceDialog(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    const-string v0, "SettingsPreferenceFragment#onResume"

    .line 408
    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 410
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onResume()V

    const-string v0, "SettingsPreferenceFragment#highlightPreferenceIfNeeded"

    .line 412
    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 414
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->highlightPreferenceIfNeeded()V

    .line 416
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    .line 419
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 375
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 377
    iget-object p0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mAdapter:Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;

    if-eqz p0, :cond_0

    .line 378
    invoke-virtual {p0}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->isHighlightRequested()Z

    move-result p0

    const-string v0, "android:preference_highlighted"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method protected onUnbindPreferences()V
    .locals 0

    .line 430
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->unregisterObserverIfNeeded()V

    return-void
.end method

.method public registerObserverIfNeeded()V
    .locals 2

    .line 441
    iget-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mIsDataSetObserverRegistered:Z

    if-nez v0, :cond_1

    .line 442
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mCurrentRootAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    .line 443
    iget-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDataSetObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 445
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mCurrentRootAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 446
    iget-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDataSetObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    const/4 v0, 0x1

    .line 447
    iput-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mIsDataSetObserverRegistered:Z

    .line 448
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDataSetChanged()V

    .line 450
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;->removeNeedlessInsetCategory()V

    .line 453
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;->updateFooterPreference()V

    .line 457
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->setApplicationRestrictionsForKnox()V

    :cond_1
    return-void
.end method

.method protected removeCachedPrefs(Landroidx/preference/PreferenceGroup;)V
    .locals 2

    .line 826
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPreferenceCache:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    .line 827
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 829
    iput-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPreferenceCache:Landroid/util/ArrayMap;

    return-void
.end method

.method protected removeDialog(I)V
    .locals 1

    .line 942
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->getDialogId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 943
    iget-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_0
    const/4 p1, 0x0

    .line 945
    iput-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    return-void
.end method

.method protected removeHeaderView()V
    .locals 2

    .line 558
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mHeader:Lcom/android/settingslib/widget/LayoutPreference;

    if-eqz v0, :cond_0

    .line 559
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mHeader:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    const/4 v0, 0x0

    .line 560
    iput-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mHeader:Lcom/android/settingslib/widget/LayoutPreference;

    :cond_0
    return-void
.end method

.method removePreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;)Z
    .locals 5

    .line 843
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 845
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v3

    .line 846
    invoke-virtual {v3}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 848
    invoke-static {v4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 849
    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    .line 852
    :cond_0
    instance-of v4, v3, Landroidx/preference/PreferenceGroup;

    if-eqz v4, :cond_1

    .line 853
    check-cast v3, Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0, v3, p2}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public removePreference(Ljava/lang/String;)Z
    .locals 1

    .line 838
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected replaceEnterprisePreferenceScreenTitle(Ljava/lang/String;I)V
    .locals 3

    .line 1168
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    new-instance v2, Lcom/android/settings/SettingsPreferenceFragment$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p2}, Lcom/android/settings/SettingsPreferenceFragment$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/SettingsPreferenceFragment;I)V

    invoke-virtual {v1, p1, v2}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected replaceEnterpriseStringSummary(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 1174
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1176
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Could not find enterprise preference "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SettingsPreferenceFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1180
    :cond_0
    iget-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 1181
    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p1

    new-instance v1, Lcom/android/settings/SettingsPreferenceFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p3}, Lcom/android/settings/SettingsPreferenceFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/SettingsPreferenceFragment;I)V

    invoke-virtual {p1, p2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    .line 1180
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected replaceEnterpriseStringSummary(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2

    .line 1187
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1189
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Could not find enterprise preference "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SettingsPreferenceFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1193
    :cond_0
    iget-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 1194
    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p1

    new-instance v1, Lcom/android/settings/SettingsPreferenceFragment$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p3, p4}, Lcom/android/settings/SettingsPreferenceFragment$$ExternalSyntheticLambda6;-><init>(Lcom/android/settings/SettingsPreferenceFragment;II)V

    invoke-virtual {p1, p2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    .line 1193
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected replaceEnterpriseStringTitle(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 1201
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1203
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Could not find enterprise preference "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SettingsPreferenceFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1207
    :cond_0
    iget-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 1208
    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p1

    new-instance v1, Lcom/android/settings/SettingsPreferenceFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p3}, Lcom/android/settings/SettingsPreferenceFragment$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/SettingsPreferenceFragment;I)V

    invoke-virtual {p1, p2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    .line 1207
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected setAnimationAllowed(Z)V
    .locals 0

    .line 806
    iput-boolean p1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mAnimationAllowed:Z

    return-void
.end method

.method protected setApplicationRestrictionsForKnox()V
    .locals 6

    .line 1393
    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxUtils;->isApplicationRestricted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1394
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/knox/KnoxUtils;->getApplicationRestrictions(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    .line 1395
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1396
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "hide"

    .line 1397
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1398
    invoke-direct {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->getParentPreference(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v3

    .line 1399
    invoke-virtual {p0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    .line 1400
    instance-of v5, v4, Landroidx/preference/PreferenceCategory;

    if-nez v5, :cond_1

    .line 1401
    instance-of v5, v3, Landroidx/preference/PreferenceGroup;

    if-eqz v5, :cond_1

    .line 1402
    check-cast v3, Landroidx/preference/PreferenceGroup;

    invoke-virtual {v3, v4}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 1405
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    goto :goto_0

    :cond_2
    const-string v4, "grayout"

    .line 1406
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1407
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    .line 1409
    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setAutoAddFooterPreference(Z)V
    .locals 0

    .line 1214
    iput-boolean p1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mAutoAddFooterPreference:Z

    return-void
.end method

.method public setAutoRemoveInsetCategory(Z)V
    .locals 0

    .line 574
    iput-boolean p1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mAutoRemoveAvailable:Z

    return-void
.end method

.method public setBadgeIconWidget()V
    .locals 6

    .line 1282
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1287
    :cond_0
    iget-object p0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/Utils;->getBadgeKeysFromNotifications(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    move v2, v1

    .line 1288
    :goto_0
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 1289
    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v3

    .line 1290
    invoke-virtual {v3}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1291
    invoke-virtual {v3}, Landroidx/preference/Preference;->getWidgetLayoutResource()I

    move-result v4

    if-nez v4, :cond_2

    .line 1292
    sget v4, Lcom/android/settings/R$layout;->sec_badge_icon_widget:I

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    goto :goto_1

    .line 1295
    :cond_1
    invoke-virtual {v3}, Landroidx/preference/Preference;->getWidgetLayoutResource()I

    move-result v4

    sget v5, Lcom/android/settings/R$layout;->sec_badge_icon_widget:I

    if-ne v4, v5, :cond_2

    .line 1296
    invoke-virtual {v3, v1}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setEmptyFooterView()V
    .locals 4

    const-string v0, "layout_inflater"

    .line 653
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 655
    sget v1, Lcom/android/settings/R$layout;->sec_empty_footer_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 656
    new-instance v1, Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/settingslib/widget/LayoutPreference;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mFooter:Lcom/android/settingslib/widget/LayoutPreference;

    const/4 v0, 0x0

    .line 657
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBackground(I)V

    .line 658
    new-instance v1, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;-><init>(Landroid/content/Context;)V

    .line 659
    iget v2, p0, Lcom/android/settings/SettingsPreferenceFragment;->mRelativeLinkViewCount:I

    mul-int/lit8 v2, v2, 0x2

    const v3, 0x7ffffffd

    sub-int/2addr v3, v2

    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setOrder(I)V

    const/16 v2, 0xc

    .line 660
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBackground(I)V

    .line 662
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 663
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 666
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 667
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->seslSetLastRoundedCorner(Z)V

    .line 670
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mFooter:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferenceToBottom(Lcom/android/settingslib/widget/LayoutPreference;)V

    return-void
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 2

    .line 775
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 776
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 778
    :cond_0
    iput-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mEmptyView:Landroid/view/View;

    .line 779
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->updateEmptyView()V

    return-void
.end method

.method public setFooterView(I)V
    .locals 2

    .line 648
    new-instance v0, Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/settingslib/widget/LayoutPreference;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mFooter:Lcom/android/settingslib/widget/LayoutPreference;

    .line 649
    invoke-direct {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferenceToBottom(Lcom/android/settingslib/widget/LayoutPreference;)V

    return-void
.end method

.method public setFooterView(Landroid/view/View;Z)V
    .locals 2

    if-eqz p2, :cond_1

    .line 675
    new-instance v0, Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/android/settingslib/widget/LayoutPreference;-><init>(Landroid/content/Context;Landroid/view/View;Z)V

    iput-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mFooter:Lcom/android/settingslib/widget/LayoutPreference;

    const/4 p1, 0x0

    .line 676
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBackground(I)V

    .line 677
    new-instance p2, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;-><init>(Landroid/content/Context;)V

    const v0, 0x7ffffffd

    .line 678
    iget v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mRelativeLinkViewCount:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setOrder(I)V

    const/16 v0, 0xc

    .line 679
    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBackground(I)V

    .line 680
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 681
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 683
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 684
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetLastRoundedCorner(Z)V

    goto :goto_0

    .line 687
    :cond_1
    new-instance p2, Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/android/settingslib/widget/LayoutPreference;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object p2, p0, Lcom/android/settings/SettingsPreferenceFragment;->mFooter:Lcom/android/settingslib/widget/LayoutPreference;

    .line 690
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mFooter:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferenceToBottom(Lcom/android/settingslib/widget/LayoutPreference;)V

    return-void
.end method

.method protected setHeaderView(I)V
    .locals 2

    .line 535
    new-instance v0, Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/settingslib/widget/LayoutPreference;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mHeader:Lcom/android/settingslib/widget/LayoutPreference;

    const/4 p1, 0x0

    .line 536
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 537
    iget-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mHeader:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferenceToTop(Lcom/android/settingslib/widget/LayoutPreference;)V

    return-void
.end method

.method protected setHeaderView(Landroid/view/View;)V
    .locals 2

    .line 541
    new-instance v0, Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/settingslib/widget/LayoutPreference;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mHeader:Lcom/android/settingslib/widget/LayoutPreference;

    const/4 p1, 0x0

    .line 542
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 543
    iget-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mHeader:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferenceToTop(Lcom/android/settingslib/widget/LayoutPreference;)V

    return-void
.end method

.method protected setHeaderView(Landroid/view/View;I)V
    .locals 2

    .line 553
    new-instance v0, Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/android/settingslib/widget/LayoutPreference;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mHeader:Lcom/android/settingslib/widget/LayoutPreference;

    .line 554
    invoke-direct {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferenceToTop(Lcom/android/settingslib/widget/LayoutPreference;)V

    return-void
.end method

.method protected setHeaderView(Landroid/view/View;Z)V
    .locals 2

    .line 548
    new-instance v0, Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/android/settingslib/widget/LayoutPreference;-><init>(Landroid/content/Context;Landroid/view/View;Z)V

    iput-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mHeader:Lcom/android/settingslib/widget/LayoutPreference;

    .line 549
    invoke-direct {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferenceToTop(Lcom/android/settingslib/widget/LayoutPreference;)V

    return-void
.end method

.method public setLoading(ZZ)V
    .locals 2

    .line 434
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/settings/R$id;->loading_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 435
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    xor-int/lit8 p1, p1, 0x1

    invoke-static {v0, p0, p1, p2}, Lcom/android/settings/widget/LoadingViewController;->handleLoadingContainer(Landroid/view/View;Landroid/view/View;ZZ)V

    return-void
.end method

.method protected setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    .line 954
    iget-object p0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz p0, :cond_0

    .line 955
    invoke-static {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->-$$Nest$fputmOnCancelListener(Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;Landroid/content/DialogInterface$OnCancelListener;)V

    :cond_0
    return-void
.end method

.method protected setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    .line 965
    iget-object p0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz p0, :cond_0

    .line 966
    invoke-static {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->-$$Nest$fputmOnDismissListener(Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_0
    return-void
.end method

.method public setPinnedHeaderView(I)Landroid/view/View;
    .locals 3

    .line 357
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 358
    iget-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPinnedHeaderFrameLayout:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    .line 359
    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 360
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setPinnedHeaderView(Landroid/view/View;)V

    return-object p1
.end method

.method public setPinnedHeaderView(Landroid/view/View;)V
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPinnedHeaderFrameLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 366
    iget-object p0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPinnedHeaderFrameLayout:Landroid/view/ViewGroup;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 704
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 706
    iget-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mAnimationAllowed:Z

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->setShouldUseGeneratedIds(Z)V

    .line 708
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    if-eqz p1, :cond_3

    .line 710
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mHeader:Lcom/android/settingslib/widget/LayoutPreference;

    if-eqz v0, :cond_1

    .line 711
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 714
    :cond_1
    new-instance v0, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mFooterPreference:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    const-string v1, "auto_added_footer_preference"

    .line 715
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 716
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mFooterPreference:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    const v2, 0x7ffffffe

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setOrder(I)V

    .line 717
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mFooterPreference:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBackground(I)V

    .line 719
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_2

    .line 720
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mFooterPreference:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 721
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 722
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->seslSetLastRoundedCorner(Z)V

    .line 726
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;->updateFooterPreference()V

    :cond_3
    return-void
.end method

.method public setRelativeLinkViewCount(I)V
    .locals 0

    .line 636
    iput p1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mRelativeLinkViewCount:I

    return-void
.end method

.method protected setResult(I)V
    .locals 1

    .line 1156
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1159
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    return-void
.end method

.method protected setResult(ILandroid/content/Intent;)V
    .locals 1

    .line 1149
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1152
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method protected shouldSkipForInitialSUW()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected showDialog(I)V
    .locals 2

    .line 917
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    const-string v0, "SettingsPreferenceFragment"

    const-string v1, "Old dialog fragment not null!"

    .line 918
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    :cond_0
    invoke-static {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->newInstance(Lcom/android/settings/DialogCreatable;I)Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 921
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public showPinnedHeader(Z)V
    .locals 0

    .line 370
    iget-object p0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPinnedHeaderFrameLayout:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public unregisterObserverIfNeeded()V
    .locals 2

    .line 464
    iget-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mIsDataSetObserverRegistered:Z

    if-eqz v0, :cond_1

    .line 465
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mCurrentRootAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    .line 466
    iget-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDataSetObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    const/4 v0, 0x0

    .line 467
    iput-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mCurrentRootAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    :cond_0
    const/4 v0, 0x0

    .line 469
    iput-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mIsDataSetObserverRegistered:Z

    :cond_1
    return-void
.end method

.method updateEmptyView()V
    .locals 5

    .line 733
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mEmptyView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 734
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 735
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v2, 0x102003f

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 736
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    .line 738
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "auto_added_footer_preference"

    invoke-virtual {v3, v4}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    sub-int/2addr v2, v3

    .line 740
    iget-object v3, p0, Lcom/android/settings/SettingsPreferenceFragment;->mHeader:Lcom/android/settingslib/widget/LayoutPreference;

    if-eqz v3, :cond_2

    move v3, v4

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    sub-int/2addr v2, v3

    if-lez v2, :cond_4

    if-eqz v0, :cond_3

    .line 741
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move v4, v1

    .line 742
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mEmptyView:Landroid/view/View;

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    const/16 v1, 0x8

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 744
    :cond_6
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 748
    :goto_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/android/settings/R$id;->action_bar:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 749
    iget-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mEmptyView:Landroid/view/View;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v1, :cond_7

    if-eqz v0, :cond_7

    .line 750
    new-instance v2, Lcom/android/settings/SettingsPreferenceFragment$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/SettingsPreferenceFragment$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/SettingsPreferenceFragment;Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {v1, v2}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    :cond_7
    return-void
.end method
