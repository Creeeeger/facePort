.class public abstract Landroid/preference/PreferenceFragment;
.super Landroid/app/Fragment;
.source "PreferenceFragment.java"

# interfaces
.implements Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final greylist-max-o FIRST_REQUEST_CODE:I = 0x64

.field private static final blacklist FONT_SCALE_LARGE:F = 1.3f

.field private static final blacklist FONT_SCALE_MEDIUM:F = 1.1f

.field private static final blacklist MAX_LOOP_COUNT:I = 0x64

.field private static final greylist-max-o MSG_BIND_PREFERENCES:I = 0x1

.field private static final greylist-max-o PREFERENCES_TAG:Ljava/lang/String; = "android:preferences"

.field private static final blacklist SAMSUNG_BASIC_INTERACTION_METADATA_NAME:Ljava/lang/String; = "SamsungBasicInteraction"

.field private static final blacklist SAMSUNG_BASIC_INTERACTION_METADATA_VALUE_SEP10:Ljava/lang/String; = "SEP10"

.field private static final blacklist SAMSUNG_BASIC_INTERACTION_METADATA_VALUE_SEP11:Ljava/lang/String; = "SEP11"

.field public static final blacklist TW_SWITCH_PREFERENCE_LAYOUT:I = 0x2

.field public static final blacklist TW_SWITCH_PREFERENCE_LAYOUT_LARGE:I = 0x1


# instance fields
.field private greylist-max-o mHandler:Landroid/os/Handler;

.field private greylist-max-o mHavePrefs:Z

.field private greylist-max-o mInitDone:Z

.field private blacklist mIsLargeLayout:I

.field private blacklist mIsMetaDataInActivity:Z

.field private greylist-max-o mLayoutResId:I

.field private greylist-max-o mList:Landroid/widget/ListView;

.field private greylist-max-o mListOnKeyListener:Landroid/view/View$OnKeyListener;

.field private greylist-max-r mPreferenceManager:Landroid/preference/PreferenceManager;

