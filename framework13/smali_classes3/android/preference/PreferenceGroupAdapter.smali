.class public Landroid/preference/PreferenceGroupAdapter;
.super Landroid/widget/BaseAdapter;
.source "PreferenceGroupAdapter.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeInternalListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "PreferenceGroupAdapter"

.field private static greylist-max-o sWrapperLayoutParams:Landroid/view/ViewGroup$LayoutParams;


# instance fields
.field private greylist-max-o mHandler:Landroid/os/Handler;

.field private greylist-max-o mHasReturnedViewTypeCount:Z

.field private greylist-max-o mHighlightedDrawable:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mHighlightedPosition:I

.field blacklist mIsCategoryAfter:Z

.field private volatile greylist-max-o mIsSyncing:Z

.field blacklist mNextGroupPreference:Landroid/preference/Preference;

.field blacklist mNextPreference:Landroid/preference/Preference;

.field private greylist-max-o mPreferenceGroup:Landroid/preference/PreferenceGroup;

.field private greylist-max-o mPreferenceLayouts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mPreferenceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mSyncRunnable:Ljava/lang/Runnable;

.field private greylist-max-o mTempPreferenceLayout:Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;


# direct methods
.method static bridge synthetic blacklist -$$Nest$msyncMyPreferences(Landroid/preference/PreferenceGroupAdapter;)V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceGroupAdapter;->syncMyPreferences()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    .line 117
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    sput-object v0, Landroid/preference/PreferenceGroupAdapter;->sWrapperLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/preference/PreferenceGroup;)V
    .locals 2
    .param p1, "preferenceGroup"    # Landroid/preference/PreferenceGroup;

    .line 143
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 91
    new-instance v0, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;-><init>(Landroid/preference/PreferenceGroupAdapter$PreferenceLayout-IA;)V

    iput-object v0, p0, Landroid/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/preference/PreferenceGroupAdapter;->mHasReturnedViewTypeCount:Z

    .line 99
    iput-boolean v0, p0, Landroid/preference/PreferenceGroupAdapter;->mIsCategoryAfter:Z

    .line 100
    iput-object v1, p0, Landroid/preference/PreferenceGroupAdapter;->mNextPreference:Landroid/preference/Preference;

    .line 101
    iput-object v1, p0, Landroid/preference/PreferenceGroupAdapter;->mNextGroupPreference:Landroid/preference/Preference;

    .line 104
    iput-boolean v0, p0, Landroid/preference/PreferenceGroupAdapter;->mIsSyncing:Z

    .line 106
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/preference/PreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    .line 108
    new-instance v0, Landroid/preference/PreferenceGroupAdapter$1;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceGroupAdapter$1;-><init>(Landroid/preference/PreferenceGroupAdapter;)V

    iput-object v0, p0, Landroid/preference/PreferenceGroupAdapter;->mSyncRunnable:Ljava/lang/Runnable;

    .line 114
    const/4 v0, -0x1

    iput v0, p0, Landroid/preference/PreferenceGroupAdapter;->mHighlightedPosition:I

    .line 144
    iput-object p1, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceGroup:Landroid/preference/PreferenceGroup;

    .line 146
    invoke-virtual {p1, p0}, Landroid/preference/PreferenceGroup;->setOnPreferenceChangeInternalListener(Landroid/preference/Preference$OnPreferenceChangeInternalListener;)V

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/ArrayList;

    .line 151
    invoke-direct {p0}, Landroid/preference/PreferenceGroupAdapter;->syncMyPreferences()V

    .line 152
    return-void
.end method

