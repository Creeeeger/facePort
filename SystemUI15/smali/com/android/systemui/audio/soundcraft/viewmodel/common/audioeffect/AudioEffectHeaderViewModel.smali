.class public final Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/AudioEffectHeaderViewModel;
.super Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseViewModel;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final context:Landroid/content/Context;

.field public final icon:Landroidx/lifecycle/MutableLiveData;

.field public final isVisible:Landroidx/lifecycle/MutableLiveData;

.field public final marginTop:Landroidx/lifecycle/MutableLiveData;

.field public final modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

.field public final title:Landroidx/lifecycle/MutableLiveData;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/AudioEffectHeaderViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/AudioEffectHeaderViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/audio/soundcraft/model/ModelProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseViewModel;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/AudioEffectHeaderViewModel;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/AudioEffectHeaderViewModel;->modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/AudioEffectHeaderViewModel;->icon:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    const-string p2, ""

    invoke-direct {p1, p2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/AudioEffectHeaderViewModel;->title:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, p2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/AudioEffectHeaderViewModel;->isVisible:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/AudioEffectHeaderViewModel;->marginTop:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method


# virtual methods
.method public final notifyChange()V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/AudioEffectHeaderViewModel;->modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    iget-object v1, v0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->appSettingModel:Lcom/android/systemui/audio/soundcraft/model/appsetting/AppSettingModel;

    iget-boolean v2, v1, Lcom/android/systemui/audio/soundcraft/model/appsetting/AppSettingModel;->readyToUpdateRoutine:Z

    iget-object v3, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/AudioEffectHeaderViewModel;->title:Landroidx/lifecycle/MutableLiveData;

    iget-object v4, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/AudioEffectHeaderViewModel;->icon:Landroidx/lifecycle/MutableLiveData;

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    iget-object v1, v1, Lcom/android/systemui/audio/soundcraft/model/appsetting/AppSettingModel;->playingAudioPackageName:Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v2, Lcom/android/systemui/audio/soundcraft/utils/IconExt;->INSTANCE:Lcom/android/systemui/audio/soundcraft/utils/IconExt;

    iget-object v6, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/AudioEffectHeaderViewModel;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    sget v2, Lkotlin/Result;->$r8$clinit:I

    invoke-virtual {v6, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    sget v6, Lkotlin/Result;->$r8$clinit:I

    new-instance v6, Lkotlin/Result$Failure;

    invoke-direct {v6, v2}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v2, v6

    :goto_0
    instance-of v6, v2, Lkotlin/Result$Failure;

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    move-object v2, v7

    :cond_0
    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    sget-object v2, Lcom/android/systemui/audio/soundcraft/utils/IconExt;->INSTANCE:Lcom/android/systemui/audio/soundcraft/utils/IconExt;

    iget-object v6, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/AudioEffectHeaderViewModel;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    invoke-virtual {v6, v1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    sget v2, Lkotlin/Result;->$r8$clinit:I

    new-instance v2, Lkotlin/Result$Failure;

    invoke-direct {v2, v1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v1, v2

    :goto_1
    instance-of v2, v1, Lkotlin/Result$Failure;

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    move-object v7, v1

    :goto_2
    check-cast v7, Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/AudioEffectHeaderViewModel;->isVisible:Landroidx/lifecycle/MutableLiveData;

    iget-object v2, v0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->appSettingModel:Lcom/android/systemui/audio/soundcraft/model/appsetting/AppSettingModel;

    iget-boolean v2, v2, Lcom/android/systemui/audio/soundcraft/model/appsetting/AppSettingModel;->readyToUpdateRoutine:Z

    if-eqz v2, :cond_3

    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    move v2, v5

    :goto_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/AudioEffectHeaderViewModel;->marginTop:Landroidx/lifecycle/MutableLiveData;

    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->effectOutDeviceType:Lcom/android/systemui/audio/soundcraft/model/EffectOutDeviceType;

    sget-object v1, Lcom/android/systemui/audio/soundcraft/model/EffectOutDeviceType;->BUDS:Lcom/android/systemui/audio/soundcraft/model/EffectOutDeviceType;

    if-ne v0, v1, :cond_4

    const/16 v0, 0x14

    int-to-float v0, v0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_4

    :cond_4
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_4
    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/AudioEffectHeaderViewModel;->title:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[title="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
