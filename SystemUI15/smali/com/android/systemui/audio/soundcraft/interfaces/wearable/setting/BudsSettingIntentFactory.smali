.class public final Lcom/android/systemui/audio/soundcraft/interfaces/wearable/setting/BudsSettingIntentFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final context:Landroid/content/Context;

.field public final modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

.field public final settings:Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/setting/BudsSettingIntentFactory$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/setting/BudsSettingIntentFactory$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/audio/soundcraft/model/ModelProvider;Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/setting/BudsSettingIntentFactory;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/setting/BudsSettingIntentFactory;->modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    iput-object p3, p0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/setting/BudsSettingIntentFactory;->settings:Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettings;

    return-void
.end method


# virtual methods
.method public final createIntent()Landroid/content/Intent;
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/setting/BudsSettingIntentFactory;->modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    iget-object v1, v0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->appSettingModel:Lcom/android/systemui/audio/soundcraft/model/appsetting/AppSettingModel;

    iget-boolean v2, v1, Lcom/android/systemui/audio/soundcraft/model/appsetting/AppSettingModel;->readyToUpdateRoutine:Z

    iget-boolean v3, v1, Lcom/android/systemui/audio/soundcraft/model/appsetting/AppSettingModel;->routineExistOnPlugin:Z

    iget-object v1, v1, Lcom/android/systemui/audio/soundcraft/model/appsetting/AppSettingModel;->routineId:Ljava/lang/String;

    const-string v4, "createIntent : readyToUpdateRoutine="

    const-string v5, ", routineExistOnPlugin="

    const-string v6, ",routineId="

    invoke-static {v4, v5, v6, v2, v3}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SoundCraft.BudsSettingIntentFactory"

    invoke-static {v2, v1, v3}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->appSettingModel:Lcom/android/systemui/audio/soundcraft/model/appsetting/AppSettingModel;

    iget-boolean v2, v1, Lcom/android/systemui/audio/soundcraft/model/appsetting/AppSettingModel;->routineExistOnPlugin:Z

    if-eqz v2, :cond_5

    iget-object v1, v1, Lcom/android/systemui/audio/soundcraft/model/appsetting/AppSettingModel;->routineId:Ljava/lang/String;

    if-eqz v1, :cond_4

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/setting/BudsSettingIntentFactory;->settings:Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettings;

    iget-object v3, v2, Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettings;->budsPluginPackageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v3, Landroid/content/ComponentName;

    iget-object v2, v2, Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettings;->budsPluginPackageName:Ljava/lang/String;

    const-string v4, "com.samsung.accessory.hearablemgr.module.soundeffect.SoundCraftDetailActivity"

    invoke-direct {v3, v2, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->appSettingModel:Lcom/android/systemui/audio/soundcraft/model/appsetting/AppSettingModel;

    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/model/appsetting/AppSettingModel;->routineId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v2, "routine_id"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    sget-object v0, Lcom/android/systemui/audio/soundcraft/utils/PackageExt;->INSTANCE:Lcom/android/systemui/audio/soundcraft/utils/PackageExt;

    iget-object v2, p0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/setting/BudsSettingIntentFactory;->context:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :try_start_0
    sget v3, Lkotlin/Result;->$r8$clinit:I

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    sget v3, Lkotlin/Result;->$r8$clinit:I

    new-instance v3, Lkotlin/Result$Failure;

    invoke-direct {v3, v2}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v2, v3

    :goto_0
    instance-of v3, v2, Lkotlin/Result$Failure;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    move-object v2, v4

    :cond_1
    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :cond_2
    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move-object v1, v4

    :goto_1
    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/setting/BudsSettingIntentFactory;->createMainPageIntent()Landroid/content/Intent;

    move-result-object v1

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/setting/BudsSettingIntentFactory;->createMainPageIntent()Landroid/content/Intent;

    move-result-object v1

    :goto_2
    return-object v1
.end method

.method public final createMainPageIntent()Landroid/content/Intent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/setting/BudsSettingIntentFactory;->settings:Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettings;

    iget-object v2, v1, Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettings;->budsPluginPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v2, Landroid/content/ComponentName;

    iget-object v1, v1, Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettings;->budsPluginPackageName:Ljava/lang/String;

    const-string v3, "com.samsung.accessory.hearablemgr.module.soundeffect.SoundEffectActivity"

    invoke-direct {v2, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/setting/BudsSettingIntentFactory;->modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->appSettingModel:Lcom/android/systemui/audio/soundcraft/model/appsetting/AppSettingModel;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/model/appsetting/AppSettingModel;->routineId:Ljava/lang/String;

    if-eqz p0, :cond_0

    const-string v1, "routine_id"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method
