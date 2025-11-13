.class public Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;
.super Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field private static final KEY_CLOCK_POS_CHANGED:Ljava/lang/String; = "clock_position_changed"

.field private static final KEY_CLOCK_SCALE:Ljava/lang/String; = "clock_scale"

.field private static final KEY_CLOCK_TYPE:Ljava/lang/String; = "clock_type"

.field private static final KEY_CLOCK_VISIBILITY:Ljava/lang/String; = "clock_visibility"

.field private static final KEY_PLUGIN_LOCK_CLOCK:Ljava/lang/String; = "plugin_lock_clock"

.field private static final TAG:Ljava/lang/String; = "PluginLockFaceWidget"

.field private static final UPDATE_LOCKSTAR_CLOCK:Ljava/lang/String; = "update_lockstar_clock"

.field private static final UPDATE_LOCKSTAR_DATA:Ljava/lang/String; = "update_lockstar_data"

.field private static final UPDATE_LOCKSTAR_DATA_ITEM:Ljava/lang/String; = "update_lockstar_data_item"


# instance fields
.field private final mClockCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider$ClockCallback;

.field private mClockGravity:I

.field private mClockGravityLand:I

.field private final mClockProvider:Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

.field private mClockRecoverType:I

.field private mClockScale:F

.field private mClockScaleLand:F

.field private mClockType:I

.field private mClockVisibility:I

.field private mClockVisibilityLand:I

.field private mIsDlsData:Z

.field private mIsLandscapeAvailable:Z

.field private mIsPortraitAvailable:Z

.field private final mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

.field private mServiceBoxBottom:I

.field private mServiceBoxBottomLand:I

.field private mServiceBoxPaddingEnd:I

.field private mServiceBoxPaddingEndLand:I

.field private mServiceBoxPaddingStart:I

.field private mServiceBoxPaddingStartLand:I

.field private mServiceBoxTop:I

.field private mServiceBoxTopLand:I

