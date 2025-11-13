.class public Lcom/samsung/android/cocktailbar/SemCocktailBarManager;
.super Ljava/lang/Object;
.source "SemCocktailBarManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cocktailbar/SemCocktailBarManager$CocktailBarStateChangedListener;
    }
.end annotation


# static fields
.field public static final whitelist COCKTAIL_CATEGORY_CONTEXTUAL:I = 0x10000

.field public static final whitelist COCKTAIL_CATEGORY_GLOBAL:I = 0x1

.field public static final whitelist COCKTAIL_CATEGORY_SECURE:I = 0x10

.field public static final whitelist COCKTAIL_DISPLAY_POLICY_ALL:I = 0x8f

.field public static final whitelist COCKTAIL_DISPLAY_POLICY_GENERAL:I = 0x1

.field public static final whitelist COCKTAIL_DISPLAY_POLICY_LOCKSCREEN:I = 0x2

.field public static final whitelist COCKTAIL_DISPLAY_POLICY_NOT_PROVISION:I = 0x80

.field public static final whitelist COCKTAIL_DISPLAY_POLICY_SCOVER:I = 0x4

.field public static final whitelist COCKTAIL_DISPLAY_POLICY_TABLE_MODE:I = 0x8

.field public static final whitelist COCKTAIL_VISIBILITY_HIDE:I = 0x2

.field public static final whitelist COCKTAIL_VISIBILITY_SHOW:I = 0x1

.field public static final blacklist INVALID_COCKTAIL_ID:I

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field protected blacklist mContext:Landroid/content/Context;

.field protected final blacklist mPackageName:Ljava/lang/String;

.field protected blacklist mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 43
    const-class v0, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/samsung/android/cocktailbar/ICocktailBarService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/samsung/android/cocktailbar/ICocktailBarService;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput-object p1, p0, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->mContext:Landroid/content/Context;

    .line 153
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->mPackageName:Ljava/lang/String;

    .line 154
    iput-object p2, p0, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    .line 155
    return-void
.end method

.method public static whitelist getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/SemCocktailBarManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 141
    const-string v0, "CocktailBarService"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;

    return-object v0
.end method

.method private blacklist getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v0, :cond_0

    .line 167
    const-string v0, "CocktailBarService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 168
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    .line 170
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    return-object v0
.end method


