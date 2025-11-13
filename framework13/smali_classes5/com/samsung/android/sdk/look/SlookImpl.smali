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
.field private static final blacklist AIRBUTTON:I = 0x1

.field private static final blacklist COCKTAIL_BAR:I = 0x6

.field private static final blacklist COCKTAIL_PANEL:I = 0x7

.field public static final blacklist DEBUG:Z = true

.field private static final blacklist SDK_INT:I

.field private static final blacklist SMARTCLIP:I = 0x2

.field private static final blacklist SPEN_HOVER_ICON:I = 0x4

.field private static final blacklist WRITINGBUDDY:I = 0x3

.field private static blacklist sCocktailLevel:I

.field private static blacklist sHasMetaEdgeSingle:I

.field private static blacklist sUspLevel:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 29
    const-string/jumbo v0, "ro.slook.ver"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/look/SlookImpl;->SDK_INT:I

    .line 66
    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/sdk/look/SlookImpl;->sCocktailLevel:I

    .line 68
    sput v0, Lcom/samsung/android/sdk/look/SlookImpl;->sUspLevel:I

    .line 70
    sput v0, Lcom/samsung/android/sdk/look/SlookImpl;->sHasMetaEdgeSingle:I

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist checkCocktailLevel()V
    .locals 4

    .line 141
    sget v0, Lcom/samsung/android/sdk/look/SlookImpl;->sCocktailLevel:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 142
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 143
    .local v0, "pm":Landroid/content/pm/IPackageManager;
    if-eqz v0, :cond_3

    .line 145
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

    .line 146
    if-nez v1, :cond_2

    .line 147
    const-string v1, "com.sec.feature.cocktailpanel"

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x7

    :cond_1
    sput v2, Lcom/samsung/android/sdk/look/SlookImpl;->sCocktailLevel:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :cond_2
    goto :goto_1

    .line 149
    :catch_0
    move-exception v1

    .line 150
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 154
    .end local v0    # "pm":Landroid/content/pm/IPackageManager;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_1
    return-void
.end method