.field private mStateListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$PRNYWsjI_JPivPHE0_0hSREOXDA(Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->lambda$unregisterClockCallbackRecover$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmClockProvider(Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;)Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockProvider:Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmClockRecoverType(Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;)I
    .locals 0

    iget p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockRecoverType:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsDlsData(Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mIsDlsData:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$mupdateLockStarData(Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->updateLockStarData(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockInstanceState;Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/pluginlock/PluginLockMediator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p4}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;-><init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockInstanceState;Lcom/android/systemui/util/SettingsHelper;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mIsDlsData:Z

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockType:I

    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockRecoverType:I

    const/high16 p2, -0x40800000    # -1.0f

    iput p2, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockScale:F

    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockGravity:I

    const/4 p4, -0x1

    iput p4, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockVisibility:I

    iput p4, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxPaddingStart:I

    iput p4, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxPaddingEnd:I

    iput p4, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxTop:I

    iput p4, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxBottom:I

    iput p2, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockScaleLand:F

    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockGravityLand:I

    iput p4, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockVisibilityLand:I

    iput p4, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxPaddingStartLand:I

    iput p4, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxPaddingEndLand:I

    iput p4, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxTopLand:I

    iput p4, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxBottomLand:I

    new-instance p1, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget$1;-><init>(Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;)V

    iput-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider$ClockCallback;

    iput-object p3, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockProvider:Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

    iput-object p5, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    return-void
.end method

.method private getClockData(Lcom/android/systemui/pluginlock/model/DynamicLockData;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getClockInfo()Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->isDlsData()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->getClockType()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->getRecoverType()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->getGravity()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->getScale()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getVisibility()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getTopY()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getBottomY()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->getPaddingStart()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->getPaddingEnd()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->getGravityLand()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->getScaleLand()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getVisibilityLand()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getTopYLand()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getBottomYLand()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->getPaddingStartLand()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->getPaddingEndLand()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->isPortraitAvailable()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->isLandscapeAvailable()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isEqual(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->getClockData(Lcom/android/systemui/pluginlock/model/DynamicLockData;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->getClockData(Lcom/android/systemui/pluginlock/model/DynamicLockData;)Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private lambda$unregisterClockCallbackRecover$0()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockProvider:Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider$ClockCallback;

    iget-object v1, v0, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockProvider:Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;

    if-eqz v1, :cond_0

    invoke-interface {v1, p0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;->unregisterClockChangedCallback(Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider$ClockCallback;)V

    :cond_0
    iget-object v0, v0, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockCallbacks:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private registerClockCallback(I)V
    .locals 2

    iput p1, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackValue:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackRegisterTime:J

    iget-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockProvider:Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider$ClockCallback;

    iget-object v0, p1, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockProvider:Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;->registerClockChangedCallback(Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider$ClockCallback;)V

    :cond_0
    iget-object v0, p1, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockCallbacks:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p1, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockCallbacks:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private resetClockData(Z)V
    .locals 5

    iget-boolean v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mIsDlsData:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_2

    :cond_0
    const-string p1, "PluginLockFaceWidget"

    const-string v0, "resetClockData()"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockType:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockRecoverType:I

    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxPaddingStart:I

    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxPaddingEnd:I

    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockGravity:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockScale:F

    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockVisibility:I

    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxTop:I

    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxBottom:I

    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxPaddingStartLand:I

    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxPaddingEndLand:I

    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockGravityLand:I

    iput v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockScaleLand:F

    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockVisibilityLand:I

    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxTopLand:I

    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxBottomLand:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mIsPortraitAvailable:Z

    iput-boolean p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mIsLandscapeAvailable:Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "key_page_gravity"

    iget v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockGravity:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "key_page_scale"

    iget v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockScale:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "key_visibility"

    iget v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockVisibility:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "key_page_top_padding"

    iget v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxTop:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "key_page_bottom_padding"

    iget v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxBottom:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxPaddingStart:I

    const-string v2, "key_page_start_padding"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxPaddingEnd:I

    const-string v3, "key_page_end_padding"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "key_page_gravity_land"

    iget v4, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockGravityLand:I

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "key_page_scale_land"

    iget v4, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockScaleLand:F

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "key_visibility_land"

    iget v4, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockVisibilityLand:I

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "key_page_top_padding_land"

    iget v4, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxTopLand:I

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "key_page_bottom_padding_land"

    iget v4, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxBottomLand:I

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxPaddingStartLand:I

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxPaddingEndLand:I

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "key_lock_star_clock"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "key_page_available"

    iget-boolean v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mIsPortraitAvailable:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "key_page_available_land"

    iget-boolean v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mIsLandscapeAvailable:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mStateListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mStateListenerList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;->onClockChanged(Landroid/os/Bundle;)V

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private unregisterClockCallback()V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackValue:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackRegisterTime:J

    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockProvider:Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider$ClockCallback;

    iget-object v1, v0, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockProvider:Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;

    if-eqz v1, :cond_0

    invoke-interface {v1, p0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;->unregisterClockChangedCallback(Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider$ClockCallback;)V

    :cond_0
    iget-object v0, v0, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockCallbacks:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private unregisterClockCallbackRecover()V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackValue:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackRegisterTime:J

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateLockStarData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    const-string v1, "PluginLockFaceWidget"

    if-nez v0, :cond_0

    const-string/jumbo p0, "updateLockStarData, mediator is null"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateLockStarData() "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "action"

    const-string/jumbo v3, "update_lockstar_data"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "update_lockstar_data_item"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v3, p2, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    instance-of v3, p2, Ljava/lang/Float;

    if-eqz v3, :cond_2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_0

    :cond_2
    instance-of v3, p2, Ljava/lang/Boolean;

    if-eqz v3, :cond_3

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_0
    const-string p1, "extras"

    invoke-virtual {v0, p1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0, v0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->onEventReceived(Landroid/os/Bundle;)V

    return-void

    :cond_3
    const-string/jumbo p0, "updateLockStarData() unexpected value type"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    .locals 4

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->loadClockData(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->getClockState()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "apply() "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockType:I

    const-string v3, "PluginLockFaceWidget"

    invoke-static {v2, v3, v1}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    const-string p0, "apply() skip!"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    const/4 v1, -0x3

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->update(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockType:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_4

    iget-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockProvider:Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

    iget-object p1, p1, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockProvider:Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;->getLockClockType()I

    move-result p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x2

    :goto_0
    const-string p2, "apply() current clock: "

    invoke-static {p1, p2, v3}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setClockBackupValue(I)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "apply() dls clock setClockType: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockType:I

    invoke-static {p2, v3, p1}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockProvider:Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

    iget p2, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockType:I

    iget-object p1, p1, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockProvider:Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;

    if-eqz p1, :cond_3

    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;->setClockType(I)Z

    :cond_3
    const-string p1, "plugin_lock_clock"

    iget p2, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockType:I

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->putSettingsSecure(Ljava/lang/String;I)V

    iget p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockType:I

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->registerClockCallback(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public loadClockData(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    .locals 2

    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->isDlsData()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mIsDlsData:Z

    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getClockInfo()Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->getClockType()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockType:I

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->getRecoverType()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockRecoverType:I

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->getGravity()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockGravity:I

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->getScale()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockScale:F

    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getVisibility()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockVisibility:I

    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getTopY()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxTop:I

    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getBottomY()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxBottom:I

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->getPaddingStart()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxPaddingStart:I

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->getPaddingEnd()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxPaddingEnd:I

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->getGravityLand()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockGravityLand:I

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->getScaleLand()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockScaleLand:F

    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getVisibilityLand()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockVisibilityLand:I

    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getTopYLand()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxTopLand:I

    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getBottomYLand()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxBottomLand:I

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->getPaddingStartLand()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxPaddingStartLand:I

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->getPaddingEndLand()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxPaddingEndLand:I

    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->isPortraitAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mIsPortraitAvailable:Z

    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->isLandscapeAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mIsLandscapeAvailable:Z

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->isEqual(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)Z

    move-result p1

    const-string p2, "loadClockData, isEqual: "

    const-string v0, "PluginLockFaceWidget"

    invoke-static {p2, v0, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "key_page_gravity"

    iget v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockGravity:I

    invoke-virtual {p1, p2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "key_page_scale"

    iget v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockScale:F

    invoke-virtual {p1, p2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string p2, "key_visibility"

    iget v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockVisibility:I

    invoke-virtual {p1, p2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "key_page_top_padding"

    iget v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxTop:I

    invoke-virtual {p1, p2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "key_page_bottom_padding"

    iget v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxBottom:I

    invoke-virtual {p1, p2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "key_page_start_padding"

    iget v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxPaddingStart:I

    invoke-virtual {p1, p2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "key_page_end_padding"

    iget v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxPaddingEnd:I

    invoke-virtual {p1, p2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "key_page_gravity_land"

    iget v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockGravityLand:I

    invoke-virtual {p1, p2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "key_page_scale_land"

    iget v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockScaleLand:F

    invoke-virtual {p1, p2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string p2, "key_visibility_land"

    iget v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockVisibilityLand:I

    invoke-virtual {p1, p2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "key_page_top_padding_land"

    iget v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxTopLand:I

    invoke-virtual {p1, p2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "key_page_bottom_padding_land"

    iget v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxBottomLand:I

    invoke-virtual {p1, p2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "key_page_start_padding_land"

    iget v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxPaddingStartLand:I

    invoke-virtual {p1, p2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "key_page_end_padding_land"

    iget v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxPaddingEndLand:I

    invoke-virtual {p1, p2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "key_page_available"

    iget-boolean v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mIsPortraitAvailable:Z

    invoke-virtual {p1, p2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p2, "key_page_available_land"

    iget-boolean v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mIsLandscapeAvailable:Z

    invoke-virtual {p1, p2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean p2, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mIsDlsData:Z

    xor-int/lit8 p2, p2, 0x1

    const-string v1, "key_lock_star_clock"

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "loadClockData() bundle: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mStateListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mStateListenerList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;->onClockChanged(Landroid/os/Bundle;)V

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public recover()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "recover() mClockRecoverType: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockRecoverType:I

    const-string v2, "PluginLockFaceWidget"

    invoke-static {v1, v2, v0}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iget v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockRecoverType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setClockBackupValue(I)V

    const/4 v1, -0x2

    invoke-virtual {p0, v1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setClockState(I)V

    const-string v1, "plugin_lock_clock"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->putSettingsSecure(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->unregisterClockCallbackRecover()V

    :cond_0
    return-void
.end method

.method public registerStateCallback(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mStateListenerList:Ljava/util/List;

    return-void
.end method

.method public reset(Z)V
    .locals 4

    const-string v0, "reset() setClockType: "

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->resetClockData(Z)V

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->unregisterClockCallback()V

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->getClockState()I

    move-result v1

    const-string v2, "reset() state: "

    const-string v3, "PluginLockFaceWidget"

    invoke-static {v1, v2, v3}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_2

    const/4 p1, -0x1

    if-eq v1, p1, :cond_1

    const/4 v2, -0x2

    if-eq v1, v2, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->getClockBackupValue()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockProvider:Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

    iget-object v0, v0, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockProvider:Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;->setClockType(I)Z

    :cond_0
    const-string v0, "plugin_lock_clock"

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->putSettingsSecure(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setClockBackupValue(I)V

    :cond_2
    return-void
.end method

.method public bridge synthetic setInstanceState(ILcom/android/systemui/pluginlock/PluginLockInstanceState;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setInstanceState(ILcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    return-void
.end method

.method public bridge synthetic setInstanceState(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setInstanceState(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    return-void
.end method

.method public update(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    .locals 3

    const-string v0, "PluginLockFaceWidget"

    const-string/jumbo v1, "update()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->loadClockData(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->getClockState()I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mIsDlsData:Z

    if-eqz v2, :cond_0

    const-string/jumbo p0, "update() skip!"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->unregisterClockCallback()V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "update() mClockType: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockType:I

    invoke-static {p2, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iget p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockType:I

    const-string p2, "plugin_lock_clock"

    if-eq p1, v2, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "update() setClockType: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockType:I

    invoke-static {v1, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockProvider:Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

    iget v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockType:I

    iget-object p1, p1, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockProvider:Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;

    if-eqz p1, :cond_2

    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;->setClockType(I)Z

    :cond_2
    iget p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockType:I

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->putSettingsSecure(Ljava/lang/String;I)V

    iget p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockType:I

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->registerClockCallback(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->getClockBackupValue()I

    move-result p1

    const-string/jumbo v1, "update() backupClockType: "

    invoke-static {p1, v1, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockProvider:Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

    iget-object v0, v0, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockProvider:Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;

    if-eqz v0, :cond_4

    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;->setClockType(I)Z

    :cond_4
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->putSettingsSecure(Ljava/lang/String;I)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setClockBackupValue(I)V

    :goto_0
    return-void
.end method
