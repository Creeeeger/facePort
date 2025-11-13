.class public Lcom/android/internal/app/ResolverListController;
.super Ljava/lang/Object;
.source "ResolverListController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ResolverListController$ComputeCallback;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field public static final blacklist DOCUMENTS_UI_POLICY:Ljava/lang/String; = "DocumentsUIPolicy"

.field public static final blacklist DOCUMENTS_UI_POLICY_SEC:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "ResolverListController"


# instance fields
.field private blacklist isComputed:Z

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mDropsDocumentsUI:Z

.field private final blacklist mLaunchedFromUid:I

.field private final blacklist mReferrerPackage:Ljava/lang/String;

.field private blacklist mResolverComparator:Lcom/android/internal/app/AbstractResolverComparator;

.field private blacklist mSupportAlwaysUseOption:Z

.field private final blacklist mTargetIntent:Landroid/content/Intent;

.field private final blacklist mUserHandle:Landroid/os/UserHandle;

.field private final blacklist mpm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;ILandroid/os/UserHandle;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;
    .param p3, "targetIntent"    # Landroid/content/Intent;
    .param p4, "referrerPackage"    # Ljava/lang/String;
    .param p5, "launchedFromUid"    # I
    .param p6, "userHandle"    # Landroid/os/UserHandle;

    .line 88
    new-instance v7, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/android/internal/app/AbstractResolverComparator$AfterCompute;Lcom/android/internal/app/ChooserActivityLogger;)V

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/app/ResolverListController;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;ILandroid/os/UserHandle;Lcom/android/internal/app/AbstractResolverComparator;)V

    .line 91
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;ILandroid/os/UserHandle;Lcom/android/internal/app/AbstractResolverComparator;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;
    .param p3, "targetIntent"    # Landroid/content/Intent;
    .param p4, "referrerPackage"    # Ljava/lang/String;
    .param p5, "launchedFromUid"    # I
    .param p6, "userHandle"    # Landroid/os/UserHandle;
    .param p7, "resolverComparator"    # Lcom/android/internal/app/AbstractResolverComparator;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverListController;->isComputed:Z

    .line 78
    iput-boolean v0, p0, Lcom/android/internal/app/ResolverListController;->mSupportAlwaysUseOption:Z

    .line 101
    iput-object p1, p0, Lcom/android/internal/app/ResolverListController;->mContext:Landroid/content/Context;

    .line 102
    iput-object p2, p0, Lcom/android/internal/app/ResolverListController;->mpm:Landroid/content/pm/PackageManager;

    .line 103
    iput p5, p0, Lcom/android/internal/app/ResolverListController;->mLaunchedFromUid:I

    .line 104
    iput-object p3, p0, Lcom/android/internal/app/ResolverListController;->mTargetIntent:Landroid/content/Intent;

    .line 105
    iput-object p4, p0, Lcom/android/internal/app/ResolverListController;->mReferrerPackage:Ljava/lang/String;

    .line 106
    iput-object p6, p0, Lcom/android/internal/app/ResolverListController;->mUserHandle:Landroid/os/UserHandle;

    .line 107
    iput-object p7, p0, Lcom/android/internal/app/ResolverListController;->mResolverComparator:Lcom/android/internal/app/AbstractResolverComparator;

    .line 108
    return-void
.end method