.field private final greylist-max-o mRequestFocus:Ljava/lang/Runnable;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmList(Landroid/preference/PreferenceFragment;)Landroid/widget/ListView;
    .locals 0

    iget-object p0, p0, Landroid/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mbindPreferences(Landroid/preference/PreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;->bindPreferences()V

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    .line 110
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 123
    sget-boolean v0, Landroid/view/View;->sIsSamsungBasicInteraction:Z

    iput-boolean v0, p0, Landroid/preference/PreferenceFragment;->mIsMetaDataInActivity:Z

    .line 136
    const v0, 0x1090105

    iput v0, p0, Landroid/preference/PreferenceFragment;->mLayoutResId:I

    .line 144
    new-instance v0, Landroid/preference/PreferenceFragment$1;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceFragment$1;-><init>(Landroid/preference/PreferenceFragment;)V

    iput-object v0, p0, Landroid/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    .line 156
    new-instance v0, Landroid/preference/PreferenceFragment$2;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceFragment$2;-><init>(Landroid/preference/PreferenceFragment;)V

    iput-object v0, p0, Landroid/preference/PreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    .line 537
    new-instance v0, Landroid/preference/PreferenceFragment$3;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceFragment$3;-><init>(Landroid/preference/PreferenceFragment;)V

    iput-object v0, p0, Landroid/preference/PreferenceFragment;->mListOnKeyListener:Landroid/view/View$OnKeyListener;

    return-void
.end method

.method private greylist-max-o bindPreferences()V
    .locals 5

    .line 441
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 442
    .local v0, "preferenceScreen":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_2

    .line 443
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 444
    .local v1, "root":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 445
    const v2, 0x1020016

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 446
    .local v2, "titleView":Landroid/view/View;
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 447
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    .line 448
    .local v3, "title":Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 449
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 451
    :cond_0
    move-object v4, v2

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 457
    .end local v2    # "titleView":Landroid/view/View;
    .end local v3    # "title":Ljava/lang/CharSequence;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->bind(Landroid/widget/ListView;)V

    .line 459
    .end local v1    # "root":Landroid/view/View;
    :cond_2
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->onBindPreferences()V

    .line 460
    return-void
.end method

.method private greylist-max-o ensureList()V
    .locals 4

    .line 514
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 515
    return-void

    .line 517
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 518
    .local v0, "root":Landroid/view/View;
    if-eqz v0, :cond_3

    .line 521
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 522
    .local v1, "rawListView":Landroid/view/View;
    instance-of v2, v1, Landroid/widget/ListView;

    if-eqz v2, :cond_2

    .line 527
    move-object v2, v1

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Landroid/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    .line 528
    if-eqz v2, :cond_1

    .line 533
    iget-object v3, p0, Landroid/preference/PreferenceFragment;->mListOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 534
    iget-object v2, p0, Landroid/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/preference/PreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 535
    return-void

    .line 529
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 523
    :cond_2
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Content has view with id attribute \'android.R.id.list\' that is not a ListView class"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 519
    .end local v1    # "rawListView":Landroid/view/View;
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Content view not yet created"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist getActivityContext(Landroid/content/Context;)Landroid/app/Activity;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 554
    const/4 v0, 0x0

    .line 555
    .local v0, "activity":Landroid/app/Activity;
    move-object v1, p1

    .line 556
    .local v1, "tempContext":Landroid/content/Context;
    const/4 v2, 0x0

    .line 558
    .local v2, "count":I
    :goto_0
    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    const/16 v3, 0x64

    if-ge v2, v3, :cond_2

    .line 559
    instance-of v3, v1, Landroid/app/Activity;

    if-eqz v3, :cond_0

    .line 560
    move-object v0, v1

    check-cast v0, Landroid/app/Activity;

    goto :goto_2

    .line 562
    :cond_0
    instance-of v3, v1, Landroid/content/ContextWrapper;

    if-eqz v3, :cond_1

    move-object v3, v1

    check-cast v3, Landroid/content/ContextWrapper;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    goto :goto_1

    .line 563
    :cond_1
    const/4 v3, 0x0

    :goto_1
    move-object v1, v3

    .line 565
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 567
    :cond_2
    return-object v0
.end method

.method private greylist-max-o postBindPreferences()V
    .locals 2

    .line 436
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 437
    :cond_0
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 438
    return-void
.end method

.method private greylist-max-o requirePreferenceManager()V
    .locals 2

    .line 430
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_0

    .line 433
    return-void

    .line 431
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This should be called after super.onCreate."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist addPreferencesFromIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 384
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;->requirePreferenceManager()V

    .line 386
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/preference/PreferenceManager;->inflateFromIntent(Landroid/content/Intent;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 387
    return-void
.end method

.method public whitelist addPreferencesFromResource(I)V
    .locals 3
    .param p1, "preferencesResId"    # I

    .line 396
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;->requirePreferenceManager()V

    .line 398
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 399
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 398
    invoke-virtual {v0, v1, p1, v2}, Landroid/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 400
    return-void
.end method

.method public whitelist findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;
    .locals 1
    .param p1, "key"    # Ljava/lang/CharSequence;

    .line 423
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-nez v0, :cond_0

    .line 424
    const/4 v0, 0x0

    return-object v0

    .line 426
    :cond_0
    invoke-virtual {v0, p1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    return-object v0
.end method

.method public greylist getListView()Landroid/widget/ListView;
    .locals 1

    .line 474
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;->ensureList()V

    .line 475
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method public whitelist getPreferenceManager()Landroid/preference/PreferenceManager;
    .locals 1

    .line 350
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    return-object v0
.end method

.method public whitelist getPreferenceScreen()Landroid/preference/PreferenceScreen;
    .locals 1

    .line 375
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o hasListView()Z
    .locals 5

    .line 495
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 496
    return v1

    .line 498
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 499
    .local v0, "root":Landroid/view/View;
    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 500
    return v2

    .line 502
    :cond_1
    const v3, 0x102000a

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 503
    .local v3, "rawListView":Landroid/view/View;
    instance-of v4, v3, Landroid/widget/ListView;

    if-nez v4, :cond_2

    .line 504
    return v2

    .line 506
    :cond_2
    move-object v4, v3

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Landroid/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    .line 507
    if-nez v4, :cond_3

    .line 508
    return v2

    .line 510
    :cond_3
    return v1
.end method

.method public whitelist onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 277
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 279
    iget-boolean v0, p0, Landroid/preference/PreferenceFragment;->mHavePrefs:Z

    if-eqz v0, :cond_0

    .line 280
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;->bindPreferences()V

    .line 283
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/preference/PreferenceFragment;->mInitDone:Z

    .line 285
    if-eqz p1, :cond_1

    .line 286
    const-string v0, "android:preferences"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 287
    .local v0, "container":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 288
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 289
    .local v1, "preferenceScreen":Landroid/preference/PreferenceScreen;
    if-eqz v1, :cond_1

    .line 290
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 294
    .end local v0    # "container":Landroid/os/Bundle;
    .end local v1    # "preferenceScreen":Landroid/preference/PreferenceScreen;
    :cond_1
    return-void
.end method

.method public whitelist onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 340
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 342
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/preference/PreferenceManager;->dispatchActivityResult(IILandroid/content/Intent;)V

    .line 343
    return-void
.end method

.method protected greylist-max-o onBindPreferences()V
    .locals 0

    .line 464
    return-void
.end method

.method public whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 183
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    if-eqz v0, :cond_8

    .line 184
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 185
    .local v0, "adapter":Landroid/widget/Adapter;
    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    const/16 v2, 0x140

    if-gt v1, v2, :cond_0

    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    const v2, 0x3f8ccccd    # 1.1f

    cmpl-float v1, v1, v2

    if-gez v1, :cond_1

    :cond_0
    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    const/16 v2, 0x19b

    if-ge v1, v2, :cond_2

    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    const v2, 0x3fa66666    # 1.3f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_2

    .line 187
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    .line 188
    .local v1, "isLargeLayout":I
    :goto_0
    iget-boolean v2, p0, Landroid/preference/PreferenceFragment;->mIsMetaDataInActivity:Z

    if-eqz v2, :cond_8

    instance-of v2, v0, Landroid/preference/PreferenceGroupAdapter;

    if-eqz v2, :cond_8

    iget v2, p0, Landroid/preference/PreferenceFragment;->mIsLargeLayout:I

    if-eq v1, v2, :cond_8

    .line 189
    iput v1, p0, Landroid/preference/PreferenceFragment;->mIsLargeLayout:I

    .line 190
    const/4 v2, 0x0

    .line 191
    .local v2, "hasSwitchPreference":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    move-object v4, v0

    check-cast v4, Landroid/preference/PreferenceGroupAdapter;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroupAdapter;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_7

    .line 192
    move-object v4, v0

    check-cast v4, Landroid/preference/PreferenceGroupAdapter;

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceGroupAdapter;->getItem(I)Landroid/preference/Preference;

    move-result-object v4

    .line 193
    .local v4, "preference":Landroid/preference/Preference;
    invoke-virtual {v4}, Landroid/preference/Preference;->getLayoutResource()I

    move-result v5

    .line 194
    .local v5, "currentLayoutId":I
    instance-of v6, v4, Landroid/preference/SwitchPreference;

    if-eqz v6, :cond_6

    .line 195
    const/4 v2, 0x1

    .line 196
    const v6, 0x10901cc

    const v7, 0x10901cb

    if-ne v5, v7, :cond_3

    .line 197
    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setLayoutResource(I)V

    goto :goto_2

    .line 198
    :cond_3
    if-ne v5, v6, :cond_4

    .line 199
    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setLayoutResource(I)V

    goto :goto_2

    .line 200
    :cond_4
    const v6, 0x10901c0

    const v7, 0x10901c1

    if-ne v5, v7, :cond_5

    .line 201
    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setLayoutResource(I)V

    goto :goto_2

    .line 202
    :cond_5
    if-ne v5, v6, :cond_6

    .line 203
    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 191
    .end local v4    # "preference":Landroid/preference/Preference;
    .end local v5    # "currentLayoutId":I
    :cond_6
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 207
    .end local v3    # "i":I
    :cond_7
    if-eqz v2, :cond_8

    .line 208
    move-object v3, v0

    check-cast v3, Landroid/preference/PreferenceGroupAdapter;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroupAdapter;->notifyDataSetChanged()V

    .line 212
    .end local v0    # "adapter":Landroid/widget/Adapter;
    .end local v1    # "isLargeLayout":I
    .end local v2    # "hasSwitchPreference":Z
    :cond_8
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 213
    return-void
.end method

.method public whitelist onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 217
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 218
    new-instance v0, Landroid/preference/PreferenceManager;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Landroid/preference/PreferenceManager;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    .line 219
    invoke-virtual {v0, p0}, Landroid/preference/PreferenceManager;->setFragment(Landroid/preference/PreferenceFragment;)V

    .line 221
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/preference/PreferenceFragment;->getActivityContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 222
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 223
    .local v1, "configuration":Landroid/content/res/Configuration;
    iget v2, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    const/4 v3, 0x1

    const/16 v4, 0x140

    if-gt v2, v4, :cond_0

    iget v2, v1, Landroid/content/res/Configuration;->fontScale:F

    const v4, 0x3f8ccccd    # 1.1f

    cmpl-float v2, v2, v4

    if-gez v2, :cond_1

    :cond_0
    iget v2, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    const/16 v4, 0x19b

    if-ge v2, v4, :cond_2

    iget v2, v1, Landroid/content/res/Configuration;->fontScale:F

    const v4, 0x3fa66666    # 1.3f

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_2

    .line 225
    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    :goto_0
    iput v2, p0, Landroid/preference/PreferenceFragment;->mIsLargeLayout:I

    .line 228
    if-eqz v0, :cond_5

    .line 229
    invoke-virtual {v0}, Landroid/app/Activity;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 230
    .local v2, "ai":Landroid/content/pm/ActivityInfo;
    if-eqz v2, :cond_5

    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_5

    .line 231
    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "SamsungBasicInteraction"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 232
    .local v4, "data":Ljava/lang/String;
    const-string v5, "SEP10"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 233
    const-string v5, "SEP11"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    nop

    :goto_2
    iput-boolean v3, p0, Landroid/preference/PreferenceFragment;->mIsMetaDataInActivity:Z

    .line 237
    .end local v2    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v4    # "data":Ljava/lang/String;
    :cond_5
    return-void
.end method

.method public whitelist onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 243
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->PreferenceFragment:[I

    const/4 v2, 0x0

    const v3, 0x1010506

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/app/Activity;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 248
    .local v0, "a":Landroid/content/res/TypedArray;
    iget v1, p0, Landroid/preference/PreferenceFragment;->mLayoutResId:I

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/preference/PreferenceFragment;->mLayoutResId:I

    .line 251
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 253
    iget v1, p0, Landroid/preference/PreferenceFragment;->mLayoutResId:I

    invoke-virtual {p1, v1, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public whitelist onDestroy()V
    .locals 1

    .line 322
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 323
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->dispatchActivityDestroy()V

    .line 324
    return-void
.end method

.method public whitelist onDestroyView()V
    .locals 2

    .line 311
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 314
    :cond_0
    iput-object v1, p0, Landroid/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    .line 315
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/preference/PreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 316
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 317
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 318
    return-void
.end method

.method public whitelist onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .line 407
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 408
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;

    if-eqz v0, :cond_0

    .line 409
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;

    invoke-interface {v0, p0, p2}, Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;->onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 412
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 328
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 330
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 331
    .local v0, "preferenceScreen":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 332
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 333
    .local v1, "container":Landroid/os/Bundle;
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 334
    const-string v2, "android:preferences"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 336
    .end local v1    # "container":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public whitelist onStart()V
    .locals 1

    .line 298
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 299
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceManager;->setOnPreferenceTreeClickListener(Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;)V

    .line 300
    return-void
.end method

.method public whitelist onStop()V
    .locals 2

    .line 304
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 305
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->dispatchActivityStop()V

    .line 306
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->setOnPreferenceTreeClickListener(Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;)V

    .line 307
    return-void
.end method

.method protected greylist-max-o onUnbindPreferences()V
    .locals 0

    .line 468
    return-void
.end method

.method public whitelist onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 258
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 260
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->PreferenceFragment:[I

    const/4 v2, 0x0

    const v3, 0x1010506

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/app/Activity;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 265
    .local v0, "a":Landroid/content/res/TypedArray;
    const v1, 0x102000a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 266
    .local v1, "lv":Landroid/widget/ListView;
    if-eqz v1, :cond_0

    .line 267
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 268
    nop

    .line 269
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 268
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 272
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 273
    return-void
.end method

.method public whitelist semGetListView()Landroid/widget/ListView;
    .locals 1

    .line 489
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setPreferenceScreen(Landroid/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;

    .line 359
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceManager;->setPreferences(Landroid/preference/PreferenceScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 360
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->onUnbindPreferences()V

    .line 361
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/preference/PreferenceFragment;->mHavePrefs:Z

    .line 362
    iget-boolean v0, p0, Landroid/preference/PreferenceFragment;->mInitDone:Z

    if-eqz v0, :cond_0

    .line 363
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;->postBindPreferences()V

    .line 366
    :cond_0
    return-void
.end method
