.class Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/shade/ShadeExpansionListener;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$1;->this$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPanelExpansionChanged(Lcom/android/systemui/shade/ShadeExpansionChangeEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$1;->this$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    invoke-static {v0}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->-$$Nest$fgetmIsWallpaperPaused(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;->fraction:F

    const v1, 0x3dcccccd    # 0.1f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$1;->this$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    invoke-static {v0}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->-$$Nest$msendWallpaperCommand(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;)V

    :cond_0
    iget-boolean v0, p1, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;->expanded:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$1;->this$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    invoke-static {v0}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->-$$Nest$fgetmBarState(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$1;->this$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    invoke-static {p0}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->-$$Nest$fgetmBasicListener(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;)Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;

    move-result-object p0

    iget p1, p1, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;->fraction:F

    invoke-interface {p0, p1}, Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;->setQsExpansion(F)V

    :cond_1
    return-void
.end method
