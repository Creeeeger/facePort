.class public final Lcom/android/systemui/qs/external/CustomTile$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/external/CustomTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/external/CustomTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/external/CustomTile$2;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile$2;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mIsUnlockAndRun:Z

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string v0, "mStopUnlockAndRun"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
