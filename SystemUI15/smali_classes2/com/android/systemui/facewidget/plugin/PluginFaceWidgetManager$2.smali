.class public final Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$2;->this$0:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$2;->this$0:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    iget-object p1, p1, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetPlugin:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    if-eqz p1, :cond_0

    const-string p1, "QsMediaPlayerLastExpanded"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "onSharedPreferenceChanged, key = "

    const-string v1, "PluginFaceWidgetManager"

    invoke-static {v0, p2, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$2;->this$0:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    iget-object p2, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetPlugin:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mSysuiContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    invoke-interface {p2, p0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;->onMediaPlayerLastExpandedPrefChanged(Z)V

    :cond_0
    return-void
.end method
