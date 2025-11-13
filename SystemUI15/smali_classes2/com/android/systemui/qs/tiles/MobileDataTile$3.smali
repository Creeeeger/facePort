.class public final Lcom/android/systemui/qs/tiles/MobileDataTile$3;
.super Lcom/android/systemui/qs/tiles/MobileDataTile$GlobalSetting;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/MobileDataTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$3;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/qs/tiles/MobileDataTile$GlobalSetting;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final handleValueChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$3;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    sget-object v1, Lcom/android/systemui/qs/tiles/MobileDataTile;->DATA_SETTINGS:Landroid/content/Intent;

    iget-object v0, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string v1, "airplane mode  has changed value : "

    invoke-static {p1, v1, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$3;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method
