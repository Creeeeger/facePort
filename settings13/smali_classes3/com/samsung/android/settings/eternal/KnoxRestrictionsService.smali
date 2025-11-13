.class public Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;
.super Landroid/app/IntentService;
.source "KnoxRestrictionsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/eternal/KnoxRestrictionsService$Injector;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final mapUIKeysToContractKey:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mApplicationRestrictionsManager:Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;

.field private mContext:Landroid/content/Context;

.field private mInjector:Lcom/samsung/android/settings/eternal/KnoxRestrictionsService$Injector;

.field private mKioskMode:Lcom/samsung/android/knox/kiosk/KioskMode;

.field private mKnoxEternalManager:Lcom/samsung/android/settings/eternal/KnoxEternalManager;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mRestrictionsBundle:Landroid/os/Bundle;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    const-class v0, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->TAG:Ljava/lang/String;

    .line 291
    new-instance v0, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->mapUIKeysToContractKey:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 100
    sget-object v0, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->TAG:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private buildScene(Landroid/os/Bundle;Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene;
    .locals 2

    .line 241
    new-instance p0, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {p0, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "value"

    .line 243
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto :goto_0

    .line 247
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto :goto_0

    .line 250
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object p0

    return-object p0
.end method

.method private convertData(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 11

    .line 179
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 180
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 182
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 183
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 185
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 186
    sget-object v6, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->mapUIKeysToContractKey:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 187
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    const-string v8, " "

    if-eqz v6, :cond_2

    .line 189
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    if-eqz v7, :cond_0

    .line 190
    invoke-virtual {v7}, Landroid/os/Bundle;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "hide"

    .line 191
    invoke-virtual {v7, v9}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v9, "grayout"

    .line 192
    invoke-virtual {v7, v9}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v7}, Landroid/os/Bundle;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 195
    invoke-direct {p0, v7, v6}, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->buildScene(Landroid/os/Bundle;Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene;

    move-result-object v6

    .line 196
    sget-object v7, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/samsung/android/lib/episode/Scene;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/samsung/android/lib/episode/Scene;->getBundle()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/settings/eternal/utils/KnoxRestrictionsFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "spen_detachment_sound"

    .line 197
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 198
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 200
    :cond_1
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-eqz v7, :cond_0

    .line 207
    invoke-virtual {v7}, Landroid/os/Bundle;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "manual"

    .line 208
    invoke-virtual {v7, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 209
    invoke-direct {p0, v7, v5}, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->buildScene(Landroid/os/Bundle;Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene;

    move-result-object v5

    .line 210
    sget-object v6, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/samsung/android/lib/episode/Scene;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/samsung/android/lib/episode/Scene;->getBundle()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/settings/eternal/utils/KnoxRestrictionsFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    const-string p0, "sceneList"

    .line 216
    invoke-virtual {v0, p0, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 217
    invoke-virtual {v1, p0, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string p0, "ro.build.characteristics"

    .line 221
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "tablet"

    if-eqz p0, :cond_4

    .line 222
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    const-string p1, "phone"

    :goto_1
    const-string p0, "deviceType"

    .line 227
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string p1, "Settings"

    .line 234
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p1, "AirCommand"

    .line 235
    invoke-virtual {p0, p1, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p0
.end method

.method private disableSuggestion(Landroid/os/Bundle;)V
    .locals 3

    .line 163
    const-class v0, Lcom/android/settings/Settings$KnoxRestrictionsActivity;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 164
    iget-object p1, p0, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->mRestrictionsBundle:Landroid/os/Bundle;

    const-string v2, "disable_suggestion"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->mRestrictionsBundle:Landroid/os/Bundle;

    .line 165
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "value"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "1"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 166
    new-instance p1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->setComponentEnabledSetting(Landroid/content/ComponentName;Z)Z

    goto :goto_0

    .line 168
    :cond_0
    new-instance p1, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->setComponentEnabledSetting(Landroid/content/ComponentName;Z)Z

    goto :goto_0

    .line 171
    :cond_1
    new-instance p1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->setComponentEnabledSetting(Landroid/content/ComponentName;Z)Z

    :goto_0
    return-void
.end method

.method private setComponentEnabledSetting(Landroid/content/ComponentName;Z)Z
    .locals 4

    const/4 v0, 0x0

    .line 255
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    if-ne v3, p2, :cond_1

    if-nez v1, :cond_3

    .line 258
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz p2, :cond_2

    move p2, v2

    goto :goto_1

    :cond_2
    const/4 p2, 0x2

    :goto_1
    invoke-virtual {p0, p1, p2, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p0

    .line 265
    sget-object p1, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to setComponentEnabledSetting "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/settings/eternal/utils/KnoxRestrictionsFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return v0
.end method

.method private setKnoxRestrictions()V
    .locals 5

    .line 135
    sget-object v0, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->TAG:Ljava/lang/String;

    const-string v1, "Start Managed Configuration"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/eternal/utils/KnoxRestrictionsFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->mContext:Landroid/content/Context;

    .line 143
    invoke-static {v0}, Lcom/samsung/android/settings/knox/KnoxUtils;->getApplicationRestrictions(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->mRestrictionsBundle:Landroid/os/Bundle;

    const-string v1, "com.android.systemui.indexsearch.SystemUIIndexProvider"

    const-string v2, "com.android.systemui"

    const-string v3, "com.samsung.android.settings.intelligence.search.devicesearch.DeviceSearchIndexProvider"

    const-string v4, "com.android.settings.intelligence"

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->mRestrictionsBundle:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->disableSuggestion(Landroid/os/Bundle;)V

    .line 147
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, v4, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->setComponentEnabledSetting(Landroid/content/ComponentName;Z)Z

    .line 148
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v3}, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->setComponentEnabledSetting(Landroid/content/ComponentName;Z)Z

    .line 149
    iget-object v0, p0, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->mRestrictionsBundle:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->convertData(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 150
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 151
    new-instance v1, Lcom/samsung/android/settings/eternal/KnoxEternalManager;

    iget-object v2, p0, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/eternal/KnoxEternalManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->mKnoxEternalManager:Lcom/samsung/android/settings/eternal/KnoxEternalManager;

    .line 152
    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/eternal/KnoxEternalManager;->setValueAll(Landroid/os/Bundle;)Landroid/os/Bundle;

    goto :goto_0

    .line 155
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->disableSuggestion(Landroid/os/Bundle;)V

    .line 156
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, v4, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-direct {p0, v0, v3}, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->setComponentEnabledSetting(Landroid/content/ComponentName;Z)Z

    .line 157
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v3}, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->setComponentEnabledSetting(Landroid/content/ComponentName;Z)Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .line 111
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 112
    sget-object p0, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->TAG:Ljava/lang/String;

    const-string v0, "onCreate()"

    invoke-static {p0, v0}, Lcom/samsung/android/settings/eternal/utils/KnoxRestrictionsFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 117
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 118
    sget-object p0, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->TAG:Ljava/lang/String;

    const-string v0, "onDestroy()"

    invoke-static {p0, v0}, Lcom/samsung/android/settings/eternal/utils/KnoxRestrictionsFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 1

    .line 105
    sget-object p1, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->TAG:Ljava/lang/String;

    const-string v0, "onHandleIntent()"

    invoke-static {p1, v0}, Lcom/samsung/android/settings/eternal/utils/KnoxRestrictionsFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-direct {p0}, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->setKnoxRestrictions()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .line 123
    sget-object v0, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->TAG:Ljava/lang/String;

    const-string v1, "onStartCommand()"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/eternal/utils/KnoxRestrictionsFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    new-instance v0, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService$Injector;

    invoke-virtual {p0}, Landroid/app/IntentService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService$Injector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->mInjector:Lcom/samsung/android/settings/eternal/KnoxRestrictionsService$Injector;

    .line 126
    iget-object v0, v0, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService$Injector;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->mContext:Landroid/content/Context;

    .line 127
    iget-object v0, p0, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->mInjector:Lcom/samsung/android/settings/eternal/KnoxRestrictionsService$Injector;

    invoke-virtual {v0}, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManager;

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 128
    iget-object v0, p0, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->mInjector:Lcom/samsung/android/settings/eternal/KnoxRestrictionsService$Injector;

    invoke-virtual {v0}, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->mUserManager:Landroid/os/UserManager;

    .line 129
    iget-object v0, p0, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->mInjector:Lcom/samsung/android/settings/eternal/KnoxRestrictionsService$Injector;

    invoke-virtual {v0}, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService$Injector;->getApplicationRestrictionsManager()Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->mApplicationRestrictionsManager:Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;

    .line 130
    iget-object v0, p0, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->mInjector:Lcom/samsung/android/settings/eternal/KnoxRestrictionsService$Injector;

    invoke-virtual {v0}, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService$Injector;->getKioskMode()Lcom/samsung/android/knox/kiosk/KioskMode;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/kiosk/KioskMode;

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;->mKioskMode:Lcom/samsung/android/knox/kiosk/KioskMode;

    .line 131
    invoke-super {p0, p1, p2, p3}, Landroid/app/IntentService;->onStartCommand(Landroid/content/Intent;II)I

    move-result p0

    return p0
.end method
