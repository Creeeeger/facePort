.class public final Lcom/android/systemui/doze/PluginAODManager$5;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/doze/PluginAODManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/doze/PluginAODManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/doze/PluginAODManager$5;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDozeAmountChanged(FF)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$5;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/plugins/aod/PluginAOD;->onDozeAmountChanged(FF)V

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    if-eqz p1, :cond_1

    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onDozeAmountChanged(F)V

    :cond_1
    sget-boolean p1, Lcom/android/systemui/LsRune;->COVER_VIRTUAL_DISPLAY:Z

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    if-eqz p0, :cond_2

    invoke-interface {p0, p2}, Lcom/android/systemui/plugins/cover/PluginCover;->onDozeAmountChanged(F)V

    :cond_2
    return-void
.end method
