.class public Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData$PluginFaceWidgetMediaAction;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field action:Ljava/lang/Runnable;

.field contentDescription:Ljava/lang/CharSequence;

.field drawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData$PluginFaceWidgetMediaAction;->drawable:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData$PluginFaceWidgetMediaAction;->action:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData$PluginFaceWidgetMediaAction;->contentDescription:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData$PluginFaceWidgetMediaAction;->action:Ljava/lang/Runnable;

    return-object p0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData$PluginFaceWidgetMediaAction;->contentDescription:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData$PluginFaceWidgetMediaAction;->drawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setAction(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData$PluginFaceWidgetMediaAction;->action:Ljava/lang/Runnable;

    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData$PluginFaceWidgetMediaAction;->contentDescription:Ljava/lang/CharSequence;

    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData$PluginFaceWidgetMediaAction;->drawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method
