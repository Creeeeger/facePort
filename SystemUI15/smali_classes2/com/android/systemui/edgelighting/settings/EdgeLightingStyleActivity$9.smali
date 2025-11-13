.class public final Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$9;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$9;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onColorChanged(I)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$9;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->TAG:Ljava/lang/String;

    const-string v1, "Color changed Listener"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    filled-new-array {p1}, [I

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mPreviewEffectInfo:Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;

    iput-object v0, v1, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mEffectColors:[I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSelectedColor:Ljava/lang/Integer;

    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mLightingController:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingController;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mPreviewEffectInfo:Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;

    invoke-interface {p1, v0}, Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingController;->updatePreview(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    invoke-direct {p1, p0}, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mLightingController:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingController;

    invoke-virtual {p0, v0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->showPreviewEdgeLighting([I)V

    :goto_0
    iget p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurDuration:I

    invoke-static {p1}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingDuration(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->hidePreviewEdgeLighting(I)V

    return-void
.end method
