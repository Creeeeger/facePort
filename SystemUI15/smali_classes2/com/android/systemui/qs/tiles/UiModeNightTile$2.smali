.class public final Lcom/android/systemui/qs/tiles/UiModeNightTile$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/UiModeNightTile;

.field public final synthetic val$state:Lcom/android/systemui/plugins/qs/QSTile$BooleanState;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/UiModeNightTile;Lcom/android/systemui/plugins/qs/QSTile$BooleanState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile$2;->this$0:Lcom/android/systemui/qs/tiles/UiModeNightTile;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile$2;->val$state:Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile$2;->this$0:Lcom/android/systemui/qs/tiles/UiModeNightTile;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->mIsNeedToBlockOnClick:Z

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile$2;->val$state:Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean p0, p0, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method
