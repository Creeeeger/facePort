.class public Lcom/samsung/android/settings/flipfont/FontListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "FontListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/flipfont/FontListAdapter$OnItemClickListener;,
        Lcom/samsung/android/settings/flipfont/FontListAdapter$RecyclerFooterViewHolder;,
        Lcom/samsung/android/settings/flipfont/FontListAdapter$RecyclerViewHolder;,
        Lcom/samsung/android/settings/flipfont/FontListAdapter$FontList;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;


# instance fields
.field private currentThemePath:Ljava/lang/String;

.field private final downloadFontString:Ljava/lang/String;

.field private droidSansFont:Landroid/graphics/Typeface;

.field private final mContext:Landroid/content/Context;

.field private final mCurrentFontString:Ljava/lang/String;

.field private mCurrentThemeFontIndex:I

.field private mDownloadFontEnabled:Z

.field private mFontAssetManager:Landroid/content/res/AssetManager;

.field public mFontNames:Ljava/util/ArrayList;

.field public mFontPackageNames:Ljava/util/ArrayList;

.field private mInstalledApplications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCurrentSelectedThemeFont:Z

.field private mIsCurrentThemeAdapted:Z

.field private mIsFontPreviewActivity:Z

.field private mListItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/flipfont/FontListAdapter$FontList;",
            ">;"
        }
    .end annotation
.end field

.field private mOnItemClickListener:Lcom/samsung/android/settings/flipfont/FontListAdapter$OnItemClickListener;

.field public mPackageManager:Landroid/content/pm/PackageManager;

.field private final mResources:Landroid/content/res/Resources;

.field public mTypefaceFiles:Ljava/util/ArrayList;

.field public mTypefaceFinder:Lcom/samsung/android/fontutil/TypefaceFinder;

.field private final mTypefaces:Ljava/util/ArrayList;