.method private greylist-max-o addPreferenceClassName(Landroid/preference/Preference;)V
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .line 279
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/PreferenceGroupAdapter;->createPreferenceLayout(Landroid/preference/Preference;Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;)Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    move-result-object v0

    .line 280
    .local v0, "pl":Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;
    iget-object v1, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/ArrayList;

    invoke-static {v1, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v1

    .line 283
    .local v1, "insertPos":I
    if-gez v1, :cond_0

    .line 285
    mul-int/lit8 v2, v1, -0x1

    add-int/lit8 v1, v2, -0x1

    .line 286
    iget-object v2, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 288
    :cond_0
    return-void
.end method

.method private greylist-max-o createPreferenceLayout(Landroid/preference/Preference;Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;)Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "in"    # Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    .line 271
    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;-><init>(Landroid/preference/PreferenceGroupAdapter$PreferenceLayout-IA;)V

    .line 272
    .local v0, "pl":Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;->-$$Nest$fputname(Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;Ljava/lang/String;)V

    .line 273
    invoke-virtual {p1}, Landroid/preference/Preference;->getLayoutResource()I

    move-result v1

    invoke-static {v0, v1}, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;->-$$Nest$fputresId(Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;I)V

    .line 274
    invoke-virtual {p1}, Landroid/preference/Preference;->getWidgetLayoutResource()I

    move-result v1

    invoke-static {v0, v1}, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;->-$$Nest$fputwidgetResId(Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;I)V

    .line 275
    return-object v0
.end method

.method private greylist-max-o flattenPreferenceGroup(Ljava/util/List;Landroid/preference/PreferenceGroup;)V
    .locals 8
    .param p2, "group"    # Landroid/preference/PreferenceGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/preference/Preference;",
            ">;",
            "Landroid/preference/PreferenceGroup;",
            ")V"
        }
    .end annotation

    .line 183
    .local p1, "preferences":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    invoke-virtual {p2}, Landroid/preference/PreferenceGroup;->sortPreferences()V

    .line 185
    invoke-virtual {p2}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 186
    .local v0, "groupSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_f

    .line 187
    invoke-virtual {p2, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 190
    .local v2, "preference":Landroid/preference/Preference;
    if-nez v2, :cond_0

    goto/16 :goto_5

    .line 194
    :cond_0
    sget-boolean v3, Landroid/view/View;->sIsSamsungBasicInteraction:Z

    if-eqz v3, :cond_a

    .line 195
    add-int/lit8 v3, v0, -0x1

    const/4 v4, 0x0

    if-ne v1, v3, :cond_1

    .line 196
    iput-object v4, p0, Landroid/preference/PreferenceGroupAdapter;->mNextPreference:Landroid/preference/Preference;

    .line 197
    iget-boolean v3, p0, Landroid/preference/PreferenceGroupAdapter;->mIsCategoryAfter:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/preference/PreferenceGroupAdapter;->mNextGroupPreference:Landroid/preference/Preference;

    if-ne v2, v3, :cond_2

    .line 198
    iput-object v4, p0, Landroid/preference/PreferenceGroupAdapter;->mNextGroupPreference:Landroid/preference/Preference;

    goto :goto_1

    .line 201
    :cond_1
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p2, v3}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Landroid/preference/PreferenceGroupAdapter;->mNextPreference:Landroid/preference/Preference;

    .line 202
    iget-object v3, p0, Landroid/preference/PreferenceGroupAdapter;->mNextGroupPreference:Landroid/preference/Preference;

    if-ne v2, v3, :cond_2

    .line 203
    iput-object v4, p0, Landroid/preference/PreferenceGroupAdapter;->mNextGroupPreference:Landroid/preference/Preference;

    .line 207
    :cond_2
    :goto_1
    instance-of v3, v2, Landroid/preference/PreferenceCategory;

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    .line 208
    iput-boolean v4, p0, Landroid/preference/PreferenceGroupAdapter;->mIsCategoryAfter:Z

    goto :goto_3

    .line 210
    :cond_3
    iget-boolean v3, p0, Landroid/preference/PreferenceGroupAdapter;->mIsCategoryAfter:Z

    const/4 v5, 0x0

    if-eqz v3, :cond_5

    iget-object v6, p0, Landroid/preference/PreferenceGroupAdapter;->mNextPreference:Landroid/preference/Preference;

    instance-of v7, v6, Landroid/preference/PreferenceCategory;

    if-nez v7, :cond_4

    if-nez v6, :cond_5

    iget-object v6, p0, Landroid/preference/PreferenceGroupAdapter;->mNextGroupPreference:Landroid/preference/Preference;

    instance-of v7, v6, Landroid/preference/PreferenceCategory;

    if-nez v7, :cond_4

    if-nez v6, :cond_5

    .line 212
    :cond_4
    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setRoundCorner(I)V

    .line 213
    iput-boolean v5, p0, Landroid/preference/PreferenceGroupAdapter;->mIsCategoryAfter:Z

    goto :goto_3

    .line 214
    :cond_5
    if-eqz v3, :cond_6

    .line 215
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setRoundCorner(I)V

    .line 216
    iput-boolean v5, p0, Landroid/preference/PreferenceGroupAdapter;->mIsCategoryAfter:Z

    goto :goto_3

    .line 217
    :cond_6
    iget-object v3, p0, Landroid/preference/PreferenceGroupAdapter;->mNextPreference:Landroid/preference/Preference;

    instance-of v6, v3, Landroid/preference/PreferenceCategory;

    if-nez v6, :cond_9

    if-nez v3, :cond_7

    iget-object v6, p0, Landroid/preference/PreferenceGroupAdapter;->mNextGroupPreference:Landroid/preference/Preference;

    instance-of v6, v6, Landroid/preference/PreferenceCategory;

    if-nez v6, :cond_9

    :cond_7
    iget-object v6, p0, Landroid/preference/PreferenceGroupAdapter;->mNextGroupPreference:Landroid/preference/Preference;

    if-eq v2, v6, :cond_9

    if-nez v3, :cond_8

    if-nez v6, :cond_8

    goto :goto_2

    .line 223
    :cond_8
    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setRoundCorner(I)V

    goto :goto_3

    .line 220
    :cond_9
    :goto_2
    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setRoundCorner(I)V

    .line 221
    iput-boolean v4, p0, Landroid/preference/PreferenceGroupAdapter;->mIsCategoryAfter:Z

    .line 227
    :goto_3
    iget-boolean v3, p2, Landroid/preference/PreferenceGroup;->mIsChangedCategoryBG:Z

    if-eqz v3, :cond_a

    .line 228
    iget v3, p2, Landroid/preference/PreferenceGroup;->mCategoryBGColor:I

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setCategoryBGColor(I)V

    .line 233
    :cond_a
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    sget-boolean v3, Landroid/view/View;->sIsSamsungBasicInteraction:Z

    if-eqz v3, :cond_c

    instance-of v3, v2, Landroid/preference/PreferenceCategory;

    if-eqz v3, :cond_c

    .line 237
    invoke-virtual {v2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 238
    const v3, 0x10901b9

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setLayoutResource(I)V

    goto :goto_4

    .line 240
    :cond_b
    const v3, 0x10901b8

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 245
    :cond_c
    :goto_4
    iget-boolean v3, p0, Landroid/preference/PreferenceGroupAdapter;->mHasReturnedViewTypeCount:Z

    if-nez v3, :cond_d

    if-eqz v2, :cond_d

    .line 247
    invoke-virtual {v2}, Landroid/preference/Preference;->isRecycleEnabled()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 248
    invoke-direct {p0, v2}, Landroid/preference/PreferenceGroupAdapter;->addPreferenceClassName(Landroid/preference/Preference;)V

    .line 251
    :cond_d
    instance-of v3, v2, Landroid/preference/PreferenceGroup;

    if-eqz v3, :cond_e

    .line 252
    move-object v3, v2

    check-cast v3, Landroid/preference/PreferenceGroup;

    .line 253
    .local v3, "preferenceAsGroup":Landroid/preference/PreferenceGroup;
    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->isOnSameScreenAsChildren()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 255
    iget-object v4, p0, Landroid/preference/PreferenceGroupAdapter;->mNextPreference:Landroid/preference/Preference;

    iput-object v4, p0, Landroid/preference/PreferenceGroupAdapter;->mNextGroupPreference:Landroid/preference/Preference;

    .line 257
    invoke-direct {p0, p1, v3}, Landroid/preference/PreferenceGroupAdapter;->flattenPreferenceGroup(Ljava/util/List;Landroid/preference/PreferenceGroup;)V

    .line 261
    .end local v3    # "preferenceAsGroup":Landroid/preference/PreferenceGroup;
    :cond_e
    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeInternalListener(Landroid/preference/Preference$OnPreferenceChangeInternalListener;)V

    .line 186
    .end local v2    # "preference":Landroid/preference/Preference;
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 263
    .end local v1    # "i":I
    :cond_f
    return-void
.end method

.method private greylist-max-o getHighlightItemViewType()I
    .locals 1

    .line 369
    invoke-virtual {p0}, Landroid/preference/PreferenceGroupAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private greylist-max-o syncMyPreferences()V
    .locals 3

    .line 155
    monitor-enter p0

    .line 156
    :try_start_0
    iget-boolean v0, p0, Landroid/preference/PreferenceGroupAdapter;->mIsSyncing:Z

    if-eqz v0, :cond_0

    .line 157
    monitor-exit p0

    return-void

    .line 160
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/preference/PreferenceGroupAdapter;->mIsSyncing:Z

    .line 161
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/preference/PreferenceGroupAdapter;->mIsCategoryAfter:Z

    .line 165
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/preference/PreferenceGroupAdapter;->mNextPreference:Landroid/preference/Preference;

    .line 166
    iput-object v1, p0, Landroid/preference/PreferenceGroupAdapter;->mNextGroupPreference:Landroid/preference/Preference;

    .line 169
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 170
    .local v1, "newPreferenceList":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    iget-object v2, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceGroup:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1, v2}, Landroid/preference/PreferenceGroupAdapter;->flattenPreferenceGroup(Ljava/util/List;Landroid/preference/PreferenceGroup;)V

    .line 171
    iput-object v1, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    .line 173
    invoke-virtual {p0}, Landroid/preference/PreferenceGroupAdapter;->notifyDataSetChanged()V

    .line 175
    monitor-enter p0

    .line 176
    :try_start_1
    iput-boolean v0, p0, Landroid/preference/PreferenceGroupAdapter;->mIsSyncing:Z

    .line 177
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 178
    monitor-exit p0

    .line 179
    return-void

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 161
    .end local v1    # "newPreferenceList":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method


