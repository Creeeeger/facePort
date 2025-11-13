.class public final Lcom/android/systemui/qs/tiles/UiModeNightTile$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/UiModeNightTile;

.field public final synthetic val$toastMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/UiModeNightTile;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile$3;->this$0:Lcom/android/systemui/qs/tiles/UiModeNightTile;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile$3;->val$toastMsg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile$3;->this$0:Lcom/android/systemui/qs/tiles/UiModeNightTile;

    sget v1, Lcom/android/systemui/qs/tiles/UiModeNightTile;->$r8$clinit:I

    iget-object v0, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile$3;->val$toastMsg:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
