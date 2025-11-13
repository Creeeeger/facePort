.class public final Lcom/samsung/android/settings/flipfont/FontListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;


# instance fields
.field public final downloadFontString:Ljava/lang/String;

.field public final mContext:Landroid/content/Context;

.field public mDownloadFontEnabled:Z

.field public final mFontNames:Ljava/util/ArrayList;

.field public final mFontPackageNames:Ljava/util/ArrayList;

.field public mIsFontPreviewActivity:Z

.field public final mListItems:Ljava/util/List;

.field public mOnItemClickListener:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mResources:Landroid/content/res/Resources;

.field public final mTypefaceFiles:Ljava/util/ArrayList;

.field public final mTypefaceFinder:Lcom/samsung/android/fontutil/TypefaceFinder;

.field public final mTypefaces:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Lcom/samsung/android/fontutil/TypefaceFinder;

    invoke-direct {v0}, Lcom/samsung/android/fontutil/TypefaceFinder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/samsung/android/fontutil/TypefaceFinder;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mIsFontPreviewActivity:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mListItems:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mDownloadFontEnabled:Z

    iput-object p1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const v1, 0x7f142434

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    const/16 v0, 0x80

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.monotype.android.font."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v3, v2, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/samsung/android/fontutil/TypefaceFinder;

    iget-object v4, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v3, v4, v2, v1}, Lcom/samsung/android/fontutil/TypefaceFinder;->findTypefaces(Landroid/content/Context;Landroid/content/res/AssetManager;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/samsung/android/fontutil/TypefaceFinder;

    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/ArrayList;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/fontutil/TypefaceFinder;->getSansEntries(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "font package not found, just use default font, "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FontListAdapter"

    invoke-static {p1, p0}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public static getInstanceFontListAdapter(Landroid/content/Context;)Lcom/samsung/android/settings/flipfont/FontListAdapter;
    .locals 3

    sget-object v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/flipfont/FontListAdapter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f142599

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    sget-object p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object p0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/ArrayList;

    const-string v0, "default"

    invoke-virtual {p0, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_0
    sget-object p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iput-boolean v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mIsFontPreviewActivity:Z

    return-object p0
.end method


# virtual methods
.method public final getFont(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 3

    const-string v0, "fonts/"

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v2, 0x80

    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v1, p2, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ".xml"

    const-string v1, ".ttf"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/fontutil/FontCache;->get(Ljava/lang/String;Landroid/content/res/AssetManager;)Landroid/graphics/Typeface;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Font Package was not found. return null and this Font will be removed. "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FontListAdapter"

    invoke-static {p1, p0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getFontName(I)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "Cool"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x7f14259c

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto/16 :goto_0

    :cond_0
    const-string v0, "Rose"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v2, 0x7f1425a1

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "Choco"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v3, 0x7f14259b

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "Rosemary"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v0, "Chococooky"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string v0, "Cooljazz"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_5
    const-string v0, "Samsungsans"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "SamsungSans"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    const-string p1, "Samsung Sans"

    :cond_7
    :goto_0
    const-string v0, "Roboto"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move-object p1, v0

    goto/16 :goto_1

    :cond_8
    const-string v0, "Applemint"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object p0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mResources:Landroid/content/res/Resources;

    const p1, 0x7f14259a

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Ljava/lang/String;

    goto/16 :goto_1

    :cond_9
    const-string v0, "Tinkerbell"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object p0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mResources:Landroid/content/res/Resources;

    const p1, 0x7f1425a2

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Ljava/lang/String;

    goto :goto_1

    :cond_a
    const-string v0, "Shaonv"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mResources:Landroid/content/res/Resources;

    const p1, 0x7f14259d

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Ljava/lang/String;

    goto :goto_1

    :cond_b
    const-string v0, "Kaiti"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object p0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mResources:Landroid/content/res/Resources;

    const p1, 0x7f14259f

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Ljava/lang/String;

    goto :goto_1

    :cond_c
    const-string v0, "Miao"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mResources:Landroid/content/res/Resources;

    const p1, 0x7f1425a0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Ljava/lang/String;

    goto :goto_1

    :cond_d
    const-string v0, "Foundation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object p0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mResources:Landroid/content/res/Resources;

    const p1, 0x7f14259e

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Ljava/lang/String;

    goto :goto_1

    :cond_e
    iget-object p0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    return-object p0

    :cond_f
    :goto_1
    return-object p1
.end method

.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final getItemViewType(I)I
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mDownloadFontEnabled:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final loadTypefaces()V
    .locals 5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->SIGNATURES:[Landroid/content/pm/Signature;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1425a4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const v1, 0x14000020

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getFontDownloadMarketIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    iget-boolean v3, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mIsFontPreviewActivity:Z

    iget-object v4, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mDownloadFontEnabled:Z

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/ArrayList;

    const-string v2, "/system/fonts/DroidSans.ttf"

    invoke-static {v2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getFont(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v1, v0

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mIsFontPreviewActivity:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/ArrayList;

    invoke-virtual {p0, v4, v4}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getFont(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    instance-of v0, p1, Lcom/samsung/android/settings/flipfont/FontListAdapter$RecyclerViewHolder;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/settings/flipfont/FontListAdapter$RecyclerViewHolder;

    iget-object v1, v0, Lcom/samsung/android/settings/flipfont/FontListAdapter$RecyclerViewHolder;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mListItems:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/flipfont/FontListAdapter$FontList;

    iget-object v2, v2, Lcom/samsung/android/settings/flipfont/FontListAdapter$FontList;->mListItemTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/samsung/android/settings/flipfont/FontListAdapter$RecyclerViewHolder;->mCheckBoxView:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mListItems:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/flipfont/FontListAdapter$FontList;

    iget-boolean v2, v2, Lcom/samsung/android/settings/flipfont/FontListAdapter$FontList;->mIsChecked:Z

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/settings/flipfont/FontListAdapter$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, v2}, Lcom/samsung/android/settings/flipfont/FontListAdapter$1;-><init>(Lcom/samsung/android/settings/flipfont/FontListAdapter;II)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, v0, Lcom/samsung/android/settings/flipfont/FontListAdapter$RecyclerViewHolder;->mTitleView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v1, p2, :cond_0

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    if-nez p2, :cond_1

    const-string/jumbo p0, "sec-no-flip"

    invoke-static {p0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    monitor-exit v0

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Typeface;

    if-eqz p0, :cond_2

    invoke-virtual {p1, p0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_2
    monitor-exit v0

    goto :goto_1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    instance-of v0, p1, Lcom/samsung/android/settings/flipfont/FontListAdapter$RecyclerFooterViewHolder;

    if-eqz v0, :cond_4

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/samsung/android/settings/flipfont/FontListAdapter$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p2, v1}, Lcom/samsung/android/settings/flipfont/FontListAdapter$1;-><init>(Lcom/samsung/android/settings/flipfont/FontListAdapter;II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-ne p2, p0, :cond_0

    const p0, 0x7f0d089f

    invoke-static {p1, p0, p1, v0}, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter$$ExternalSyntheticOutline0;->m(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/settings/flipfont/FontListAdapter$RecyclerFooterViewHolder;

    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p0, p1, Lcom/samsung/android/settings/flipfont/FontListAdapter$RecyclerFooterViewHolder;->mFooterView:Landroid/view/View;

    return-object p1

    :cond_0
    if-nez p2, :cond_1

    const p0, 0x7f0d09f1

    invoke-static {p1, p0, p1, v0}, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter$$ExternalSyntheticOutline0;->m(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/settings/flipfont/FontListAdapter$RecyclerViewHolder;

    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p2, 0x1020014

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/samsung/android/settings/flipfont/FontListAdapter$RecyclerViewHolder;->mTitleView:Landroid/widget/TextView;

    const p2, 0x7f0a030e

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/RadioButton;

    iput-object p0, p1, Lcom/samsung/android/settings/flipfont/FontListAdapter$RecyclerViewHolder;->mCheckBoxView:Landroid/widget/RadioButton;

    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final setInitDownloadFontAndThemeFont()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getFontName(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/flipfont/FontListAdapter$FontList;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v1, v2, Lcom/samsung/android/settings/flipfont/FontListAdapter$FontList;->mListItemTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mListItems:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final setItemChecked(I)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-boolean v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mDownloadFontEnabled:Z

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mListItems:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/flipfont/FontListAdapter$FontList;

    if-ne p1, v2, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    iput-boolean v4, v3, Lcom/samsung/android/settings/flipfont/FontListAdapter$FontList;->mIsChecked:Z

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
