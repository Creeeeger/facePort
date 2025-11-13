.class public Lcom/android/settingslib/net/UidDetailProvider;
.super Ljava/lang/Object;
.source "UidDetailProvider.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mUidDetailCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/settingslib/net/UidDetail;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/android/settingslib/net/UidDetailProvider;->mContext:Landroid/content/Context;

    .line 83
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    return-void
.end method

.method public static buildKeyForUser(I)I
    .locals 0

    rsub-int p0, p0, -0x7d0

    return p0
.end method

.method private buildUidDetail(I)Lcom/android/settingslib/net/UidDetail;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    const-string v2, "Error while building UI detail for uid "

    .line 122
    iget-object v3, v0, Lcom/android/settingslib/net/UidDetailProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 123
    iget-object v4, v0, Lcom/android/settingslib/net/UidDetailProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 128
    new-instance v5, Lcom/android/settingslib/net/UidDetail;

    invoke-direct {v5}, Lcom/android/settingslib/net/UidDetail;-><init>()V

    .line 129
    invoke-virtual {v4, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    .line 130
    invoke-virtual {v4}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v5, Lcom/android/settingslib/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    const/16 v6, -0x64

    if-eq v1, v6, :cond_10

    const/16 v6, 0x3e8

    if-eq v1, v6, :cond_f

    const/16 v6, 0x425

    if-eq v1, v6, :cond_e

    const/16 v6, 0x150a

    if-eq v1, v6, :cond_d

    const/4 v6, -0x5

    if-eq v1, v6, :cond_c

    const/4 v6, -0x4

    if-eq v1, v6, :cond_a

    .line 165
    iget-object v6, v0, Lcom/android/settingslib/net/UidDetailProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "user"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager;

    .line 168
    invoke-static/range {p1 .. p1}, Lcom/android/settingslib/net/UidDetailProvider;->isKeyForUser(I)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_1

    .line 169
    invoke-static/range {p1 .. p1}, Lcom/android/settingslib/net/UidDetailProvider;->getUserIdForKey(I)I

    move-result v7

    .line 170
    invoke-virtual {v6, v7}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 172
    iget-object v1, v0, Lcom/android/settingslib/net/UidDetailProvider;->mContext:Landroid/content/Context;

    invoke-static {v1, v7}, Lcom/android/settingslib/Utils;->getUserLabel(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/android/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    .line 173
    iget-object v1, v0, Lcom/android/settingslib/net/UidDetailProvider;->mContext:Landroid/content/Context;

    invoke-static {v1, v6, v7}, Lcom/android/settingslib/Utils;->getUserIcon(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v5, Lcom/android/settingslib/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    .line 175
    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    iget-object v1, v0, Lcom/android/settingslib/net/UidDetailProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "persona"

    .line 177
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/SemPersonaManager;

    .line 178
    iget v2, v7, Landroid/content/pm/UserInfo;->id:I

    iget-object v0, v0, Lcom/android/settingslib/net/UidDetailProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/knox/SemPersonaManager;->getContainerName(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/android/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    .line 179
    iget v0, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIcon(I)[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 181
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    array-length v2, v0

    invoke-static {v0, v8, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v1, v5, Lcom/android/settingslib/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-object v5

    :cond_1
    const/16 v0, 0xb54

    const-string v3, "DataUsage"

    if-lt v1, v0, :cond_3

    const/16 v0, 0xbb7

    if-gt v1, v0, :cond_3

    .line 194
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    .line 195
    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getDataUsageSystemUidPackages()Landroid/util/SparseArray;

    move-result-object v0

    .line 196
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 198
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0

    .line 200
    :cond_2
    invoke-virtual {v4, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    const-string v7, "System uid packageName null "

    .line 201
    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz v0, :cond_4

    .line 204
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "System uid names uid : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " packageNames : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 206
    :cond_3
    invoke-virtual {v4, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    .line 210
    array-length v7, v0

    goto :goto_2

    :cond_5
    move v7, v8

    .line 212
    :goto_2
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 213
    new-instance v10, Landroid/os/UserHandle;

    invoke-direct {v10, v9}, Landroid/os/UserHandle;-><init>(I)V

    .line 214
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v11

    const-wide/16 v12, 0x0

    const/4 v14, 0x1

    if-ne v7, v14, :cond_6

    .line 216
    aget-object v0, v0, v8

    invoke-interface {v11, v0, v12, v13, v9}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 219
    invoke-virtual {v0, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/android/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    .line 223
    invoke-virtual {v0, v4, v14, v14}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v9}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v6, v0, v4}, Landroid/os/UserManager;->getBadgedIconForUser(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v5, Lcom/android/settingslib/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_5

    :cond_6
    if-le v7, v14, :cond_8

    .line 228
    new-array v15, v7, [Ljava/lang/CharSequence;

    iput-object v15, v5, Lcom/android/settingslib/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    .line 229
    new-array v15, v7, [Ljava/lang/CharSequence;

    iput-object v15, v5, Lcom/android/settingslib/net/UidDetail;->detailContentDescriptions:[Ljava/lang/CharSequence;

    move v15, v8

    :goto_3
    if-ge v15, v7, :cond_8

    .line 231
    aget-object v14, v0, v15

    .line 232
    invoke-virtual {v4, v14, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v12

    move/from16 v16, v7

    const-wide/16 v7, 0x0

    .line 233
    invoke-interface {v11, v14, v7, v8, v9}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    if-eqz v13, :cond_7

    .line 237
    iget-object v7, v5, Lcom/android/settingslib/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    invoke-virtual {v13, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v15

    .line 238
    iget-object v7, v5, Lcom/android/settingslib/net/UidDetail;->detailContentDescriptions:[Ljava/lang/CharSequence;

    iget-object v8, v5, Lcom/android/settingslib/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    aget-object v8, v8, v15

    invoke-virtual {v6, v8, v10}, Landroid/os/UserManager;->getBadgedLabelForUser(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v8

    aput-object v8, v7, v15

    .line 240
    iget v7, v12, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    if-eqz v7, :cond_7

    .line 241
    iget-object v8, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v14, v7, v8}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 242
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/android/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    const/4 v7, 0x1

    .line 245
    invoke-virtual {v13, v4, v7, v7}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v8, v10}, Landroid/os/UserManager;->getBadgedIconForUser(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, v5, Lcom/android/settingslib/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_4

    :cond_7
    const/4 v7, 0x1

    :goto_4
    add-int/lit8 v15, v15, 0x1

    move v14, v7

    move/from16 v7, v16

    const/4 v8, 0x0

    const-wide/16 v12, 0x0

    goto :goto_3

    .line 251
    :cond_8
    :goto_5
    iget-object v0, v5, Lcom/android/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-virtual {v6, v0, v10}, Landroid/os/UserManager;->getBadgedLabelForUser(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v5, Lcom/android/settingslib/net/UidDetail;->contentDescription:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    .line 255
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :catch_1
    move-exception v0

    .line 253
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 258
    :goto_6
    iget-object v0, v5, Lcom/android/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 259
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/android/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    :cond_9
    return-object v5

    .line 139
    :cond_a
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 140
    sget v0, Lcom/android/settingslib/R$string;->data_usage_uninstalled_apps_users:I

    goto :goto_7

    .line 141
    :cond_b
    sget v0, Lcom/android/settingslib/R$string;->data_usage_uninstalled_apps:I

    .line 139
    :goto_7
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/android/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    .line 142
    invoke-virtual {v4}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v5, Lcom/android/settingslib/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    return-object v5

    .line 145
    :cond_c
    iget-object v0, v0, Lcom/android/settingslib/net/UidDetailProvider;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/TetheringManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/TetheringManager;

    .line 146
    invoke-static {v0}, Lcom/android/settingslib/Utils;->getTetheringLabel(Landroid/net/TetheringManager;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/android/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    .line 147
    invoke-virtual {v4}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v5, Lcom/android/settingslib/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    return-object v5

    .line 159
    :cond_d
    sget v0, Lcom/android/settingslib/R$string;->sec_remote_display:I

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/android/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    .line 160
    invoke-virtual {v4}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v5, Lcom/android/settingslib/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    return-object v5

    .line 150
    :cond_e
    sget v1, Lcom/android/settingslib/R$string;->data_usage_ota:I

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/android/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    .line 151
    iget-object v0, v0, Lcom/android/settingslib/net/UidDetailProvider;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settingslib/R$drawable;->ic_system_update:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v5, Lcom/android/settingslib/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    return-object v5

    .line 135
    :cond_f
    sget v0, Lcom/android/settingslib/R$string;->process_kernel_label:I

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/android/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    .line 136
    invoke-virtual {v4}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v5, Lcom/android/settingslib/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    return-object v5

    .line 155
    :cond_10
    sget v0, Lcom/android/settingslib/R$string;->sec_video_call_title:I

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/android/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    .line 156
    sget v0, Lcom/android/settingslib/R$drawable;->sec_icon_volte:I

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v5, Lcom/android/settingslib/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    return-object v5
.end method

.method public static getUserIdForKey(I)I
    .locals 0

    rsub-int p0, p0, -0x7d0

    return p0
.end method

.method public static isKeyForUser(I)Z
    .locals 1

    const/16 v0, -0x7d0

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public clearCache()V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/android/settingslib/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    monitor-enter v0

    .line 88
    :try_start_0
    iget-object p0, p0, Lcom/android/settingslib/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 89
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getUidDetail(IZ)Lcom/android/settingslib/net/UidDetail;
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/android/settingslib/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    monitor-enter v0

    .line 99
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/net/UidDetail;

    .line 100
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    if-nez p2, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 108
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settingslib/net/UidDetailProvider;->buildUidDetail(I)Lcom/android/settingslib/net/UidDetail;

    move-result-object p2

    .line 110
    iget-object v1, p0, Lcom/android/settingslib/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    monitor-enter v1

    .line 111
    :try_start_1
    iget-object p0, p0, Lcom/android/settingslib/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 112
    monitor-exit v1

    return-object p2

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 100
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method
