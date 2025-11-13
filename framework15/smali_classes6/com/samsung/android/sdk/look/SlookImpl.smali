.class public Lcom/samsung/android/sdk/look/SlookImpl;
.super Ljava/lang/Object;
.source "SlookImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/look/SlookImpl$VERSION_CODES;
    }
.end annotation


# static fields
.field private static final greylist AIRBUTTON:I = 0x1

.field private static final greylist COCKTAIL_BAR:I = 0x6

.field private static final greylist COCKTAIL_PANEL:I = 0x7

.field public static final greylist DEBUG:Z = true

.field private static final greylist SDK_INT:I

.field private static final greylist SMARTCLIP:I = 0x2

.field private static final greylist SPEN_HOVER_ICON:I = 0x4

.field private static final greylist WRITINGBUDDY:I = 0x3

.field private static greylist sCocktailLevel:I

.field private static greylist sHasMetaEdgeSingle:I

.field private static greylist sUspLevel:I


# direct methods
.method static constructor greylist <clinit>()V
    .locals 2

    const-string v0, "ro.slook.ver"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/look/SlookImpl;->SDK_INT:I

    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/sdk/look/SlookImpl;->sCocktailLevel:I

    sput v0, Lcom/samsung/android/sdk/look/SlookImpl;->sUspLevel:I

    sput v0, Lcom/samsung/android/sdk/look/SlookImpl;->sHasMetaEdgeSingle:I

    return-void
.end method

.method public constructor greylist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static greylist checkCocktailLevel()V
    .locals 4

    sget v0, Lcom/samsung/android/sdk/look/SlookImpl;->sCocktailLevel:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    if-eqz v0, :cond_3

    :try_start_0
    const-string v1, "com.sec.feature.cocktailbar"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    sput v1, Lcom/samsung/android/sdk/look/SlookImpl;->sCocktailLevel:I

    sget v1, Lcom/samsung/android/sdk/look/SlookImpl;->sCocktailLevel:I

    if-nez v1, :cond_2

    const-string v1, "com.sec.feature.cocktailpanel"

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x7

    :cond_1
    sput v2, Lcom/samsung/android/sdk/look/SlookImpl;->sCocktailLevel:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_3
    :goto_1
    return-void
.end method

.method private static greylist checkValidCocktailMetaData()V
    .locals 16

    sget v0, Lcom/samsung/android/sdk/look/SlookImpl;->sHasMetaEdgeSingle:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/sdk/look/SlookImpl;->sHasMetaEdgeSingle:I

    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v7

    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v8

    if-eqz v7, :cond_7

    if-nez v8, :cond_0

    goto/16 :goto_4

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-wide/16 v2, 0x80

    invoke-interface {v7, v8, v2, v3, v1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    move-object v9, v1

    if-eqz v9, :cond_6

    iget-object v1, v9, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v10, v1

    const-string v11, "edge_single"

    const-string v12, ""

    const-string v13, "com.samsung.android.cocktail.mode"

    const/4 v14, 0x1

    if-eqz v10, :cond_1

    :try_start_1
    invoke-virtual {v10, v13, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sput v14, Lcom/samsung/android/sdk/look/SlookImpl;->sHasMetaEdgeSingle:I

    :cond_1
    sget v1, Lcom/samsung/android/sdk/look/SlookImpl;->sHasMetaEdgeSingle:I

    if-nez v1, :cond_6

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.cocktail.action.COCKTAIL_UPDATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v15, v1

    invoke-virtual {v15, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    nop

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    const-wide/16 v4, 0x80

    move-object v1, v7

    move-object v2, v15

    invoke-interface/range {v1 .. v6}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_6

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v6, 0x40000

    and-int/2addr v5, v6

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_4

    invoke-virtual {v5, v13, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    sput v14, Lcom/samsung/android/sdk/look/SlookImpl;->sHasMetaEdgeSingle:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :cond_4
    move-object v10, v5

    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    :goto_3
    goto :goto_5

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5

    :cond_7
    :goto_4
    return-void

    :cond_8
    :goto_5
    return-void
.end method

.method public static greylist getVersionCode()I
    .locals 1

    sget v0, Lcom/samsung/android/sdk/look/SlookImpl;->SDK_INT:I

    return v0
.end method

.method public static greylist isFeatureEnabled(I)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    return v1

    :pswitch_1
    invoke-static {}, Lcom/samsung/android/sdk/look/SlookImpl;->checkCocktailLevel()V

    sget v2, Lcom/samsung/android/sdk/look/SlookImpl;->sCocktailLevel:I

    if-lez v2, :cond_0

    sget v2, Lcom/samsung/android/sdk/look/SlookImpl;->sCocktailLevel:I

    if-gt v2, p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :pswitch_2
    invoke-static {}, Lcom/samsung/android/sdk/look/SlookImpl;->checkCocktailLevel()V

    sget v2, Lcom/samsung/android/sdk/look/SlookImpl;->sCocktailLevel:I

    if-lez v2, :cond_1

    sget v2, Lcom/samsung/android/sdk/look/SlookImpl;->sCocktailLevel:I

    if-gt v2, p0, :cond_1

    return v0

    :cond_1
    sget v2, Lcom/samsung/android/sdk/look/SlookImpl;->sCocktailLevel:I

    if-lez v2, :cond_3

    invoke-static {}, Lcom/samsung/android/sdk/look/SlookImpl;->checkValidCocktailMetaData()V

    sget v2, Lcom/samsung/android/sdk/look/SlookImpl;->sHasMetaEdgeSingle:I

    if-ne v2, v0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    return v0

    :cond_3
    return v1

    :pswitch_3
    nop

    return v1

    :pswitch_4
    sget v2, Lcom/samsung/android/sdk/look/SlookImpl;->sUspLevel:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    nop

    :cond_4
    const/4 v2, 0x3

    const/4 v3, 0x2

    if-ne p0, v0, :cond_6

    sget v4, Lcom/samsung/android/sdk/look/SlookImpl;->sUspLevel:I

    if-lt v4, v3, :cond_5

    sget v3, Lcom/samsung/android/sdk/look/SlookImpl;->sUspLevel:I

    if-gt v3, v2, :cond_5

    goto :goto_2

    :cond_5
    move v0, v1

    :goto_2
    return v0

    :cond_6
    if-ne p0, v2, :cond_8

    sget v2, Lcom/samsung/android/sdk/look/SlookImpl;->sUspLevel:I

    if-lt v2, v3, :cond_7

    sget v2, Lcom/samsung/android/sdk/look/SlookImpl;->sUspLevel:I

    const/16 v3, 0x9

    if-gt v2, v3, :cond_7

    goto :goto_3

    :cond_7
    move v0, v1

    :goto_3
    return v0

    :cond_8
    sget v2, Lcom/samsung/android/sdk/look/SlookImpl;->sUspLevel:I

    if-lt v2, v3, :cond_9

    goto :goto_4

    :cond_9
    move v0, v1

    :goto_4
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
