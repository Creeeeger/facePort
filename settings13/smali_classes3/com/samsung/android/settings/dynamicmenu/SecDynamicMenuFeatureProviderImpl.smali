.class public Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProviderImpl;
.super Ljava/lang/Object;
.source "SecDynamicMenuFeatureProviderImpl.java"

# interfaces
.implements Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProvider;


# instance fields
.field protected final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProviderImpl;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getBundleFromKey(Landroid/net/Uri;Ljava/lang/String;)Lcom/samsung/android/settings/external/DynamicMenuData;
    .locals 3

    .line 221
    iget-object v0, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProviderImpl;->mContext:Landroid/content/Context;

    const-string v1, "SecDynamicMenuFeatureProviderImpl"

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_4

    .line 225
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 228
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p0, :cond_2

    if-eqz p0, :cond_1

    .line 242
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V

    :cond_1
    return-object v2

    :cond_2
    :try_start_1
    const-string p1, "select_menu"

    .line 230
    invoke-virtual {p0, p1, p2, v2}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 232
    const-class p2, Lcom/samsung/android/settings/external/DynamicMenuData;

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string p2, "menu"

    .line 233
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/external/DynamicMenuData;

    move-object v2, p1

    goto :goto_0

    :cond_3
    const-string p1, "getBundleFromKey bundle is null"

    .line 235
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 242
    :goto_0
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v2, p0

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    move-object p0, v2

    :goto_1
    :try_start_2
    const-string p2, "can not call the provider"

    .line 238
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    :goto_2
    return-object v2

    :goto_3
    if-eqz v2, :cond_5

    .line 242
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V

    .line 244
    :cond_5
    throw p1

    :cond_6
    :goto_4
    const-string p0, "getBundleFromKey mContext or uri or key is null"

    .line 222
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public getBundleListFromUri(Landroid/net/Uri;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/external/DynamicMenuData;",
            ">;"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProviderImpl;->mContext:Landroid/content/Context;

    const-string v1, "SecDynamicMenuFeatureProviderImpl"

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    if-nez p1, :cond_0

    goto/16 :goto_5

    .line 192
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 195
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p1, :cond_2

    if-eqz p1, :cond_1

    .line 213
    invoke-virtual {p1}, Landroid/content/ContentProviderClient;->close()V

    :cond_1
    return-object v2

    .line 197
    :cond_2
    :try_start_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 198
    iget-object p0, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProviderImpl;->mContext:Landroid/content/Context;

    .line 199
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    const/4 v3, 0x1

    if-ne v3, p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    const-string p0, "desktopModeEnabled"

    .line 200
    invoke-virtual {v0, p0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "get_menu_list"

    .line 201
    invoke-virtual {p1, p0, v2, v0}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 203
    const-class v0, Lcom/samsung/android/settings/external/DynamicMenuData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "menu_list"

    .line 204
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    move-object v2, p0

    goto :goto_1

    :cond_4
    const-string p0, "getBundleListFromUri bundle is null"

    .line 206
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 213
    :goto_1
    invoke-virtual {p1}, Landroid/content/ContentProviderClient;->close()V

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object v2, p1

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception p0

    move-object p1, v2

    :goto_2
    :try_start_2
    const-string v0, "can not call the provider"

    .line 209
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    :goto_3
    return-object v2

    :goto_4
    if-eqz v2, :cond_6

    .line 213
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V

    .line 215
    :cond_6
    throw p0

    :cond_7
    :goto_5
    const-string p0, "mContext or uri or null"

    .line 189
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public getSearchData(Landroid/net/Uri;Ljava/lang/String;)Lcom/samsung/android/settings/external/DynamicSearchData;
    .locals 3

    .line 250
    iget-object v0, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProviderImpl;->mContext:Landroid/content/Context;

    const-string v1, "SecDynamicMenuFeatureProviderImpl"

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_4

    .line 254
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 257
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p0, :cond_2

    if-eqz p0, :cond_1

    .line 271
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V

    :cond_1
    return-object v2

    :cond_2
    :try_start_1
    const-string p1, "get_search_data"

    .line 259
    invoke-virtual {p0, p1, p2, v2}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 261
    const-class p2, Lcom/samsung/android/settings/external/DynamicSearchData;

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string p2, "search_data"

    .line 262
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/external/DynamicSearchData;

    move-object v2, p1

    goto :goto_0

    :cond_3
    const-string p1, "getSearchData bundle is null"

    .line 264
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 271
    :goto_0
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v2, p0

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    move-object p0, v2

    :goto_1
    :try_start_2
    const-string p2, "can not call the provider"

    .line 267
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    :goto_2
    return-object v2

    :goto_3
    if-eqz v2, :cond_5

    .line 271
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V

    .line 273
    :cond_5
    throw p1

    :cond_6
    :goto_4
    const-string p0, "getSearchData mContext or uri or key is null"

    .line 251
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public getUriFromIntent(Landroid/content/Intent;)Landroid/net/Uri;
    .locals 4

    .line 109
    iget-object v0, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProviderImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "SecDynamicMenuFeatureProviderImpl"

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.samsung.android.settings.DYNAMIC_MENU_PROVIDER"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 115
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 118
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 119
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    if-eqz p0, :cond_3

    .line 120
    iget-object p1, p0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 121
    new-instance p1, Landroid/net/Uri$Builder;

    invoke-direct {p1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v0, "content"

    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    iget-object p0, p0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 122
    invoke-virtual {p1, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 123
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, "getUriFromIntent providers is null"

    .line 127
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v1

    :cond_4
    :goto_0
    const-string p0, "getUriFromIntent mContext or intent is null"

    .line 110
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public updatePreferenceData(Landroid/net/Uri;Lcom/samsung/android/settings/external/DynamicMenuData;)V
    .locals 3

    .line 163
    iget-object p0, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProviderImpl;->mContext:Landroid/content/Context;

    const-string v0, "SecDynamicMenuFeatureProviderImpl"

    if-eqz p0, :cond_5

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_3

    .line 167
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x0

    .line 170
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p0, :cond_2

    if-eqz p0, :cond_1

    .line 181
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V

    :cond_1
    return-void

    .line 172
    :cond_2
    :try_start_1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 173
    const-class v2, Lcom/samsung/android/settings/external/DynamicMenuData;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v2, "menu"

    .line 174
    invoke-virtual {p1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p2, "checked_change"

    .line 175
    invoke-virtual {p0, p2, v1, p1}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v1, p0

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v1, p0

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    :goto_0
    :try_start_2
    const-string p0, "can not call the provider"

    .line 177
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_3

    .line 181
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->close()V

    :cond_3
    :goto_1
    return-void

    :goto_2
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->close()V

    .line 183
    :cond_4
    throw p1

    :cond_5
    :goto_3
    const-string p0, "context or uri or DynamicMenuData is null"

    .line 164
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
