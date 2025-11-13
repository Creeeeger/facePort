.class public final Lcom/android/systemui/qs/QSTileHost$4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/QSTileHost;

.field public final synthetic val$index:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTileHost;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/qs/QSTileHost$4;->this$0:Lcom/android/systemui/qs/QSTileHost;

    iput p2, p0, Lcom/android/systemui/qs/QSTileHost$4;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost$4;->this$0:Lcom/android/systemui/qs/QSTileHost;

    iget-object v0, v0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    const-string v1, "QsWifiCallingTileIndex"

    iget p0, p0, Lcom/android/systemui/qs/QSTileHost$4;->val$index:I

    invoke-static {v0, v1, p0}, Lcom/android/systemui/Prefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