# direct methods
.method static bridge synthetic -$$Nest$fgetmOnItemClickListener(Lcom/samsung/android/settings/flipfont/FontListAdapter;)Lcom/samsung/android/settings/flipfont/FontListAdapter$OnItemClickListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mOnItemClickListener:Lcom/samsung/android/settings/flipfont/FontListAdapter$OnItemClickListener;

    return-object p0
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 7

    const-string v0, "/system/fonts/UIFont.ttf"

    .line 264
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v1, 0x0

    .line 67
    iput-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;

    .line 70
    new-instance v2, Lcom/samsung/android/fontutil/TypefaceFinder;

    invoke-direct {v2}, Lcom/samsung/android/fontutil/TypefaceFinder;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/samsung/android/fontutil/TypefaceFinder;

    .line 73
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/ArrayList;

    .line 76
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/ArrayList;

    .line 79
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/ArrayList;

    .line 82
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/ArrayList;

    .line 93
    iput-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->droidSansFont:Landroid/graphics/Typeface;

    const/4 v1, 0x0

    .line 133
    iput-boolean v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mIsFontPreviewActivity:Z

    const-string v2, ""

    .line 134
    iput-object v2, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->currentThemePath:Ljava/lang/String;

    .line 136
    iput-boolean v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mIsCurrentThemeAdapted:Z

    .line 137
    iput-boolean v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mIsCurrentSelectedThemeFont:Z

    .line 138
    iput v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mCurrentThemeFontIndex:I

    .line 145
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mListItems:Ljava/util/List;

    const/4 v2, 0x1

    .line 147
    iput-boolean v2, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mDownloadFontEnabled:Z

    .line 265
    iput-object p1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mContext:Landroid/content/Context;

    .line 266
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mResources:Landroid/content/res/Resources;

    .line 267
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 269
    sget p1, Lcom/android/settings/R$string;->sec_font_preview_download_font_style:I

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    .line 270
    sget p1, Lcom/android/settings/R$string;->sec_current_theme_font:I

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mCurrentFontString:Ljava/lang/String;

    .line 273
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v2, 0x80

    invoke-virtual {p1, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mInstalledApplications:Ljava/util/List;

    .line 277
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mInstalledApplications:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_1

    .line 278
    iget-object p1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mInstalledApplications:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.monotype.android.font."

    .line 280
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 281
    iget-object v3, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 282
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v4, v3, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 283
    iget-object v4, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v3

    .line 284
    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;

    .line 285
    iget-object v4, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/samsung/android/fontutil/TypefaceFinder;

    iget-object v5, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v3, p1}, Lcom/samsung/android/fontutil/TypefaceFinder;->findTypefaces(Landroid/content/Context;Landroid/content/res/AssetManager;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 289
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/samsung/android/fontutil/TypefaceFinder;

    iget-object v2, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/ArrayList;

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/fontutil/TypefaceFinder;->getSansEntries(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "font package not found, just use default font, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "FontListAdapter"

    invoke-static {v1, p1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :goto_1
    :try_start_1
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 300
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 301
    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->droidSansFont:Landroid/graphics/Typeface;

    goto :goto_2

    :cond_2
    const-string p1, "/system/fonts/DroidSans.ttf"

    .line 307
    invoke-static {p1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->droidSansFont:Landroid/graphics/Typeface;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 310
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private addFontList(Ljava/lang/String;)V
    .locals 2

    .line 346
    new-instance v0, Lcom/samsung/android/settings/flipfont/FontListAdapter$FontList;

    invoke-direct {v0}, Lcom/samsung/android/settings/flipfont/FontListAdapter$FontList;-><init>()V

    .line 347
    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/flipfont/FontListAdapter$FontList;->setTitle(Ljava/lang/String;)V

    .line 348
    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mCurrentFontString:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 349
    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/flipfont/FontListAdapter$FontList;->setChecked(Z)V

    .line 351
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mListItems:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private addFontListView()V
    .locals 2

    .line 336
    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 337
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 338
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getFontName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->addFontList(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "FontListAdapter"

    const-string v0, "addScreenModeListView failed"

    .line 341
    invoke-static {p0, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public static destroyInstance()V
    .locals 1

    .line 255
    sget-object v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 256
    sput-object v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    :cond_0
    return-void
.end method

.method private getFont(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 6

    const-string v0, ".xml"

    const-string v1, ".ttf"

    .line 721
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 722
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "shaonv"

    .line 724
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x80

    const-string v4, "fonts/"

    const/4 v5, 0x0

    if-nez v2, :cond_1

    const-string v2, "kaiti"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "miao"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 759
    :cond_0
    :try_start_0
    iput-object v5, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;

    .line 760
    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 761
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 762
    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v0

    .line 763
    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 771
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 772
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 777
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;

    invoke-static {p1, p0}, Lcom/samsung/android/fontutil/FontCache;->get(Ljava/lang/String;Landroid/content/res/AssetManager;)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    .line 774
    :catch_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getFontfromCR(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    :catch_1
    return-object v5

    :cond_1
    :goto_0
    const-string v2, "_prev.ttf"

    .line 727
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 730
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/system/fonts/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-object p0

    .line 733
    :catch_2
    :try_start_3
    iput-object v5, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;

    .line 734
    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 735
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 736
    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v0

    .line 737
    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 745
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 746
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 751
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;

    invoke-static {p1, p0}, Lcom/samsung/android/fontutil/FontCache;->get(Ljava/lang/String;Landroid/content/res/AssetManager;)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    .line 748
    :catch_3
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getFontfromCR(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    :catch_4
    return-object v5
.end method

.method private getFontfromCR(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 5

    const/4 v0, 0x0

    .line 635
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_14

    .line 641
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/fonts/"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 645
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_14

    :try_start_2
    const-string p1, "font"

    .line 654
    invoke-static {p1, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_13

    .line 669
    :try_start_3
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_e
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 670
    :try_start_4
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/16 v2, 0x400

    :try_start_5
    new-array v2, v2, [B

    .line 674
    :goto_0
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_0

    const/4 v4, 0x0

    .line 675
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_0

    .line 678
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 679
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_a
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 687
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 693
    :catch_0
    :try_start_7
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 699
    :catch_1
    :try_start_8
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 706
    :catch_2
    :try_start_9
    invoke-static {p1}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object p0

    .line 707
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    return-object p0

    :catch_3
    move-exception p0

    .line 710
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_4
    move-object v1, v0

    goto :goto_2

    :catch_5
    move-object v1, v0

    goto :goto_3

    :catchall_2
    move-exception p1

    move-object p2, v0

    :goto_1
    if-eqz v0, :cond_1

    .line 687
    :try_start_a
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    :catch_6
    :cond_1
    if-eqz p2, :cond_2

    .line 693
    :try_start_b
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    :catch_7
    :cond_2
    if-eqz p0, :cond_3

    .line 699
    :try_start_c
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 702
    :catch_8
    :cond_3
    throw p1

    :catch_9
    move-object p2, v0

    move-object v1, p2

    :catch_a
    :goto_2
    if-eqz v1, :cond_4

    .line 687
    :try_start_d
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b

    :catch_b
    :cond_4
    if-eqz p2, :cond_5

    .line 693
    :try_start_e
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_c

    :catch_c
    :cond_5
    if-eqz p0, :cond_6

    .line 699
    :try_start_f
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_d

    :catch_d
    :cond_6
    return-object v0

    :catch_e
    move-object p2, v0

    move-object v1, p2

    :catch_f
    :goto_3
    if-eqz v1, :cond_7

    .line 687
    :try_start_10
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :cond_7
    if-eqz p2, :cond_8

    .line 693
    :try_start_11
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :cond_8
    if-eqz p0, :cond_9

    .line 699
    :try_start_12
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :cond_9
    return-object v0

    .line 657
    :catch_13
    :try_start_13
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_14

    :catch_14
    return-object v0
.end method

.method public static getInstanceFontListAdapter(Landroid/content/Context;)Lcom/samsung/android/settings/flipfont/FontListAdapter;
    .locals 3

    .line 153
    sget-object v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/flipfont/FontListAdapter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    goto :goto_0

    .line 156
    :cond_0
    iget-object v0, v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 157
    sget-object v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 158
    sget-object v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/android/settings/R$string;->sec_monotype_default:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 159
    sget-object p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object p0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/ArrayList;

    const-string v0, "default"

    invoke-virtual {p0, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 162
    :goto_0
    sget-object p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->setmIsFontPreviewActivity(Z)V

    .line 163
    sget-object p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    return-object p0
.end method

.method private setFont(ILandroid/widget/TextView;)V
    .locals 2

    .line 512
    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/ArrayList;

    monitor-enter v0

    .line 513
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v1, p1, :cond_0

    .line 514
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    const-string p0, "sec-no-flip"

    .line 518
    invoke-static {p0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 519
    monitor-exit v0

    return-void

    .line 523
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Typeface;

    if-eqz p0, :cond_2

    .line 526
    invoke-virtual {p2, p0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 528
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public getCount()I
    .locals 0

    .line 447
    iget-object p0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getCurrentThemeFontIndex()I
    .locals 0

    .line 251
    iget p0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mCurrentThemeFontIndex:I

    return p0
.end method

.method public getCurrentThemeString()Ljava/lang/String;
    .locals 0

    .line 239
    iget-object p0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mCurrentFontString:Ljava/lang/String;

    return-object p0
.end method

.method public getFontName(I)Ljava/lang/String;
    .locals 1

    .line 464
    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "Cool"

    .line 465
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    iget-object p0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mResources:Landroid/content/res/Resources;

    sget p1, Lcom/android/settings/R$string;->sec_monotype_dialog_font_cool:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto/16 :goto_1

    :cond_0
    const-string v0, "Rose"

    .line 467
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 468
    iget-object p0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mResources:Landroid/content/res/Resources;

    sget p1, Lcom/android/settings/R$string;->sec_monotype_dialog_font_rose:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto/16 :goto_1

    :cond_1
    const-string v0, "Choco"

    .line 469
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 470
    iget-object p0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mResources:Landroid/content/res/Resources;

    sget p1, Lcom/android/settings/R$string;->sec_monotype_dialog_font_choco:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto/16 :goto_1

    :cond_2
    const-string v0, "Rosemary"

    .line 471
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 472
    iget-object p0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mResources:Landroid/content/res/Resources;

    sget p1, Lcom/android/settings/R$string;->sec_monotype_dialog_font_rose:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto/16 :goto_1

    :cond_3
    const-string v0, "Chococooky"

    .line 473
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 474
    iget-object p0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mResources:Landroid/content/res/Resources;

    sget p1, Lcom/android/settings/R$string;->sec_monotype_dialog_font_choco:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto/16 :goto_1

    :cond_4
    const-string v0, "Cooljazz"

    .line 475
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 476
    iget-object p0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mResources:Landroid/content/res/Resources;

    sget p1, Lcom/android/settings/R$string;->sec_monotype_dialog_font_cool:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto/16 :goto_1

    :cond_5
    const-string v0, "Samsungsans"

    .line 477
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "SamsungSans"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const-string v0, "Applemint"

    .line 479
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 480
    iget-object p0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mResources:Landroid/content/res/Resources;

    sget p1, Lcom/android/settings/R$string;->sec_monotype_dialog_font_applemint:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto/16 :goto_1

    :cond_7
    const-string v0, "Tinkerbell"

    .line 481
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 482
    iget-object p0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mResources:Landroid/content/res/Resources;

    sget p1, Lcom/android/settings/R$string;->sec_monotype_dialog_font_tinkerbell:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto/16 :goto_1

    :cond_8
    const-string v0, "Shaonv"

    .line 483
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 484
    iget-object p0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mResources:Landroid/content/res/Resources;

    sget p1, Lcom/android/settings/R$string;->sec_monotype_dialog_font_girl:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto/16 :goto_1

    :cond_9
    const-string v0, "Kaiti"

    .line 485
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 486
    iget-object p0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mResources:Landroid/content/res/Resources;

    sget p1, Lcom/android/settings/R$string;->sec_monotype_dialog_font_kaiti:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto/16 :goto_1

    :cond_a
    const-string v0, "Miao"

    .line 487
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 488
    iget-object p0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mResources:Landroid/content/res/Resources;

    sget p1, Lcom/android/settings/R$string;->sec_monotype_dialog_font_miao:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto/16 :goto_1

    :cond_b
    const-string v0, "UDRGothic"

    .line 489
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 490
    iget-object p0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mResources:Landroid/content/res/Resources;

    sget p1, Lcom/android/settings/R$string;->sec_monotype_dialog_font_maruberi:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_1

    :cond_c
    const-string v0, "UDMincho"

    .line 491
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 492
    iget-object p0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mResources:Landroid/content/res/Resources;

    sget p1, Lcom/android/settings/R$string;->sec_monotype_dialog_font_mincho:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_1

    :cond_d
    const-string v0, "Pop"

    .line 493
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 494
    iget-object p0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mResources:Landroid/content/res/Resources;

    sget p1, Lcom/android/settings/R$string;->sec_monotype_dialog_font_pop:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_1

    :cond_e
    const-string v0, "Current theme\'s default"

    .line 495
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 496
    iget-object p0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mResources:Landroid/content/res/Resources;

    sget p1, Lcom/android/settings/R$string;->sec_current_theme_font:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_1

    :cond_f
    const-string v0, "Foundation"

    .line 497
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 498
    iget-object p0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mResources:Landroid/content/res/Resources;

    sget p1, Lcom/android/settings/R$string;->sec_monotype_dialog_font_gothicbold:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_1

    .line 499
    :cond_10
    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 500
    iget-object p0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    return-object p0

    :cond_11
    return-object p1

    :cond_12
    :goto_0
    const-string p0, "Samsung Sans"

    :goto_1
    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    .line 413
    iget-object p0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 418
    iget-boolean v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mDownloadFontEnabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getItemCount()I

    move-result p0

    sub-int/2addr p0, v1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getThemeFontCurrentPath()Ljava/lang/String;
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->currentThemePath:Ljava/lang/String;

    return-object p0
.end method

.method public isCurrentThemeFontInstalled()Z
    .locals 0

    .line 243
    iget-boolean p0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mIsCurrentThemeAdapted:Z

    return p0
.end method

.method public isCurrentThemeFontSelected()Z
    .locals 0

    .line 247
    iget-boolean p0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mIsCurrentSelectedThemeFont:Z

    return p0
.end method

.method public loadTypefaces()V
    .locals 5

    .line 555
    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/settings/R$string;->sec_monotype_samsung_apps_uri:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 556
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 557
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const v0, 0x14000020

    .line 558
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 562
    iget-object v2, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/android/settings/R$string;->sec_monotype_android_market_uri:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 564
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    .line 565
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 570
    iget-boolean v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mIsFontPreviewActivity:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mContext:Landroid/content/Context;

    .line 571
    invoke-static {v0, v1}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mContext:Landroid/content/Context;

    .line 572
    invoke-static {v0, v2}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v1, v1, Lcom/samsung/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 574
    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 575
    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 576
    iput-boolean v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mDownloadFontEnabled:Z

    .line 583
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->droidSansFont:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 586
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 587
    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 588
    iget-object v2, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 589
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getFont(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    if-nez v1, :cond_2

    .line 594
    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 595
    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 596
    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 600
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 604
    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mIsFontPreviewActivity:Z

    if-eqz v0, :cond_7

    :try_start_0
    const-string v0, "FontListAdapter"

    .line 606
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadTypefaces currentThemePath : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->currentThemePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 608
    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->currentThemePath:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 609
    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 612
    :cond_4
    iget-boolean v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mIsCurrentThemeAdapted:Z

    if-eqz v1, :cond_5

    .line 613
    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 615
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 616
    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 621
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 623
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    invoke-direct {p0, v1, v1}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getFont(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .line 391
    instance-of v0, p1, Lcom/samsung/android/settings/flipfont/FontListAdapter$RecyclerViewHolder;

    if-eqz v0, :cond_0

    .line 392
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/settings/flipfont/FontListAdapter$RecyclerViewHolder;

    iget-object v1, v0, Lcom/samsung/android/settings/flipfont/FontListAdapter$RecyclerViewHolder;->mTitleView:Landroid/widget/CheckedTextView;

    iget-object v2, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mListItems:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/flipfont/FontListAdapter$FontList;

    invoke-virtual {v2}, Lcom/samsung/android/settings/flipfont/FontListAdapter$FontList;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    iget-object v0, v0, Lcom/samsung/android/settings/flipfont/FontListAdapter$RecyclerViewHolder;->mCheckBoxView:Lcom/android/settings/CheckableLinearLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mListItems:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/flipfont/FontListAdapter$FontList;

    invoke-virtual {v1}, Lcom/samsung/android/settings/flipfont/FontListAdapter$FontList;->getChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/CheckableLinearLayout;->setChecked(Z)V

    .line 394
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/settings/flipfont/FontListAdapter$1;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/settings/flipfont/FontListAdapter$1;-><init>(Lcom/samsung/android/settings/flipfont/FontListAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 400
    check-cast p1, Lcom/samsung/android/settings/flipfont/FontListAdapter$RecyclerViewHolder;

    iget-object p1, p1, Lcom/samsung/android/settings/flipfont/FontListAdapter$RecyclerViewHolder;->mTitleView:Landroid/widget/CheckedTextView;

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->setFont(ILandroid/widget/TextView;)V

    goto :goto_0

    .line 401
    :cond_0
    instance-of v0, p1, Lcom/samsung/android/settings/flipfont/FontListAdapter$RecyclerFooterViewHolder;

    if-eqz v0, :cond_1

    .line 402
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/samsung/android/settings/flipfont/FontListAdapter$2;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/settings/flipfont/FontListAdapter$2;-><init>(Lcom/samsung/android/settings/flipfont/FontListAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 379
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/android/settings/R$layout;->sec_download_font_layout:I

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 380
    new-instance p2, Lcom/samsung/android/settings/flipfont/FontListAdapter$RecyclerFooterViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/settings/flipfont/FontListAdapter$RecyclerFooterViewHolder;-><init>(Lcom/samsung/android/settings/flipfont/FontListAdapter;Landroid/view/View;)V

    return-object p2

    :cond_0
    if-nez p2, :cond_1

    .line 383
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/android/settings/R$layout;->sec_widget_list_item_with_radiobox:I

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 384
    new-instance p2, Lcom/samsung/android/settings/flipfont/FontListAdapter$RecyclerViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/settings/flipfont/FontListAdapter$RecyclerViewHolder;-><init>(Lcom/samsung/android/settings/flipfont/FontListAdapter;Landroid/view/View;)V

    return-object p2

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public setFont(ILandroid/widget/RadioButton;)V
    .locals 2

    .line 535
    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :try_start_0
    const-string p0, "sec-no-flip"

    .line 537
    invoke-static {p0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 538
    monitor-exit v0

    return-void

    .line 541
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Typeface;

    if-eqz p0, :cond_1

    .line 544
    invoke-virtual {p2, p0, v1}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 546
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setInitDownloadFontAndThemeFont()V
    .locals 7

    const-string v0, "default"

    .line 167
    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/ArrayList;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/ArrayList;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_8

    .line 168
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->currentThemePath:Ljava/lang/String;

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/app_fonts/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/sans.loc"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 171
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 176
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 177
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 178
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const/16 v6, 0x23

    .line 180
    invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 184
    :cond_0
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 185
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-object v0, v3

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object v1, v5

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-object v1, v5

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_1

    :catch_3
    move-exception v3

    move-object v5, v1

    move-object v1, v3

    .line 190
    :goto_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v5, :cond_2

    .line 194
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_3

    :goto_1
    if-eqz v1, :cond_1

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 199
    :catch_4
    :cond_1
    throw p0

    :catch_5
    :goto_2
    if-eqz v1, :cond_2

    .line 194
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :cond_2
    :goto_3
    const-string v1, "Theme"

    .line 201
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 202
    iput-boolean v4, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mIsCurrentSelectedThemeFont:Z

    goto :goto_4

    .line 204
    :cond_3
    iput-boolean v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mIsCurrentSelectedThemeFont:Z

    .line 207
    :goto_4
    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->currentThemePath:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 208
    iput-boolean v4, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mIsCurrentThemeAdapted:Z

    goto :goto_5

    .line 210
    :cond_4
    iput-boolean v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mIsCurrentThemeAdapted:Z

    .line 213
    :goto_5
    iget-boolean v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mIsCurrentThemeAdapted:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mCurrentFontString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 214
    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mCurrentFontString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mCurrentFontString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 218
    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mCurrentThemeFontIndex:I

    goto :goto_6

    .line 221
    :cond_5
    iget-boolean v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mIsCurrentThemeAdapted:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mCurrentFontString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_6

    .line 222
    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mCurrentFontString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 223
    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mCurrentFontString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 226
    :cond_6
    :goto_6
    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 227
    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    :cond_7
    invoke-direct {p0}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->addFontListView()V

    :cond_8
    return-void
.end method

.method public setItemChecked(I)V
    .locals 5

    .line 432
    invoke-virtual {p0}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getItemCount()I

    move-result v0

    iget-boolean v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mDownloadFontEnabled:Z

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 434
    iget-object v3, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mListItems:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/flipfont/FontListAdapter$FontList;

    if-ne p1, v2, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/flipfont/FontListAdapter$FontList;->setChecked(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 436
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnItemClickListener(Lcom/samsung/android/settings/flipfont/FontListAdapter$OnItemClickListener;)V
    .locals 0

    .line 428
    iput-object p1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mOnItemClickListener:Lcom/samsung/android/settings/flipfont/FontListAdapter$OnItemClickListener;

    return-void
.end method

.method public setmIsFontPreviewActivity(Z)V
    .locals 0

    .line 440
    iput-boolean p1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mIsFontPreviewActivity:Z

    return-void
.end method