.method private static blacklist checkValidCocktailMetaData()V
    .locals 16

    .line 157
    sget v0, Lcom/samsung/android/sdk/look/SlookImpl;->sHasMetaEdgeSingle:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 158
    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/sdk/look/SlookImpl;->sHasMetaEdgeSingle:I

    .line 159
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v7

    .line 160
    .local v7, "pm":Landroid/content/pm/IPackageManager;
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v8

    .line 161
    .local v8, "packageName":Ljava/lang/String;
    if-eqz v7, :cond_7

    if-nez v8, :cond_0

    goto/16 :goto_4

    .line 166
    :cond_0
    const-wide/16 v1, 0x80

    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v7, v8, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    move-object v9, v1

    .line 167
    .local v9, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v9, :cond_6

    .line 168
    iget-object v1, v9, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v10, v1

    .line 169
    .local v10, "metaData":Landroid/os/Bundle;
    const-string v11, "edge_single"

    const-string v12, ""

    const-string v13, "com.samsung.android.cocktail.mode"

    const/4 v14, 0x1

    if-eqz v10, :cond_1

    .line 170
    :try_start_1
    invoke-virtual {v10, v13, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 172
    sput v14, Lcom/samsung/android/sdk/look/SlookImpl;->sHasMetaEdgeSingle:I

    .line 175
    .end local v1    # "value":Ljava/lang/String;
    :cond_1
    sget v1, Lcom/samsung/android/sdk/look/SlookImpl;->sHasMetaEdgeSingle:I

    if-nez v1, :cond_6

    .line 176
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.cocktail.action.COCKTAIL_UPDATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v15, v1

    .line 177
    .local v15, "intent":Landroid/content/Intent;
    invoke-virtual {v15, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    .line 180
    nop

    .line 181
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x80

    .line 182
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    .line 180
    move-object v1, v7

    move-object v2, v15

    invoke-interface/range {v1 .. v6}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 182
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    .line 183
    .local v1, "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 184
    .local v0, "N":I
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_6

    .line 185
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 186
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 187
    .local v4, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v6, 0x40000

    and-int/2addr v5, v6

    if-eqz v5, :cond_3

    .line 188
    goto :goto_2

    .line 190
    :cond_3
    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 191
    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 192
    .end local v10    # "metaData":Landroid/os/Bundle;
    .local v5, "metaData":Landroid/os/Bundle;
    if-eqz v5, :cond_4

    .line 193
    invoke-virtual {v5, v13, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 194
    .local v6, "value":Ljava/lang/String;
    if-eqz v6, :cond_4

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 195
    sput v14, Lcom/samsung/android/sdk/look/SlookImpl;->sHasMetaEdgeSingle:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 196
    goto :goto_3

    .line 184
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v4    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v6    # "value":Ljava/lang/String;
    :cond_4
    move-object v10, v5

    .end local v5    # "metaData":Landroid/os/Bundle;
    .restart local v10    # "metaData":Landroid/os/Bundle;
    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 205
    .end local v0    # "N":I
    .end local v1    # "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2    # "i":I
    .end local v10    # "metaData":Landroid/os/Bundle;
    .end local v15    # "intent":Landroid/content/Intent;
    :cond_6
    :goto_3
    goto :goto_5

    .line 203
    .end local v9    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5

    .line 162
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_7
    :goto_4
    return-void

    .line 207
    .end local v7    # "pm":Landroid/content/pm/IPackageManager;
    .end local v8    # "packageName":Ljava/lang/String;
    :cond_8
    :goto_5
    return-void
.end method

.method public static blacklist getVersionCode()I
    .locals 1

    .line 78
    sget v0, Lcom/samsung/android/sdk/look/SlookImpl;->SDK_INT:I

    return v0
.end method

.method public static greylist isFeatureEnabled(I)Z
    .locals 5
    .param p0, "type"    # I

    .line 91
    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_0

    .line 136
    :pswitch_0
    return v1

    .line 132
    :pswitch_1
    invoke-static {}, Lcom/samsung/android/sdk/look/SlookImpl;->checkCocktailLevel()V

    .line 133
    sget v2, Lcom/samsung/android/sdk/look/SlookImpl;->sCocktailLevel:I

    if-lez v2, :cond_0

    if-gt v2, p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    .line 121
    :pswitch_2
    invoke-static {}, Lcom/samsung/android/sdk/look/SlookImpl;->checkCocktailLevel()V

    .line 122
    sget v2, Lcom/samsung/android/sdk/look/SlookImpl;->sCocktailLevel:I

    if-lez v2, :cond_1

    if-gt v2, p0, :cond_1

    .line 123
    return v0

    .line 124
    :cond_1
    if-lez v2, :cond_3

    .line 125
    invoke-static {}, Lcom/samsung/android/sdk/look/SlookImpl;->checkValidCocktailMetaData()V

    .line 126
    sget v2, Lcom/samsung/android/sdk/look/SlookImpl;->sHasMetaEdgeSingle:I

    if-ne v2, v0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    return v0

    .line 128
    :cond_3
    return v1

    .line 95
    :pswitch_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_4

    .line 96
    return v1

    .line 100
    :cond_4
    :pswitch_4
    sget v2, Lcom/samsung/android/sdk/look/SlookImpl;->sUspLevel:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_5

    .line 101
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 111
    :cond_5
    const/4 v2, 0x3

    const/4 v3, 0x2

    if-ne p0, v0, :cond_7

    .line 112
    sget v4, Lcom/samsung/android/sdk/look/SlookImpl;->sUspLevel:I

    if-lt v4, v3, :cond_6

    if-gt v4, v2, :cond_6

    goto :goto_2

    :cond_6
    move v0, v1

    :goto_2
    return v0

    .line 114
    :cond_7
    if-ne p0, v2, :cond_9

    .line 115
    sget v2, Lcom/samsung/android/sdk/look/SlookImpl;->sUspLevel:I

    if-lt v2, v3, :cond_8

    const/16 v3, 0x9

    if-gt v2, v3, :cond_8

    goto :goto_3

    :cond_8
    move v0, v1

    :goto_3
    return v0

    .line 118
    :cond_9
    sget v2, Lcom/samsung/android/sdk/look/SlookImpl;->sUspLevel:I

    if-lt v2, v3, :cond_a

    goto :goto_4

    :cond_a
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