# virtual methods
.method public whitelist closeCocktail(I)V
    .locals 3
    .param p1, "cocktailId"    # I

    .line 336
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 337
    return-void

    .line 341
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v1, p0, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->mPackageName:Ljava/lang/String;

    const/high16 v2, 0x10000

    invoke-interface {v0, v1, p1, v2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->closeCocktail(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    nop

    .line 345
    return-void

    .line 342
    :catch_0
    move-exception v0

    .line 343
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist disableCocktail(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "provider"    # Landroid/content/ComponentName;

    .line 370
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 371
    return-void

    .line 374
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v1, p0, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->disableCocktail(Ljava/lang/String;Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    nop

    .line 378
    return-void

    .line 375
    :catch_0
    move-exception v0

    .line 376
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist getCocktailBarWindowType()I
    .locals 3

    .line 386
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 387
    const/4 v0, 0x0

    return v0

    .line 390
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->getCocktailBarStateInfo()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    move-result-object v0

    iget v0, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->windowType:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 391
    :catch_0
    move-exception v0

    .line 392
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist getCocktailIds(Landroid/content/ComponentName;)[I
    .locals 3
    .param p1, "provider"    # Landroid/content/ComponentName;

    .line 178
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 184
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v1, p0, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->getCocktailIds(Ljava/lang/String;Landroid/content/ComponentName;)[I

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 179
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 180
    .local v0, "cocktailIds":[I
    const/4 v1, 0x0

    aput v1, v0, v1

    .line 181
    return-object v0
.end method

.method public blacklist getContext()Landroid/content/Context;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public blacklist getSystemBarAppearance()I
    .locals 2

    .line 417
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 418
    return v1

    .line 421
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->getSystemBarAppearance()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 422
    :catch_0
    move-exception v0

    .line 423
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 425
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public whitelist isCocktailEnabled(Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "provider"    # Landroid/content/ComponentName;

    .line 194
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 198
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v1, p0, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->isEnabledCocktail(Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 195
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isCocktailEnabledInternal(Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "provider"    # Landroid/content/ComponentName;

    .line 209
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 213
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v1, p0, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->isCocktailEnabled(Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 210
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist notifyCocktailViewDataChanged(II)V
    .locals 3
    .param p1, "cocktailId"    # I
    .param p2, "viewId"    # I

    .line 354
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 355
    return-void

    .line 358
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v1, p0, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->notifyCocktailViewDataChanged(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    nop

    .line 362
    return-void

    .line 359
    :catch_0
    move-exception v0

    .line 360
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist registerStateListener(Lcom/samsung/android/cocktailbar/SemCocktailBarManager$CocktailBarStateChangedListener;)V
    .locals 2
    .param p1, "stateChangedlistener"    # Lcom/samsung/android/cocktailbar/SemCocktailBarManager$CocktailBarStateChangedListener;

    .line 402
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "resitered SemCocktailManager"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist showCocktail(I)V
    .locals 3
    .param p1, "cocktailId"    # I

    .line 318
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 319
    return-void

    .line 322
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v1, p0, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->showCocktail(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    nop

    .line 326
    return-void

    .line 323
    :catch_0
    move-exception v0

    .line 324
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist unregisterStateListener(Lcom/samsung/android/cocktailbar/SemCocktailBarManager$CocktailBarStateChangedListener;)V
    .locals 2
    .param p1, "stateChangedlistener"    # Lcom/samsung/android/cocktailbar/SemCocktailBarManager$CocktailBarStateChangedListener;

    .line 410
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "resitered SemCocktailManager"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist updateCocktail(IIILandroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .locals 4
    .param p1, "cocktailId"    # I
    .param p2, "displayPolicy"    # I
    .param p3, "category"    # I
    .param p4, "contentView"    # Landroid/widget/RemoteViews;
    .param p5, "helpView"    # Landroid/widget/RemoteViews;

    .line 230
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 231
    sget-object v0, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCocktail : service is not running "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 236
    .local v0, "configuration":Landroid/content/res/Configuration;
    :try_start_0
    new-instance v1, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    iget-object v2, p0, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;-><init>(Landroid/content/Context;)V

    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    .line 237
    invoke-virtual {v1, v2}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setOrientation(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setDiplayPolicy(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v1

    .line 238
    invoke-virtual {v1, p3}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setCategory(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setContentView(Landroid/widget/RemoteViews;)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, p5}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setHelpView(Landroid/widget/RemoteViews;)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v1

    .line 239
    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->build()Lcom/samsung/android/cocktailbar/CocktailInfo;

    move-result-object v1

    .line 240
    .local v1, "cocktailInfo":Lcom/samsung/android/cocktailbar/CocktailInfo;
    iget-object v2, p0, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v3, p0, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v2, v3, v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->updateCocktail(Ljava/lang/String;Lcom/samsung/android/cocktailbar/CocktailInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    .end local v1    # "cocktailInfo":Lcom/samsung/android/cocktailbar/CocktailInfo;
    nop

    .line 244
    return-void

    .line 241
    :catch_0
    move-exception v1

    .line 242
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "CocktailBarService dead?"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public whitelist updateCocktail(IIILjava/lang/Class;Landroid/os/Bundle;Landroid/widget/RemoteViews;)V
    .locals 5
    .param p1, "cocktailId"    # I
    .param p2, "displayPolicy"    # I
    .param p3, "category"    # I
    .param p5, "contentInfo"    # Landroid/os/Bundle;
    .param p6, "helpView"    # Landroid/widget/RemoteViews;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/Class<",
            "+",
            "Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel;",
            ">;",
            "Landroid/os/Bundle;",
            "Landroid/widget/RemoteViews;",
            ")V"
        }
    .end annotation

    .line 259
    .local p4, "panelClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel;>;"
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 260
    sget-object v0, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCocktail : service is not running "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    return-void

    .line 263
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 264
    .local v0, "classInfo":Landroid/content/ComponentName;
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 266
    .local v1, "configuration":Landroid/content/res/Configuration;
    :try_start_0
    new-instance v2, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    iget-object v3, p0, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;-><init>(Landroid/content/Context;)V

    iget v3, v1, Landroid/content/res/Configuration;->orientation:I

    .line 267
    invoke-virtual {v2, v3}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setOrientation(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setDiplayPolicy(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v2

    .line 268
    invoke-virtual {v2, p3}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setCategory(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, p6}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setHelpView(Landroid/widget/RemoteViews;)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, p5}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setContentInfo(Landroid/os/Bundle;)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v2

    .line 269
    invoke-virtual {v2, v0}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setClassloader(Landroid/content/ComponentName;)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->build()Lcom/samsung/android/cocktailbar/CocktailInfo;

    move-result-object v2

    .line 270
    .local v2, "cocktailInfo":Lcom/samsung/android/cocktailbar/CocktailInfo;
    iget-object v3, p0, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v4, p0, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v3, v4, v2, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->updateCocktail(Ljava/lang/String;Lcom/samsung/android/cocktailbar/CocktailInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    .end local v2    # "cocktailInfo":Lcom/samsung/android/cocktailbar/CocktailInfo;
    nop

    .line 274
    return-void

    .line 271
    :catch_0
    move-exception v2

    .line 272
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "CocktailBarService dead?"

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public whitelist updateCocktailHelpView(ILandroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "cocktailId"    # I
    .param p2, "helpViews"    # Landroid/widget/RemoteViews;

    .line 300
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 301
    return-void

    .line 304
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v1, p0, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p2, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->partiallyUpdateHelpView(Ljava/lang/String;Landroid/widget/RemoteViews;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    nop

    .line 308
    return-void

    .line 305
    :catch_0
    move-exception v0

    .line 306
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist updateCocktailView(ILandroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "cocktailId"    # I
    .param p2, "contentView"    # Landroid/widget/RemoteViews;

    .line 283
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 284
    return-void

    .line 287
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v1, p0, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p2, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->partiallyUpdateCocktail(Ljava/lang/String;Landroid/widget/RemoteViews;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    nop

    .line 291
    return-void

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
