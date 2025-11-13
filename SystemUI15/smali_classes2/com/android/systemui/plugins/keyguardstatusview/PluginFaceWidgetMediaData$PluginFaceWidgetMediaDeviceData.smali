.class public Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData$PluginFaceWidgetMediaDeviceData;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field deviceType:I

.field enabled:Z

.field icon:Landroid/graphics/drawable/Drawable;

.field name:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLandroid/graphics/drawable/Drawable;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData$PluginFaceWidgetMediaDeviceData;->enabled:Z

    iput-object p2, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData$PluginFaceWidgetMediaDeviceData;->icon:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData$PluginFaceWidgetMediaDeviceData;->name:Ljava/lang/String;

    iput p4, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData$PluginFaceWidgetMediaDeviceData;->deviceType:I

    return-void
.end method


# virtual methods
.method public getDeviceType()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData$PluginFaceWidgetMediaDeviceData;->deviceType:I

    return p0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData$PluginFaceWidgetMediaDeviceData;->icon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData$PluginFaceWidgetMediaDeviceData;->name:Ljava/lang/String;

    return-object p0
.end method

.method public isEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData$PluginFaceWidgetMediaDeviceData;->enabled:Z

    return p0
.end method

.method public setDeviceType(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData$PluginFaceWidgetMediaDeviceData;->deviceType:I

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData$PluginFaceWidgetMediaDeviceData;->enabled:Z

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData$PluginFaceWidgetMediaDeviceData;->icon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData$PluginFaceWidgetMediaDeviceData;->name:Ljava/lang/String;

    return-void
.end method
