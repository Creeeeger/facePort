.class public final Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$1:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter$1;->this$1:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EffectListViewHolder;

    iget-object p1, p1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EffectListViewHolder;->style:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter$1;->this$1:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;

    iget-object v0, v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    iget-object v0, v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter$1;->this$1:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;

    iget-object v0, v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    iget-object v0, v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mLightingController:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingController;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter$1;->this$1:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;

    iget-object v1, v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    iput-object p1, v1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter$1;->this$1:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;

    iget-object p1, p1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->playEdgeLightingByHandler()V

    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter$1;->this$1:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->updateTabLayout()V

    :cond_1
    return-void
.end method