# virtual methods
.method public whitelist areAllItemsEnabled()Z
    .locals 1

    .line 351
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCount()I
    .locals 1

    .line 291
    iget-object v0, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public greylist getItem(I)Landroid/preference/Preference;
    .locals 1
    .param p1, "position"    # I

    .line 296
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Landroid/preference/PreferenceGroupAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 297
    :cond_0
    iget-object v0, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    return-object v0

    .line 296
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic whitelist getItem(I)Ljava/lang/Object;
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceGroupAdapter;->getItem(I)Landroid/preference/Preference;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 301
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Landroid/preference/PreferenceGroupAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 302
    :cond_0
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceGroupAdapter;->getItem(I)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/Preference;->getId()J

    move-result-wide v0

    return-wide v0

    .line 301
    :cond_1
    :goto_0
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public whitelist getItemViewType(I)I
    .locals 4
    .param p1, "position"    # I

    .line 374
    iget v0, p0, Landroid/preference/PreferenceGroupAdapter;->mHighlightedPosition:I

    if-ne p1, v0, :cond_0

    .line 375
    invoke-direct {p0}, Landroid/preference/PreferenceGroupAdapter;->getHighlightItemViewType()I

    move-result v0

    return v0

    .line 378
    :cond_0
    iget-boolean v0, p0, Landroid/preference/PreferenceGroupAdapter;->mHasReturnedViewTypeCount:Z

    if-nez v0, :cond_1

    .line 379
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/preference/PreferenceGroupAdapter;->mHasReturnedViewTypeCount:Z

    .line 382
    :cond_1
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceGroupAdapter;->getItem(I)Landroid/preference/Preference;

    move-result-object v0

    .line 383
    .local v0, "preference":Landroid/preference/Preference;
    invoke-virtual {v0}, Landroid/preference/Preference;->isRecycleEnabled()Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_2

    .line 384
    return v2

    .line 387
    :cond_2
    iget-object v1, p0, Landroid/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    invoke-direct {p0, v0, v1}, Landroid/preference/PreferenceGroupAdapter;->createPreferenceLayout(Landroid/preference/Preference;Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;)Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    .line 389
    iget-object v3, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/ArrayList;

    invoke-static {v3, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v1

    .line 390
    .local v1, "viewType":I
    if-gez v1, :cond_3

    .line 393
    return v2

    .line 395
    :cond_3
    return v1
.end method

.method public whitelist getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 320
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceGroupAdapter;->getItem(I)Landroid/preference/Preference;

    move-result-object v0

    .line 322
    .local v0, "preference":Landroid/preference/Preference;
    iget-object v1, p0, Landroid/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    invoke-direct {p0, v0, v1}, Landroid/preference/PreferenceGroupAdapter;->createPreferenceLayout(Landroid/preference/Preference;Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;)Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    .line 326
    iget-object v2, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/ArrayList;

    invoke-static {v2, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 327
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceGroupAdapter;->getItemViewType(I)I

    move-result v1

    invoke-direct {p0}, Landroid/preference/PreferenceGroupAdapter;->getHighlightItemViewType()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 328
    :cond_0
    const/4 p2, 0x0

    .line 330
    :cond_1
    invoke-virtual {v0, p2, p3}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 331
    .local v1, "result":Landroid/view/View;
    iget v2, p0, Landroid/preference/PreferenceGroupAdapter;->mHighlightedPosition:I

    if-ne p1, v2, :cond_2

    iget-object v2, p0, Landroid/preference/PreferenceGroupAdapter;->mHighlightedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    .line 332
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 333
    .local v2, "wrapper":Landroid/view/ViewGroup;
    sget-object v3, Landroid/preference/PreferenceGroupAdapter;->sWrapperLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 334
    iget-object v3, p0, Landroid/preference/PreferenceGroupAdapter;->mHighlightedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 335
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 336
    move-object v1, v2

    .line 338
    .end local v2    # "wrapper":Landroid/view/ViewGroup;
    :cond_2
    return-object v1
.end method

.method public whitelist getViewTypeCount()I
    .locals 2

    .line 401
    iget-boolean v0, p0, Landroid/preference/PreferenceGroupAdapter;->mHasReturnedViewTypeCount:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 402
    iput-boolean v1, p0, Landroid/preference/PreferenceGroupAdapter;->mHasReturnedViewTypeCount:Z

    .line 405
    :cond_0
    iget-object v0, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist hasStableIds()Z
    .locals 1

    .line 365
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .line 343
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Landroid/preference/PreferenceGroupAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 344
    :cond_0
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceGroupAdapter;->getItem(I)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/Preference;->isSelectable()Z

    move-result v0

    return v0

    .line 343
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public greylist-max-o onPreferenceChange(Landroid/preference/Preference;)V
    .locals 0
    .param p1, "preference"    # Landroid/preference/Preference;

    .line 355
    invoke-virtual {p0}, Landroid/preference/PreferenceGroupAdapter;->notifyDataSetChanged()V

    .line 356
    return-void
.end method

.method public greylist-max-o onPreferenceHierarchyChange(Landroid/preference/Preference;)V
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .line 359
    iget-object v0, p0, Landroid/preference/PreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/preference/PreferenceGroupAdapter;->mSyncRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 360
    iget-object v0, p0, Landroid/preference/PreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/preference/PreferenceGroupAdapter;->mSyncRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 361
    return-void
.end method

.method public greylist-max-o setHighlighted(I)V
    .locals 0
    .param p1, "position"    # I

    .line 309
    iput p1, p0, Landroid/preference/PreferenceGroupAdapter;->mHighlightedPosition:I

    .line 310
    return-void
.end method

.method public greylist-max-o setHighlightedDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 316
    iput-object p1, p0, Landroid/preference/PreferenceGroupAdapter;->mHighlightedDrawable:Landroid/graphics/drawable/Drawable;

    .line 317
    return-void
.end method
