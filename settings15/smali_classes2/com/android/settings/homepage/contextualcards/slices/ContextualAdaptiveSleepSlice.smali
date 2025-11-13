.class public Lcom/android/settings/homepage/contextualcards/slices/ContextualAdaptiveSleepSlice;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/slices/CustomSliceable;


# static fields
.field static final DEFERRED_TIME_DAYS:J

.field static final PREF_KEY_SETUP_TIME:Ljava/lang/String; = "adaptive_sleep_setup_time"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/settings/homepage/contextualcards/slices/ContextualAdaptiveSleepSlice;->DEFERRED_TIME_DAYS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/ContextualAdaptiveSleepSlice;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getIntent()Landroid/content/Intent;
    .locals 8

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/ContextualAdaptiveSleepSlice;->mContext:Landroid/content/Context;

    const v1, 0x7f14027a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    sget-object v2, Lcom/android/settings/display/ScreenTimeoutPreferenceController;->PREF_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/homepage/contextualcards/slices/ContextualAdaptiveSleepSlice;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/settings/display/ScreenTimeoutSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/settings/display/ScreenTimeoutPreferenceController;->PREF_NAME:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    const v3, 0x7f1417c0

    const/16 v2, 0x579

    invoke-static/range {v2 .. v7}, Lcom/android/settings/slices/SliceBuilderUtils;->buildSearchResultPageIntent(IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/ContextualAdaptiveSleepSlice;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-class v2, Lcom/android/settings/SubSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public final getSlice()Landroidx/slice/Slice;
    .locals 11

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/ContextualAdaptiveSleepSlice;->mContext:Landroid/content/Context;

    const-string v1, "adaptive_sleep_slice"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "adaptive_sleep_setup_time"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long v0, v6, v4

    const/4 v6, 0x0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/ContextualAdaptiveSleepSlice;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {p0, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-object v6

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/slices/ContextualAdaptiveSleepSlice;->isSettingsAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/ContextualAdaptiveSleepSlice;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v7, "adaptive_sleep_interacted"

    invoke-interface {v0, v7, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sget-wide v9, Lcom/android/settings/homepage/contextualcards/slices/ContextualAdaptiveSleepSlice;->DEFERRED_TIME_DAYS:J

    sub-long/2addr v7, v9

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/ContextualAdaptiveSleepSlice;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v0, v0, v7

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/ContextualAdaptiveSleepSlice;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adaptive_sleep"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/ContextualAdaptiveSleepSlice;->mContext:Landroid/content/Context;

    const v1, 0x7f0805d2

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/ContextualAdaptiveSleepSlice;->mContext:Landroid/content/Context;

    const v3, 0x7f140275

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/slices/ContextualAdaptiveSleepSlice;->mContext:Landroid/content/Context;

    const v4, 0x7f140274

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/slices/ContextualAdaptiveSleepSlice;->getIntent()Landroid/content/Intent;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/homepage/contextualcards/slices/ContextualAdaptiveSleepSlice;->mContext:Landroid/content/Context;

    const/high16 v6, 0x4000000

    invoke-static {v5, v2, v4, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-static {v4, v0, v2, v1}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object v4

    new-instance v5, Landroidx/slice/builders/ListBuilder;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/ContextualAdaptiveSleepSlice;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/settings/slices/CustomSliceRegistry;->CONTEXTUAL_ADAPTIVE_SLEEP_URI:Landroid/net/Uri;

    invoke-direct {v5, p0, v6}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object p0, v5, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    const/4 v6, -0x1

    invoke-interface {p0, v6}, Landroidx/slice/builders/impl/ListBuilder;->setColor(I)V

    new-instance p0, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {p0}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitleItem(Landroidx/core/graphics/drawable/IconCompat;)V

    iput-object v1, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitle:Ljava/lang/CharSequence;

    iput-boolean v2, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitleLoading:Z

    iput-object v3, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mSubtitle:Ljava/lang/CharSequence;

    iput-boolean v2, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mSubtitleLoading:Z

    iput-object v4, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    iget-object v0, v5, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-interface {v0, p0}, Landroidx/slice/builders/impl/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)V

    invoke-virtual {v5}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    return-object v6
.end method

.method public final getSliceHighlightMenuRes()I
    .locals 0

    const p0, 0x7f1417c0

    return p0
.end method

.method public final getUri$1()Landroid/net/Uri;
    .locals 0

    sget-object p0, Lcom/android/settings/slices/CustomSliceRegistry;->CONTEXTUAL_ADAPTIVE_SLEEP_URI:Landroid/net/Uri;

    return-object p0
.end method

.method public isSettingsAvailable()Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/ContextualAdaptiveSleepSlice;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/display/AdaptiveSleepPreferenceController;->isAdaptiveSleepSupported(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method