.method private blacklist compute(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 363
    .local p1, "inputList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    iget-object v0, p0, Lcom/android/internal/app/ResolverListController;->mResolverComparator:Lcom/android/internal/app/AbstractResolverComparator;

    if-nez v0, :cond_0

    .line 364
    const-string v0, "ResolverListController"

    const-string v1, "Comparator has already been destroyed; skipped."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    return-void

    .line 367
    :cond_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 368
    .local v0, "finishComputeSignal":Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Lcom/android/internal/app/ResolverListController$ComputeCallback;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/app/ResolverListController$ComputeCallback;-><init>(Lcom/android/internal/app/ResolverListController;Ljava/util/concurrent/CountDownLatch;)V

    .line 369
    .local v2, "callback":Lcom/android/internal/app/ResolverListController$ComputeCallback;
    iget-object v3, p0, Lcom/android/internal/app/ResolverListController;->mResolverComparator:Lcom/android/internal/app/AbstractResolverComparator;

    invoke-virtual {v3, v2}, Lcom/android/internal/app/AbstractResolverComparator;->setCallBack(Lcom/android/internal/app/AbstractResolverComparator$AfterCompute;)V

    .line 370
    iget-object v3, p0, Lcom/android/internal/app/ResolverListController;->mResolverComparator:Lcom/android/internal/app/AbstractResolverComparator;

    invoke-virtual {v3, p1}, Lcom/android/internal/app/AbstractResolverComparator;->compute(Ljava/util/List;)V

    .line 371
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 372
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverListController;->isComputed:Z

    .line 373
    return-void
.end method

.method private blacklist getResolversForIntentAsUserInternal(Ljava/util/List;Landroid/os/UserHandle;I)Ljava/util/List;
    .locals 9
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .param p3, "baseFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;",
            "Landroid/os/UserHandle;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;"
        }
    .end annotation

    .line 152
    .local p1, "intents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    const/4 v0, 0x0

    .line 153
    .local v0, "resolvedComponents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "N":I
    :goto_0
    if-ge v1, v2, :cond_6

    .line 154
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 155
    .local v3, "intent":Landroid/content/Intent;
    move v4, p3

    .line 156
    .local v4, "flags":I
    invoke-virtual {v3}, Landroid/content/Intent;->isWebIntent()Z

    move-result v5

    if-nez v5, :cond_0

    .line 157
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v5

    and-int/lit16 v5, v5, 0x800

    if-eqz v5, :cond_1

    .line 158
    :cond_0
    const/high16 v5, 0x800000

    or-int/2addr v4, v5

    .line 161
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Landroid/content/Intent;

    if-ne v5, v6, :cond_2

    move-object v5, v3

    goto :goto_1

    :cond_2
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    :goto_1
    move-object v3, v5

    .line 162
    iget-object v5, p0, Lcom/android/internal/app/ResolverListController;->mpm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v3, v4, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)Ljava/util/List;

    move-result-object v5

    .line 164
    .local v5, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v5, :cond_5

    .line 165
    if-nez v0, :cond_3

    .line 166
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v6

    .line 168
    :cond_3
    invoke-virtual {p0, v0, v3, v5}, Lcom/android/internal/app/ResolverListController;->addResolveListDedupe(Ljava/util/List;Landroid/content/Intent;Ljava/util/List;)V

    .line 169
    if-nez v1, :cond_5

    .line 170
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .local v6, "k":I
    :goto_2
    if-ltz v6, :cond_5

    .line 171
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    const/4 v8, 0x0

    .line 172
    invoke-virtual {v7, v8}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 174
    .local v7, "ai":Landroid/content/pm/ActivityInfo;
    invoke-virtual {v7}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/app/ResolverListController;->semIsComponentDropped(Landroid/content/ComponentName;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 175
    invoke-interface {v0, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 170
    .end local v7    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_4
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 153
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "flags":I
    .end local v5    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v6    # "k":I
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 181
    .end local v1    # "i":I
    .end local v2    # "N":I
    :cond_6
    return-object v0
.end method

.method private static blacklist isSameResolvedComponent(Landroid/content/pm/ResolveInfo;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)Z
    .locals 3
    .param p0, "a"    # Landroid/content/pm/ResolveInfo;
    .param p1, "b"    # Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 452
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 453
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    .line 454
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 453
    :goto_0
    return v1
.end method


# virtual methods
.method public blacklist addResolveListDedupe(Ljava/util/List;Landroid/content/Intent;Ljava/util/List;)V
    .locals 11
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .line 195
    .local p1, "into":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    .local p3, "from":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v0, "ResolverListController"

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "DocumentsUIPolicy"

    const/4 v3, 0x0

    .line 196
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 197
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverListController;->mDropsDocumentsUI:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :cond_0
    goto :goto_0

    .line 199
    :catch_0
    move-exception v2

    .line 200
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Exception occures while getting values from current intent !"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    .line 204
    .local v2, "fromCount":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 205
    .local v3, "intoCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_6

    .line 206
    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 207
    .local v5, "newInfo":Landroid/content/pm/ResolveInfo;
    const/4 v6, 0x0

    .line 208
    .local v6, "found":Z
    iget-boolean v7, p0, Lcom/android/internal/app/ResolverListController;->mSupportAlwaysUseOption:Z

    if-eqz v7, :cond_1

    .line 209
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "newInfo = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v8}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_1
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_2
    if-ge v7, v3, :cond_3

    .line 213
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 214
    .local v8, "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    invoke-static {v5, v8}, Lcom/android/internal/app/ResolverListController;->isSameResolvedComponent(Landroid/content/pm/ResolveInfo;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 215
    const/4 v6, 0x1

    .line 216
    invoke-virtual {v8, p2, v5}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->add(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    .line 217
    goto :goto_3

    .line 212
    .end local v8    # "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 220
    .end local v7    # "j":I
    :cond_3
    :goto_3
    if-nez v6, :cond_5

    .line 221
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .local v7, "name":Landroid/content/ComponentName;
    new-instance v8, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    invoke-direct {v8, v7, p2, v5}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;-><init>(Landroid/content/ComponentName;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    .line 225
    .restart local v8    # "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    sget-boolean v9, Lcom/samsung/android/rune/ViewRune;->SHAREVIA_SUPPORT_SECURE_FOLDER_PRIVATE_SHARE:Z

    if-eqz v9, :cond_4

    .line 226
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverListController;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    invoke-static {v9}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 227
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "com.samsung.android.privateshare/com.samsung.android.privacy.view.MainActivity"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 228
    invoke-virtual {v8, v1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->setPinned(Z)V

    .line 238
    :cond_4
    invoke-interface {p1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    .end local v5    # "newInfo":Landroid/content/pm/ResolveInfo;
    .end local v6    # "found":Z
    .end local v7    # "name":Landroid/content/ComponentName;
    .end local v8    # "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 241
    .end local v4    # "i":I
    :cond_6
    return-void
.end method

.method public blacklist destroy()V
    .locals 1

    .line 492
    iget-object v0, p0, Lcom/android/internal/app/ResolverListController;->mResolverComparator:Lcom/android/internal/app/AbstractResolverComparator;

    if-eqz v0, :cond_0

    .line 493
    invoke-virtual {v0}, Lcom/android/internal/app/AbstractResolverComparator;->destroy()V

    .line 495
    :cond_0
    return-void
.end method

.method public blacklist filterIneligibleActivities(Ljava/util/List;Z)Ljava/util/ArrayList;
    .locals 7
    .param p2, "returnCopyOfOriginalListIfModified"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;Z)",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;"
        }
    .end annotation

    .line 267
    .local p1, "inputList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    const/4 v0, 0x0

    .line 268
    .local v0, "listToReturn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 269
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    const/4 v3, 0x0

    .line 270
    invoke-virtual {v2, v3}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 271
    .local v2, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    iget v4, p0, Lcom/android/internal/app/ResolverListController;->mLaunchedFromUid:I

    iget-object v5, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v6, v2, Landroid/content/pm/ActivityInfo;->exported:Z

    invoke-static {v3, v4, v5, v6}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v3

    .line 275
    .local v3, "granted":I
    if-nez v3, :cond_0

    .line 276
    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/app/ResolverListController;->isComponentFiltered(Landroid/content/ComponentName;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 279
    :cond_0
    if-eqz p2, :cond_1

    if-nez v0, :cond_1

    .line 280
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v4

    .line 283
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "filterIneligibleActivities: granted = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", permission = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", exported = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v2, Landroid/content/pm/ActivityInfo;->exported:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", cmp = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 286
    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 283
    const-string v5, "ResolverListController"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 268
    .end local v2    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v3    # "granted":I
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 291
    .end local v1    # "i":I
    :cond_3
    return-object v0
.end method

.method public blacklist filterLowPriority(Ljava/util/List;Z)Ljava/util/ArrayList;
    .locals 9
    .param p2, "returnCopyOfOriginalListIfModified"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;Z)",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;"
        }
    .end annotation

    .line 302
    .local p1, "inputList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    const/4 v0, 0x0

    .line 305
    .local v0, "listToReturn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 306
    .local v2, "rci0":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    invoke-virtual {v2, v1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 307
    .local v3, "r0":Landroid/content/pm/ResolveInfo;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 308
    .local v4, "N":I
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_5

    .line 309
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    invoke-virtual {v6, v1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 316
    .local v6, "ri":Landroid/content/pm/ResolveInfo;
    iget v7, v3, Landroid/content/pm/ResolveInfo;->priority:I

    iget v8, v6, Landroid/content/pm/ResolveInfo;->priority:I

    if-ne v7, v8, :cond_0

    iget-boolean v7, v3, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v8, v6, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v7, v8, :cond_4

    .line 318
    :cond_0
    :goto_1
    if-ge v5, v4, :cond_4

    .line 319
    if-eqz p2, :cond_1

    if-nez v0, :cond_1

    .line 320
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v7

    .line 327
    :cond_1
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".documentsui"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-boolean v7, p0, Lcom/android/internal/app/ResolverListController;->mDropsDocumentsUI:Z

    if-eqz v7, :cond_3

    .line 329
    if-eqz v0, :cond_2

    .line 330
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 332
    :cond_2
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 333
    add-int/lit8 v4, v4, -0x1

    .line 334
    move v5, v4

    .line 335
    goto :goto_2

    .line 337
    :cond_3
    invoke-interface {p1, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 338
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 308
    .end local v6    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 345
    .end local v5    # "i":I
    :cond_5
    return-object v0
.end method

.method public blacklist getLastChosen()Landroid/content/pm/ResolveInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverListController;->mTargetIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/internal/app/ResolverListController;->mContext:Landroid/content/Context;

    .line 113
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    .line 112
    const/high16 v3, 0x10000

    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getResolversForIntent(ZZLjava/util/List;)Ljava/util/List;
    .locals 1
    .param p1, "shouldGetResolvedFilter"    # Z
    .param p2, "shouldGetActivityMetadata"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;"
        }
    .end annotation

    .line 131
    .local p3, "intents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    iget-object v0, p0, Lcom/android/internal/app/ResolverListController;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/app/ResolverListController;->getResolversForIntentAsUser(ZZLjava/util/List;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getResolversForIntentAsUser(ZZLjava/util/List;Landroid/os/UserHandle;)Ljava/util/List;
    .locals 3
    .param p1, "shouldGetResolvedFilter"    # Z
    .param p2, "shouldGetActivityMetadata"    # Z
    .param p4, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;"
        }
    .end annotation

    .line 140
    .local p3, "intents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    nop

    .line 143
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/16 v1, 0x40

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const/high16 v2, 0xd0000

    or-int/2addr v1, v2

    .line 144
    if-eqz p2, :cond_1

    const/16 v0, 0x80

    :cond_1
    or-int/2addr v0, v1

    .line 145
    .local v0, "baseFlags":I
    invoke-direct {p0, p3, p4, v0}, Lcom/android/internal/app/ResolverListController;->getResolversForIntentAsUserInternal(Ljava/util/List;Landroid/os/UserHandle;I)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getScore(Landroid/content/ComponentName;)F
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 473
    iget-object v0, p0, Lcom/android/internal/app/ResolverListController;->mResolverComparator:Lcom/android/internal/app/AbstractResolverComparator;

    if-nez v0, :cond_0

    .line 474
    const/4 v0, 0x0

    return v0

    .line 476
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/internal/app/AbstractResolverComparator;->getScore(Landroid/content/ComponentName;)F

    move-result v0

    return v0
.end method

.method public blacklist getScore(Lcom/android/internal/app/chooser/DisplayResolveInfo;)F
    .locals 2
    .param p1, "target"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 463
    iget-object v0, p0, Lcom/android/internal/app/ResolverListController;->mResolverComparator:Lcom/android/internal/app/AbstractResolverComparator;

    if-nez v0, :cond_0

    .line 464
    const/4 v0, 0x0

    return v0

    .line 466
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AbstractResolverComparator;->getScore(Landroid/content/ComponentName;)F

    move-result v0

    return v0
.end method

.method public blacklist getUserHandle()Landroid/os/UserHandle;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/android/internal/app/ResolverListController;->mUserHandle:Landroid/os/UserHandle;

    return-object v0
.end method

.method blacklist isComponentFiltered(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 458
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isComponentPinned(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 249
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isFixedAtTop(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 257
    const/4 v0, 0x0

    return v0
.end method

.method synthetic blacklist lambda$topK$0$com-android-internal-app-ResolverListController(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)I
    .locals 1
    .param p1, "o1"    # Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .param p2, "o2"    # Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 414
    iget-object v0, p0, Lcom/android/internal/app/ResolverListController;->mResolverComparator:Lcom/android/internal/app/AbstractResolverComparator;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/AbstractResolverComparator;->compare(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method public blacklist semCheckMetadataExist(Landroid/content/pm/ResolveInfo;)Z
    .locals 1
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .line 507
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist semGetChooserCount(Landroid/content/ComponentName;)F
    .locals 1
    .param p1, "cn"    # Landroid/content/ComponentName;

    .line 574
    iget-object v0, p0, Lcom/android/internal/app/ResolverListController;->mResolverComparator:Lcom/android/internal/app/AbstractResolverComparator;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/AbstractResolverComparator;->semGetChooserCount(Landroid/content/ComponentName;)F

    move-result v0

    return v0
.end method

.method public blacklist semGetComponentPinnedTime(Landroid/content/ComponentName;)J
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 511
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist semGetPinnedSharedPrefs()Landroid/content/SharedPreferences;
    .locals 1

    .line 503
    const/4 v0, 0x0

    return-object v0
.end method

.method blacklist semIsComponentDropped(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 499
    const/4 v0, 0x0

    return v0
.end method

.method blacklist semSetPrePinComponent(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)V
    .locals 17
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "ri"    # Landroid/content/pm/ResolveInfo;

    .line 519
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverListController;->semGetPinnedSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 520
    .local v1, "sp":Landroid/content/SharedPreferences;
    if-eqz v1, :cond_6

    .line 521
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    .line 522
    .local v2, "key":Ljava/lang/String;
    const/4 v3, 0x0

    .line 523
    .local v3, "currentValue":Z
    const-wide/16 v4, 0x0

    .line 524
    .local v4, "saveTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 527
    .local v6, "currentTime":J
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x0

    invoke-interface {v1, v0, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v0

    .line 530
    goto :goto_0

    .line 528
    :catch_0
    move-exception v0

    .line 533
    :goto_0
    const-wide/16 v8, 0x0

    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-wide v4, v10

    .line 536
    goto :goto_1

    .line 534
    :catch_1
    move-exception v0

    .line 538
    :goto_1
    const-string v0, "com.samsung.android.app.sharelive/com.samsung.android.app.sharelive.presentation.main.MainActivity"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v10, "ClassCastException, keyToCheckCorrupt = "

    const-string v11, "ResolverListController"

    const-string v12, "_corrupt"

    if-nez v0, :cond_3

    const-string v0, "com.google.android.gms/com.google.android.gms.nearby.sharing.ShareSheetActivity"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object/from16 v13, p0

    move-object/from16 v14, p2

    goto :goto_2

    .line 553
    :cond_0
    move-object/from16 v13, p0

    move-object/from16 v14, p2

    invoke-virtual {v13, v14}, Lcom/android/internal/app/ResolverListController;->semCheckMetadataExist(Landroid/content/pm/ResolveInfo;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 554
    if-nez v3, :cond_7

    cmp-long v0, v4, v8

    if-eqz v0, :cond_1

    goto/16 :goto_4

    .line 557
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 560
    .local v12, "keyToCheckCorrupt":Ljava/lang/String;
    :try_start_2
    invoke-interface {v1, v12, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v15

    cmp-long v0, v15, v8

    if-nez v0, :cond_2

    .line 561
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    .line 565
    :cond_2
    goto :goto_4

    .line 563
    :catch_2
    move-exception v0

    .line 564
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 538
    .end local v0    # "e":Ljava/lang/ClassCastException;
    .end local v12    # "keyToCheckCorrupt":Ljava/lang/String;
    :cond_3
    move-object/from16 v13, p0

    move-object/from16 v14, p2

    .line 539
    :goto_2
    if-nez v3, :cond_7

    cmp-long v0, v4, v8

    if-eqz v0, :cond_4

    goto :goto_4

    .line 542
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 545
    .restart local v12    # "keyToCheckCorrupt":Ljava/lang/String;
    :try_start_3
    invoke-interface {v1, v12, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v15

    cmp-long v0, v15, v8

    if-nez v0, :cond_5

    .line 547
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    .line 551
    :cond_5
    goto :goto_3

    .line 549
    :catch_3
    move-exception v0

    .line 550
    .restart local v0    # "e":Ljava/lang/ClassCastException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    .end local v0    # "e":Ljava/lang/ClassCastException;
    .end local v12    # "keyToCheckCorrupt":Ljava/lang/String;
    :goto_3
    goto :goto_4

    .line 520
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "currentValue":Z
    .end local v4    # "saveTime":J
    .end local v6    # "currentTime":J
    :cond_6
    move-object/from16 v13, p0

    move-object/from16 v14, p2

    .line 569
    :cond_7
    :goto_4
    return-void
.end method

.method public blacklist semSetSupportAlwaysUseOption(Z)V
    .locals 0
    .param p1, "set"    # Z

    .line 515
    iput-boolean p1, p0, Lcom/android/internal/app/ResolverListController;->mSupportAlwaysUseOption:Z

    .line 516
    return-void
.end method

.method public blacklist setLastChosen(Landroid/content/Intent;Landroid/content/IntentFilter;I)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "match"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 120
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverListController;->mContext:Landroid/content/Context;

    .line 121
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    .line 123
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    .line 120
    const/high16 v3, 0x10000

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v6}, Landroid/content/pm/IPackageManager;->setLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/IntentFilter;ILandroid/content/ComponentName;)V

    .line 124
    return-void
.end method

.method public blacklist sort(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;)V"
        }
    .end annotation

    .line 379
    .local p1, "inputList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 380
    .local v0, "beforeRank":J
    iget-boolean v2, p0, Lcom/android/internal/app/ResolverListController;->isComputed:Z

    if-nez v2, :cond_0

    .line 381
    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverListController;->compute(Ljava/util/List;)V

    .line 383
    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/ResolverListController;->mResolverComparator:Lcom/android/internal/app/AbstractResolverComparator;

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 385
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    .end local v0    # "beforeRank":J
    goto :goto_0

    .line 389
    :catch_0
    move-exception v0

    .line 390
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Compute & Sort was interrupted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ResolverListController"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    return-void
.end method

.method public blacklist topK(Ljava/util/List;I)V
    .locals 9
    .param p2, "k"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;I)V"
        }
    .end annotation

    .line 397
    .local p1, "inputList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    if-gtz p2, :cond_0

    goto/16 :goto_4

    .line 400
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p2, :cond_1

    .line 403
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverListController;->sort(Ljava/util/List;)V

    .line 404
    return-void

    .line 407
    :cond_1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 408
    .local v0, "beforeRank":J
    iget-boolean v2, p0, Lcom/android/internal/app/ResolverListController;->isComputed:Z

    if-nez v2, :cond_2

    .line 409
    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverListController;->compute(Ljava/util/List;)V

    .line 413
    :cond_2
    new-instance v2, Ljava/util/PriorityQueue;

    new-instance v3, Lcom/android/internal/app/ResolverListController$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/internal/app/ResolverListController$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/ResolverListController;)V

    invoke-direct {v2, p2, v3}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 415
    .local v2, "minHeap":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 418
    .local v3, "size":I
    add-int/lit8 v4, v3, -0x1

    .line 419
    .local v4, "pointer":I
    sub-int v5, v3, p2

    invoke-interface {p1, v5, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/PriorityQueue;->addAll(Ljava/util/Collection;)Z

    .line 420
    sub-int v5, v3, p2

    add-int/lit8 v5, v5, -0x1

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_4

    .line 421
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 422
    .local v6, "ci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    iget-object v7, p0, Lcom/android/internal/app/ResolverListController;->mResolverComparator:Lcom/android/internal/app/AbstractResolverComparator;

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    invoke-virtual {v7, v6, v8}, Lcom/android/internal/app/AbstractResolverComparator;->compare(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)I

    move-result v7

    neg-int v7, v7

    if-lez v7, :cond_3

    .line 425
    add-int/lit8 v7, v4, -0x1

    .end local v4    # "pointer":I
    .local v7, "pointer":I
    invoke-virtual {v2}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    invoke-interface {p1, v4, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 426
    invoke-virtual {v2, v6}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    move v4, v7

    goto :goto_1

    .line 430
    .end local v7    # "pointer":I
    .restart local v4    # "pointer":I
    :cond_3
    add-int/lit8 v7, v4, -0x1

    .end local v4    # "pointer":I
    .restart local v7    # "pointer":I
    invoke-interface {p1, v4, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v4, v7

    .line 420
    .end local v6    # "ci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .end local v7    # "pointer":I
    .restart local v4    # "pointer":I
    :goto_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 436
    .end local v5    # "i":I
    :cond_4
    :goto_2
    invoke-virtual {v2}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 437
    add-int/lit8 v5, v4, -0x1

    .end local v4    # "pointer":I
    .local v5, "pointer":I
    invoke-virtual {v2}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    invoke-interface {p1, v4, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v4, v5

    goto :goto_2

    .line 440
    .end local v5    # "pointer":I
    .restart local v4    # "pointer":I
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    .end local v0    # "beforeRank":J
    .end local v2    # "minHeap":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    .end local v3    # "size":I
    .end local v4    # "pointer":I
    goto :goto_3

    .line 445
    :catch_0
    move-exception v0

    .line 446
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Compute & greatestOf was interrupted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ResolverListController"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_3
    return-void

    .line 398
    :cond_6
    :goto_4
    return-void
.end method

.method public blacklist updateChooserCounts(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "action"    # Ljava/lang/String;

    .line 486
    iget-object v0, p0, Lcom/android/internal/app/ResolverListController;->mResolverComparator:Lcom/android/internal/app/AbstractResolverComparator;

    if-eqz v0, :cond_0

    .line 487
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/app/AbstractResolverComparator;->updateChooserCounts(Ljava/lang/String;ILjava/lang/String;)V

    .line 489
    :cond_0
    return-void
.end method

.method public blacklist updateModel(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 480
    iget-object v0, p0, Lcom/android/internal/app/ResolverListController;->mResolverComparator:Lcom/android/internal/app/AbstractResolverComparator;

    if-eqz v0, :cond_0

    .line 481
    invoke-virtual {v0, p1}, Lcom/android/internal/app/AbstractResolverComparator;->updateModel(Landroid/content/ComponentName;)V

    .line 483
    :cond_0
    return-void
.end method
