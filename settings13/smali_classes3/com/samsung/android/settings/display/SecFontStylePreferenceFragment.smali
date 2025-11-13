.class public Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SecFontStylePreferenceFragment.java"

# interfaces
.implements Lcom/samsung/android/settings/flipfont/FontListAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;,
        Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$VerticalLineItemDecoration;
    }
.end annotation


# instance fields
.field private mCallbackFromDownloadFont:Z

.field private mContext:Landroid/content/Context;

.field private mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

.field private mFontStyleListView:Landroidx/recyclerview/widget/RecyclerView;

.field private mIsRunLoadListTask:Z

.field private mIsSelectedCurrentThemeFont:Z

.field private mLoadListTask:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;

.field private mPreviousFont:I

.field private mResources:Landroid/content/res/Resources;

.field private mSavedClickedItem:I

.field private mSelectedFontStyleItemIndex:I

.field private mUninstallFontsPackageName:Ljava/lang/String;

.field private mWarningDialog:Landroid/app/AlertDialog;

.field private final mWarningDialogClickListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public static synthetic $r8$lambda$1vGhVLI5QU6UQqo3ppFnCPTN2Hg(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->lambda$showWarningDialog$2(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FoQ7Kq9lo-AiEtAxZC2uV7VV2jw(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->lambda$new$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$vEEkm0ROa_3k1AmvDL1I0tL4Spw(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;Landroid/app/IActivityManager;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->lambda$applyFontStyleInternal$0(Landroid/app/IActivityManager;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFontListAdapter(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;)Lcom/samsung/android/settings/flipfont/FontListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmResources(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;)Landroid/content/res/Resources;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mResources:Landroid/content/res/Resources;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmFontListAdapter(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;Lcom/samsung/android/settings/flipfont/FontListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsRunLoadListTask(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mIsRunLoadListTask:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$msetFontStyleList(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->setFontStyleList()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, -0x1

    .line 68
    iput v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mPreviousFont:I

    .line 70
    iput v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mSelectedFontStyleItemIndex:I

    .line 72
    iput v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mSavedClickedItem:I

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mIsRunLoadListTask:Z

    .line 77
    iput-boolean v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mCallbackFromDownloadFont:Z

    const/4 v1, 0x0

    .line 78
    iput-object v1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mLoadListTask:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;

    .line 80
    iput-boolean v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mIsSelectedCurrentThemeFont:Z

    const-string v0, ""

    .line 83
    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mUninstallFontsPackageName:Ljava/lang/String;

    .line 502
    new-instance v0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mWarningDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method private applyFontStyle()V
    .locals 2

    const-string v0, "SecFontStylePreferenceFragment"

    const-string v1, "applyFontStyle"

    .line 292
    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->savePreferences()V

    .line 295
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->applyFontStyleInternal()Z

    return-void
.end method

.method private applyFontStyleInternal()Z
    .locals 18

    move-object/from16 v7, p0

    .line 334
    iget-boolean v0, v7, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mIsSelectedCurrentThemeFont:Z

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, v7, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getThemeFontCurrentPath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    .line 337
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 338
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0, v9, v1}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v0

    .line 339
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "#Theme"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "persist.sys.flipfontpath"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 343
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOkButtonPressed : mClickedItem : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v7, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mSelectedFontStyleItemIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v10, "SecFontStylePreferenceFragment"

    invoke-static {v10, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 347
    iget-object v1, v7, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-eqz v1, :cond_1

    .line 349
    :try_start_0
    iget-object v0, v1, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/ArrayList;

    iget v1, v7, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mSelectedFontStyleItemIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return v9

    .line 356
    :cond_1
    :goto_0
    iget-object v1, v7, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isInvalidFont(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 357
    invoke-direct {v7, v0}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->showWarningDialog(Ljava/lang/String;)V

    return v9

    .line 362
    :cond_2
    iget v1, v7, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mSelectedFontStyleItemIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 363
    iget v1, v7, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mSavedClickedItem:I

    iput v1, v7, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mSelectedFontStyleItemIndex:I

    goto :goto_1

    .line 365
    :cond_3
    iput v1, v7, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mSavedClickedItem:I

    .line 368
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOkButtonPressed : mSavedClickedItem : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v7, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mSavedClickedItem:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v1, v7, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-nez v1, :cond_4

    .line 372
    iget-object v1, v7, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getInstanceFontListAdapter(Landroid/content/Context;)Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-result-object v1

    iput-object v1, v7, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    .line 373
    invoke-virtual {v1}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->setInitDownloadFontAndThemeFont()V

    .line 375
    iget-object v1, v7, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v1, v8}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->setmIsFontPreviewActivity(Z)V

    .line 376
    iget-object v1, v7, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->loadTypefaces()V

    .line 379
    :cond_4
    iget-object v1, v7, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v1, v1, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/ArrayList;

    iget v2, v7, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mSelectedFontStyleItemIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Ljava/lang/String;

    .line 381
    invoke-direct {v7, v11}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->saveSelectedFontStringPreferences(Ljava/lang/String;)V

    .line 385
    new-instance v12, Lcom/samsung/android/fontutil/FontWriter;

    invoke-direct {v12}, Lcom/samsung/android/fontutil/FontWriter;-><init>()V

    if-eqz v11, :cond_9

    const-string v1, "default"

    .line 388
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto/16 :goto_5

    .line 402
    :cond_5
    iget-object v1, v7, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v1, v1, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/samsung/android/fontutil/TypefaceFinder;

    invoke-virtual {v1, v11}, Lcom/samsung/android/fontutil/TypefaceFinder;->findMatchingTypeface(Ljava/lang/String;)Lcom/samsung/android/fontutil/SemTypeface;

    move-result-object v13

    const-string v1, ".xml"

    .line 405
    invoke-virtual {v11, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_6

    .line 408
    invoke-virtual {v11, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object v14, v1

    goto :goto_2

    :cond_6
    move-object v14, v11

    .line 411
    :goto_2
    invoke-virtual {v12, v14}, Lcom/samsung/android/fontutil/FontWriter;->createFontDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v15

    move v1, v9

    if-eqz v13, :cond_7

    move v6, v1

    .line 416
    :goto_3
    iget-object v2, v13, Lcom/samsung/android/fontutil/SemTypeface;->mSansFonts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v6, v2, :cond_7

    .line 417
    iget-object v1, v13, Lcom/samsung/android/fontutil/SemTypeface;->mSansFonts:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/fontutil/TypefaceFile;

    .line 421
    :try_start_1
    iget-object v2, v7, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/ArrayList;

    iget v3, v7, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mSelectedFontStyleItemIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 422
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setOkButtonPressed : Application name, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object v2, v7, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v3, 0x80

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 424
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v3, v2, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 425
    iget-object v3, v7, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v3, v3, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v2

    .line 426
    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 427
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tpf.getFileName(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/fontutil/TypefaceFile;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fonts/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/fontutil/TypefaceFile;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 429
    invoke-virtual {v1}, Lcom/samsung/android/fontutil/TypefaceFile;->getDroidName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v15, v2, v3}, Lcom/samsung/android/fontutil/FontWriter;->copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v3

    .line 430
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v1, v3

    move/from16 v17, v6

    goto :goto_4

    .line 433
    :catch_1
    invoke-virtual {v1}, Lcom/samsung/android/fontutil/TypefaceFile;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/samsung/android/fontutil/TypefaceFile;->getDroidName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v1, p0

    move-object v2, v12

    move-object v3, v15

    move-object v4, v0

    move/from16 v17, v6

    move-object/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->copyFileWithCR(Lcom/samsung/android/fontutil/FontWriter;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    :goto_4
    add-int/lit8 v6, v17, 0x1

    goto/16 :goto_3

    :cond_7
    if-eqz v1, :cond_8

    const-string v1, "**setOkButtonPressed - enospc error **"

    .line 439
    invoke-static {v10, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    invoke-direct {v7, v0}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->showWarningDialog(Ljava/lang/String;)V

    return v9

    .line 447
    :cond_8
    invoke-virtual {v12, v14}, Lcom/samsung/android/fontutil/FontWriter;->deleteFontDirectory(Ljava/lang/String;)V

    .line 448
    iget v0, v7, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mSelectedFontStyleItemIndex:I

    iput v0, v7, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mSavedClickedItem:I

    .line 449
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->savePreferences()V

    .line 451
    iget v0, v7, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mSelectedFontStyleItemIndex:I

    iput v0, v7, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mPreviousFont:I

    .line 455
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v1, v1, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/ArrayList;

    iget v2, v7, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mSelectedFontStyleItemIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/samsung/android/fontutil/FontWriter;->writeLoc(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    .line 457
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fontWriter.writeLoc() : RuntimeException occured. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_9
    :goto_5
    const-string v0, " "

    .line 389
    invoke-virtual {v12, v0}, Lcom/samsung/android/fontutil/FontWriter;->deleteFontDirectory(Ljava/lang/String;)V

    .line 390
    iget v0, v7, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mSelectedFontStyleItemIndex:I

    iput v0, v7, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mSavedClickedItem:I

    .line 391
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->savePreferences()V

    const-string v0, "default#default"

    .line 393
    invoke-virtual {v12, v0}, Lcom/samsung/android/fontutil/FontWriter;->writeLoc(Ljava/lang/String;)V

    if-nez v11, :cond_a

    const-string v0, "setOkButtonPressed() : selectedFont == null "

    .line 396
    invoke-static {v10, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_a
    :goto_6
    move-object v0, v11

    .line 462
    :goto_7
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    .line 463
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/2addr v0, v8

    .line 464
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$$ExternalSyntheticLambda1;

    invoke-direct {v3, v7, v1, v0}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;Landroid/app/IActivityManager;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v8
.end method

.method private copyFileWithCR(Lcom/samsung/android/fontutil/FontWriter;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/fonts/"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    .line 493
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    :try_start_1
    invoke-virtual {p1, p2, p0, p5}, Lcom/samsung/android/fontutil/FontWriter;->copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    .line 496
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_1

    .line 493
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 497
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "cannot copy font file : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SecFontStylePreferenceFragment"

    invoke-static {p1, p0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private getCurrentSavedFontString()Ljava/lang/String;
    .locals 2

    .line 263
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/graphics/Typeface;->semGetFontPathOfCurrentFontStyle(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "/"

    .line 264
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 265
    array-length v1, p0

    sub-int/2addr v1, v0

    if-lez v1, :cond_0

    .line 266
    array-length v1, p0

    sub-int/2addr v1, v0

    aget-object p0, p0, v1

    goto :goto_0

    :cond_0
    const-string p0, "default"

    :goto_0
    return-object p0
.end method

.method private synthetic lambda$applyFontStyleInternal$0(Landroid/app/IActivityManager;I)V
    .locals 2

    .line 466
    :try_start_0
    invoke-interface {p1}, Landroid/app/IActivityManager;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 467
    iput p2, v0, Landroid/content/res/Configuration;->FlipFont:I

    .line 468
    invoke-interface {p1, v0}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 472
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    const-string p2, "SecFontStylePreferenceFragment"

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cannot update Configuration : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 472
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    .line 473
    throw p1
.end method

.method private synthetic lambda$new$1(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, -0x2

    if-eq p2, v0, :cond_1

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 505
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mUninstallFontsPackageName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->uninstallFlipfontsPackage(Ljava/lang/String;)V

    goto :goto_0

    .line 508
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->onCancelButtonPressed()V

    .line 509
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$showWarningDialog$2(Landroid/content/DialogInterface;)V
    .locals 0

    .line 523
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->onCancelButtonPressed()V

    .line 524
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private loadPreferences()V
    .locals 4

    .line 300
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mContext:Landroid/content/Context;

    const-string v1, "prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SavedClickedItem"

    .line 303
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mSavedClickedItem:I

    .line 305
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "flip_font_style"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 308
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFontStyleIndexForMultiUser() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SecFontStylePreferenceFragment"

    invoke-static {v2, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iput v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mSavedClickedItem:I

    goto :goto_0

    .line 312
    :cond_0
    iput v1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mSavedClickedItem:I

    :goto_0
    return-void
.end method

.method private onCancelButtonPressed()V
    .locals 2

    .line 532
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontStyleListView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 533
    iget v1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mPreviousFont:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->onItemClick(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method private savePreferences()V
    .locals 3

    const-string v0, "SecFontStylePreferenceFragment"

    const-string v1, "savePreferences"

    .line 317
    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mContext:Landroid/content/Context;

    const-string v1, "prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 322
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SelectDialogIsActive"

    .line 324
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 325
    iget p0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mSavedClickedItem:I

    const-string v1, "SavedClickedItem"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 328
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private saveSelectedFontStringPreferences(Ljava/lang/String;)V
    .locals 2

    .line 481
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mContext:Landroid/content/Context;

    const-string v0, "prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 483
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "selectedFont"

    .line 485
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 487
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private setFontStyleList()V
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontStyleListView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 224
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->setOnItemClickListener(Lcom/samsung/android/settings/flipfont/FontListAdapter$OnItemClickListener;)V

    .line 226
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->isCurrentThemeFontInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->isCurrentThemeFontSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 227
    iput-boolean v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mIsSelectedCurrentThemeFont:Z

    .line 231
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->loadPreferences()V

    .line 233
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->setSelectedFontStyle()V

    return-void
.end method

.method private setSelectedFontStyle()V
    .locals 3

    .line 272
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-nez v0, :cond_0

    return-void

    .line 275
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->getCurrentSavedFontString()Ljava/lang/String;

    move-result-object v0

    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSelectedFontStyle : selectedFont : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SecFontStylePreferenceFragment"

    invoke-static {v2, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-boolean v1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mIsSelectedCurrentThemeFont:Z

    if-eqz v1, :cond_1

    .line 279
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getCurrentThemeFontIndex()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mPreviousFont:I

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSelectedFontStyle : Current Theme Font index : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mPreviousFont:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v1, "default"

    .line 282
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".xml"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 285
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v1, v1, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mPreviousFont:I

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSelectedFontStyle : selectedFont index : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mPreviousFont:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    .line 288
    iget v1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mPreviousFont:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->onItemClick(Landroid/view/View;I)V

    return-void
.end method

.method private showWarningDialog(Ljava/lang/String;)V
    .locals 2

    .line 517
    iput-object p1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mUninstallFontsPackageName:Ljava/lang/String;

    .line 518
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/android/settings/R$string;->sec_monotype_not_supported_font:I

    .line 519
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->delete:I

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mWarningDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 520
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mWarningDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    const/high16 v1, 0x1040000

    .line 521
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;)V

    .line 522
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 526
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mWarningDialog:Landroid/app/AlertDialog;

    .line 527
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private startDownloadFont(I)V
    .locals 4

    .line 240
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/settings/R$string;->sec_monotype_samsung_apps_uri:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 241
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 242
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const v0, 0x14000020

    .line 243
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 245
    iget-object v2, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 246
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/settings/R$string;->sec_monotype_android_market_uri:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 247
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    .line 248
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    const/4 v0, 0x0

    .line 250
    iput-boolean v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mIsRunLoadListTask:Z

    const/4 v0, 0x1

    .line 251
    iput-boolean v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mCallbackFromDownloadFont:Z

    .line 252
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 253
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0x106d

    const-wide/16 v2, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 255
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 257
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->setItemChecked(I)V

    .line 258
    iput p1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mSelectedFontStyleItemIndex:I

    return-void
.end method

.method private uninstallFlipfontsPackage(Ljava/lang/String;)V
    .locals 2

    .line 539
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 540
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DELETE"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x34000000

    .line 541
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 543
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 544
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 546
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cannot start UninstallerActivity : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SecFontStylePreferenceFragment"

    invoke-static {p1, p0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1d16

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 92
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 94
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mContext:Landroid/content/Context;

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mResources:Landroid/content/res/Resources;

    .line 96
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->sec_font_preview_sylte_subtitle:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 101
    iget-object p2, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mContext:Landroid/content/Context;

    sget p3, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {p2, p3}, Landroid/content/Context;->getColor(I)I

    move-result p2

    .line 102
    sget p3, Lcom/android/settings/R$layout;->sec_font_style_list:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const/16 p3, 0xf

    .line 103
    invoke-virtual {p1, p3}, Landroid/view/View;->semSetRoundedCorners(I)V

    .line 104
    invoke-virtual {p1, p3, p2}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    .line 105
    sget v1, Lcom/android/settings/R$id;->fontPreviewLayout:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 106
    invoke-virtual {v1, p3}, Landroid/widget/LinearLayout;->semSetRoundedCorners(I)V

    .line 107
    invoke-virtual {v1, p3, p2}, Landroid/widget/LinearLayout;->semSetRoundedCornerColor(II)V

    .line 108
    sget p2, Lcom/android/settings/R$id;->fontStyleListView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontStyleListView:Landroidx/recyclerview/widget/RecyclerView;

    .line 109
    iget-object p2, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    const/4 p3, 0x0

    if-nez p2, :cond_0

    .line 110
    iget-boolean p2, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mIsRunLoadListTask:Z

    if-nez p2, :cond_1

    .line 111
    new-instance p2, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;-><init>(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask-IA;)V

    iput-object p2, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mLoadListTask:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;

    .line 112
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, p3, [Ljava/lang/Void;

    invoke-virtual {p2, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 115
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->setFontStyleList()V

    .line 118
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontStyleListView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setSelected(Z)V

    .line 119
    iget-object p2, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontStyleListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 120
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-direct {p2, v1, v0, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 122
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setAutoMeasureEnabled(Z)V

    .line 123
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontStyleListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 124
    iget-object p2, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontStyleListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 125
    iget-object p2, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontStyleListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 126
    iget-object p2, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontStyleListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    .line 127
    iget-object p2, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontStyleListView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$VerticalLineItemDecoration;

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-direct {p3, p0, v0}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$VerticalLineItemDecoration;-><init>(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    const-string p0, "SecFontStylePreferenceFragment"

    const-string p2, "called onCreate()"

    .line 128
    invoke-static {p0, p2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 148
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    .line 150
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mLoadListTask:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 151
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    .line 152
    iput-boolean v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mIsRunLoadListTask:Z

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-eqz v0, :cond_1

    .line 156
    invoke-static {}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->destroyInstance()V

    const/4 v0, 0x0

    .line 157
    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mWarningDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 161
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const-string v0, ""

    .line 162
    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mUninstallFontsPackageName:Ljava/lang/String;

    :cond_2
    const-string p0, "SecFontStylePreferenceFragment"

    const-string v0, "called onDestroy()"

    .line 165
    invoke-static {p0, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onItemClick(Landroid/view/View;I)V
    .locals 3

    .line 171
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onItemClick : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SecFontStylePreferenceFragment"

    invoke-static {v0, p1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-nez p1, :cond_0

    return-void

    .line 176
    :cond_0
    invoke-virtual {p1, p2}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->setItemChecked(I)V

    .line 177
    iget p1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mSelectedFontStyleItemIndex:I

    .line 178
    iput p2, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mSelectedFontStyleItemIndex:I

    const/4 v0, 0x0

    .line 181
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-eqz v1, :cond_1

    .line 183
    :try_start_0
    iget-object v0, v1, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 185
    invoke-virtual {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    return-void

    .line 190
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/settings/R$string;->sec_font_preview_download_font_style:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 192
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 194
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->startDownloadFont(I)V

    return-void

    .line 198
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getCurrentThemeString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x106d

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    .line 200
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 201
    iput-boolean v1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mIsSelectedCurrentThemeFont:Z

    .line 202
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->getMetricsCategory()I

    move-result p0

    const-wide/16 v0, 0x2

    invoke-static {p0, p2, v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    return-void

    :cond_3
    const/4 p1, 0x0

    .line 205
    iput-boolean p1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mIsSelectedCurrentThemeFont:Z

    .line 208
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-eqz v0, :cond_7

    .line 209
    iget-object v0, v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/ArrayList;

    iget v2, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mSelectedFontStyleItemIndex:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_5

    const-string v2, "default"

    .line 210
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    move v1, p1

    .line 212
    :cond_5
    :goto_1
    iget p1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mSelectedFontStyleItemIndex:I

    iget v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mPreviousFont:I

    if-eq p1, v0, :cond_7

    .line 213
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->getMetricsCategory()I

    move-result p1

    if-eqz v1, :cond_6

    const-wide/16 v0, 0x0

    goto :goto_2

    .line 214
    :cond_6
    iget v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mSelectedFontStyleItemIndex:I

    int-to-long v0, v0

    .line 213
    :goto_2
    invoke-static {p1, p2, v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    .line 215
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->applyFontStyle()V

    :cond_7
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 135
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 136
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mCallbackFromDownloadFont:Z

    if-eqz v0, :cond_2

    .line 137
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mIsRunLoadListTask:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 138
    new-instance v0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;-><init>(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask-IA;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mLoadListTask:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;

    .line 139
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v2, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    const-string v0, "SecFontStylePreferenceFragment"

    const-string v2, "called onResume()"

    .line 140
    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_1
    iput-boolean v1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mCallbackFromDownloadFont:Z

    :cond_2
    return-void
.end method
