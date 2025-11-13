.class public Lcom/android/internal/app/LocalePicker;
.super Landroid/app/ListFragment;
.source "LocalePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/LocalePicker$LocaleInfo;,
        Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "LocalePicker"

.field private static final blacklist pseudoLocales:[Ljava/lang/String;


# instance fields
.field blacklist mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 70
    const-string v0, "en-XA"

    const-string v1, "ar-XB"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/LocalePicker;->pseudoLocales:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    return-void
.end method

.method public static blacklist constructAdapter(Landroid/content/Context;)Landroid/widget/ArrayAdapter;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/widget/ArrayAdapter<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation

    .line 234
    const v0, 0x10900b7

    const v1, 0x10203b7

    invoke-static {p0, v0, v1}, Lcom/android/internal/app/LocalePicker;->constructAdapter(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist constructAdapter(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "layoutId"    # I
    .param p2, "fieldId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Landroid/widget/ArrayAdapter<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation

    .line 239
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "development_settings_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    move v0, v2

    .line 241
    .local v0, "isInDeveloperMode":Z
    invoke-static {p0, v0}, Lcom/android/internal/app/LocalePicker;->getAllAssetLocales(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v9

    .line 243
    .local v9, "localeInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    nop

    .line 244
    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/view/LayoutInflater;

    .line 245
    .local v10, "inflater":Landroid/view/LayoutInflater;
    new-instance v11, Lcom/android/internal/app/LocalePicker$1;

    move-object v1, v11

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, v9

    move-object v6, v10

    move v7, p1

    move v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/app/LocalePicker$1;-><init>(Landroid/content/Context;IILjava/util/List;Landroid/view/LayoutInflater;II)V

    return-object v11
.end method

.method public static blacklist getAllAssetLocales(Landroid/content/Context;Z)Ljava/util/List;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isInDeveloperMode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation

    .line 165
    invoke-static {p0}, Lcom/android/internal/app/LocaleStore;->getAllLocaleInfos(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getDIDLocale(Landroid/content/Context;)[Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 144
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10701a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "l"    # Ljava/util/Locale;
    .param p1, "specialLocaleCodes"    # [Ljava/lang/String;
    .param p2, "specialLocaleNames"    # [Ljava/lang/String;

    .line 277
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, "code":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 280
    aget-object v2, p1, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 281
    aget-object v2, p2, v1

    return-object v2

    .line 279
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 285
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p0, p0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist getLocaleFilter()Ljava/util/function/Predicate;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 151
    const-string v0, "LocalePicker"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Landroid/sysprop/LocalizationProperties;->locale_filter()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/android/internal/app/LocalePicker$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/android/internal/app/LocalePicker$$ExternalSyntheticLambda0;-><init>()V

    .line 152
    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    .line 153
    invoke-virtual {v2, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/function/Predicate;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    return-object v2

    .line 156
    :catch_0
    move-exception v2

    .line 157
    .local v2, "e":Ljava/util/regex/PatternSyntaxException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad locale filter format (\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/regex/PatternSyntaxException;->getPattern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"), skipping."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 154
    .end local v2    # "e":Ljava/util/regex/PatternSyntaxException;
    :catch_1
    move-exception v2

    .line 155
    .local v2, "e":Ljava/lang/SecurityException;
    const-string v3, "Failed to read locale filter."

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    .end local v2    # "e":Ljava/lang/SecurityException;
    nop

    .line 160
    :goto_0
    return-object v1
.end method

.method public static greylist getLocales()Landroid/os/LocaleList;
    .locals 2

    .line 392
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 393
    invoke-interface {v0}, Landroid/app/IActivityManager;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    return-object v0

    .line 394
    :catch_0
    move-exception v0

    .line 396
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getPseudoLocales()[Ljava/lang/String;
    .locals 1

    .line 140
    sget-object v0, Lcom/android/internal/app/LocalePicker;->pseudoLocales:[Ljava/lang/String;

    return-object v0
.end method

.method public static blacklist getSpecificCustomerSupportedLocales(Landroid/content/Context;)[Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 136
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10701ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getSupportedLocales(Landroid/content/Context;)[Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 115
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10701ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "allLocales":[Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/app/LocalePicker;->getLocaleFilter()Ljava/util/function/Predicate;

    move-result-object v1

    .line 118
    .local v1, "localeFilter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Ljava/lang/String;>;"
    if-nez v1, :cond_0

    .line 119
    return-object v0

    .line 122
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 123
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v0, v4

    .line 124
    .local v5, "locale":Ljava/lang/String;
    invoke-interface {v1, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 125
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    .end local v5    # "locale":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 129
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 130
    .local v3, "localeCount":I
    array-length v4, v0

    if-ne v3, v4, :cond_3

    move-object v4, v0

    goto :goto_1

    .line 131
    :cond_3
    new-array v4, v3, [Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 130
    :goto_1
    return-object v4
.end method

.method public static blacklist getSystemAssetLocales()[Ljava/lang/String;
    .locals 1

    .line 111
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$getLocaleFilter$0(Ljava/lang/String;)Ljava/util/function/Predicate;
    .locals 1
    .param p0, "filter"    # Ljava/lang/String;

    .line 152
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Pattern;->asPredicate()Ljava/util/function/Predicate;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist removeExcludedLocales(Landroid/os/LocaleList;)Landroid/os/LocaleList;
    .locals 6
    .param p0, "locales"    # Landroid/os/LocaleList;

    .line 366
    invoke-static {}, Lcom/android/internal/app/LocalePicker;->getLocaleFilter()Ljava/util/function/Predicate;

    move-result-object v0

    .line 367
    .local v0, "localeFilter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 368
    return-object p0

    .line 371
    :cond_0
    invoke-virtual {p0}, Landroid/os/LocaleList;->size()I

    move-result v1

    .line 372
    .local v1, "localeCount":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 373
    .local v2, "filteredLocales":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Locale;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 374
    invoke-virtual {p0, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v4

    .line 375
    .local v4, "locale":Ljava/util/Locale;
    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 376
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    .end local v4    # "locale":Ljava/util/Locale;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 380
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v1, v3, :cond_3

    move-object v3, p0

    goto :goto_1

    .line 381
    :cond_3
    new-instance v3, Landroid/os/LocaleList;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/util/Locale;

    invoke-direct {v3, v4}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    .line 380
    :goto_1
    return-object v3
.end method

.method private static blacklist toTitleCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .line 268
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 269
    return-object p0

    .line 272
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static greylist updateLocale(Ljava/util/Locale;)V
    .locals 3
    .param p0, "locale"    # Ljava/util/Locale;

    .line 327
    new-instance v0, Landroid/os/LocaleList;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/Locale;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-direct {v0, v1}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    invoke-static {v0}, Lcom/android/internal/app/LocalePicker;->updateLocales(Landroid/os/LocaleList;)V

    .line 328
    return-void
.end method

.method public static greylist updateLocales(Landroid/os/LocaleList;)V
    .locals 4
    .param p0, "locales"    # Landroid/os/LocaleList;

    .line 337
    if-eqz p0, :cond_0

    .line 338
    invoke-static {p0}, Lcom/android/internal/app/LocalePicker;->removeExcludedLocales(Landroid/os/LocaleList;)Landroid/os/LocaleList;

    move-result-object p0

    .line 343
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 344
    .local v0, "am":Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 346
    .local v1, "config":Landroid/content/res/Configuration;
    invoke-virtual {v1, p0}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 347
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 351
    nop

    .line 352
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 351
    invoke-interface {v0, v1, v2, v3, p0}, Landroid/app/IActivityManager;->updatePersistentConfigurationAndLocaleOverlays(Landroid/content/res/Configuration;Ljava/lang/String;Ljava/lang/String;Landroid/os/LocaleList;)V

    .line 358
    const-string v2, "com.android.providers.settings"

    invoke-static {v2}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v1    # "config":Landroid/content/res/Configuration;
    goto :goto_0

    .line 359
    :catch_0
    move-exception v0

    .line 362
    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 290
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 291
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/LocalePicker;->constructAdapter(Landroid/content/Context;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 292
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    invoke-virtual {p0, v0}, Lcom/android/internal/app/LocalePicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 293
    return-void
.end method

.method public whitelist onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .line 313
    iget-object v0, p0, Lcom/android/internal/app/LocalePicker;->mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;

    if-eqz v0, :cond_0

    .line 314
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    iget-object v0, v0, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    .line 315
    .local v0, "locale":Ljava/util/Locale;
    iget-object v1, p0, Lcom/android/internal/app/LocalePicker;->mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;

    invoke-interface {v1, v0}, Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;->onLocaleSelected(Ljava/util/Locale;)V

    .line 317
    .end local v0    # "locale":Ljava/util/Locale;
    :cond_0
    return-void
.end method

.method public whitelist onResume()V
    .locals 1

    .line 301
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 302
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 303
    return-void
.end method

.method public blacklist setLocaleSelectionListener(Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;

    .line 296
    iput-object p1, p0, Lcom/android/internal/app/LocalePicker;->mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;

    .line 297
    return-void
.end method
