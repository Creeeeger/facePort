.class Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider$ClockCallback;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;


# direct methods
.method public constructor <init>(Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget$1;->this$0:Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAODClockStyleChanged()V
    .locals 1

    const-string p0, "PluginLockFaceWidget"

    const-string v0, "onAODClockStyleChanged() "

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onClockColorChanged()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onClockColorChanged() #"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget$1;->this$0:Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;

    invoke-static {p0}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->-$$Nest$fgetmClockProvider(Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;)Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

    move-result-object p0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockProvider:Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;

    const-string v1, "#FFFAFAFA"

    if-nez p0, :cond_0

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;->getClockDateColor()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PluginLockFaceWidget"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onClockFontChanged()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onClockFontChanged() "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget$1;->this$0:Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;

    invoke-static {p0}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->-$$Nest$fgetmClockProvider(Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;)Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

    move-result-object p0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockProvider:Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;->getClockFontType()I

    move-result p0

    :goto_0
    const-string v1, "PluginLockFaceWidget"

    invoke-static {p0, v1, v0}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public onClockPackageChanged()V
    .locals 1

    const-string p0, "PluginLockFaceWidget"

    const-string v0, "onClockPackageChanged() "

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onClockPositionChanged(Z)V
    .locals 6

    const-string v0, "onClockPositionChanged() isCustomPositionChanged="

    const-string v1, "PluginLockFaceWidget"

    invoke-static {v0, v1, p1}, Lcom/android/settingslib/satellite/SatelliteDialogUtils$requestIsEnabled$2$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget$1;->this$0:Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;

    iget-wide v2, v0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackRegisterTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    iget v0, v0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackValue:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget$1;->this$0:Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;

    iget-wide v4, v0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackRegisterTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1f40

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    const-string p0, "onClockPositionChanged() ignored"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {v0}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->-$$Nest$fgetmIsDlsData(Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget$1;->this$0:Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "clock_position_changed"

    invoke-static {p0, v0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->-$$Nest$mupdateLockStarData(Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    const-string p0, "onClockPositionChanged() wrong state"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onClockScaleChanged()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget$1;->this$0:Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;

    invoke-static {v0}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->-$$Nest$fgetmClockProvider(Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;)Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockProvider:Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;->getClockScale()F

    move-result v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onClockScaleChanged() "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PluginLockFaceWidget"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget$1;->this$0:Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;

    iget-wide v3, v1, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackRegisterTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    iget v1, v1, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackValue:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget$1;->this$0:Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;

    iget-wide v5, v1, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackRegisterTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x1f40

    cmp-long v3, v3, v5

    if-gez v3, :cond_2

    const-string p0, "onClockScaleChanged() ignored"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-static {v1}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->-$$Nest$fgetmIsDlsData(Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget$1;->this$0:Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "clock_scale"

    invoke-static {p0, v1, v0}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->-$$Nest$mupdateLockStarData(Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    return-void

    :cond_4
    :goto_1
    const-string p0, "onClockScaleChanged() wrong state"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onClockStyleChanged(Z)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onClockStyleChanged() mCallbackRegisterTime: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget$1;->this$0:Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;

    iget-wide v1, v1, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackRegisterTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockFaceWidget"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget$1;->this$0:Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;

    iget-wide v2, v0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackRegisterTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    iget v0, v0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackValue:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget$1;->this$0:Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;

    iget-wide v4, v0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackRegisterTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1f40

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    const-string p0, "onClockStyleChanged() ignored"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {v0}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->-$$Nest$fgetmIsDlsData(Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;)Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget$1;->this$0:Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;

    invoke-static {v0}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->-$$Nest$fgetmClockProvider(Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;)Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockProvider:Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;->getLockClockType()I

    move-result v2

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "clock_type"

    invoke-static {v0, v3, v2}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->-$$Nest$mupdateLockStarData(Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget$1;->this$0:Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;

    invoke-static {v0}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->-$$Nest$fgetmClockRecoverType(Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;)I

    move-result v0

    if-eq v0, v1, :cond_5

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget$1;->this$0:Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->reset(Z)V

    goto :goto_1

    :cond_4
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget$1;->this$0:Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->recover()V

    :cond_5
    :goto_1
    return-void

    :cond_6
    :goto_2
    const-string p0, "onClockStyleChanged() wrong state"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onClockVisibilityChanged()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget$1;->this$0:Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;

    invoke-static {v0}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->-$$Nest$fgetmClockProvider(Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;)Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockProvider:Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;->getClockVisibility()I

    move-result v0

    :goto_0
    const-string v1, "onClockVisibilityChanged() "

    const-string v2, "PluginLockFaceWidget"

    invoke-static {v0, v1, v2}, Lcom/android/keyguard/KeyguardSecPatternView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget$1;->this$0:Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;

    iget-wide v3, v1, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackRegisterTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    iget v1, v1, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackValue:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget$1;->this$0:Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;

    iget-wide v5, v1, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackRegisterTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x1f40

    cmp-long v3, v3, v5

    if-gez v3, :cond_2

    const-string p0, "onClockVisibilityChanged() ignored"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-static {v1}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->-$$Nest$fgetmIsDlsData(Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget$1;->this$0:Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "clock_visibility"

    invoke-static {p0, v1, v0}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->-$$Nest$mupdateLockStarData(Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    return-void

    :cond_4
    :goto_1
    const-string p0, "onClockVisibilityChanged() wrong state"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
