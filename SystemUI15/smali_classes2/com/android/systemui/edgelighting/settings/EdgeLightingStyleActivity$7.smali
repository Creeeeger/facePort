.class public final Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$7;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

.field public final synthetic val$x:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$7;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    iput p2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$7;->val$x:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$7;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    iget-object v0, v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSubOptionEffectLayout:Landroid/widget/HorizontalScrollView;

    iget p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$7;->val$x:I

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    return-void
.end method
