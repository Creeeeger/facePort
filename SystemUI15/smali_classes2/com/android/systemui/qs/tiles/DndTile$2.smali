.class public final Lcom/android/systemui/qs/tiles/DndTile$2;
.super Landroid/database/ContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/DndTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/DndTile;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DndTile$2;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/DndTile$2;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    iget-object p2, p2, Lcom/android/systemui/qs/tiles/DndTile;->mSettingZenDuration:Lcom/android/systemui/qs/tiles/DndTile$1;

    invoke-virtual {p2}, Lcom/android/systemui/qs/UserSettingObserver;->getValue()I

    move-result p2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile$2;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    iget-object v0, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string v1, "ZEN_MODE: onChange = "

    const-string v2, ",currentZen = "

    const-string v3, ",previousZen = "

    invoke-static {v1, p2, v2, p1, v3}, Lcom/android/keyguard/KeyguardFMMViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DndTile$2;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    iget v1, v1, Lcom/android/systemui/qs/tiles/DndTile;->mPreviousSetZenDuration:I

    invoke-static {v1, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/DndTile$2;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    iget v0, p1, Lcom/android/systemui/qs/tiles/DndTile;->mPreviousSetZenDuration:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_1

    iget-boolean v1, p1, Lcom/android/systemui/qs/tiles/DndTile;->mIsSettingsUpdated:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez v1, :cond_2

    if-eq v0, p2, :cond_2

    iget-object p1, p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/DndTile$2;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    iget p2, p2, Lcom/android/systemui/qs/tiles/DndTile;->mPreviousSetZenDuration:I

    const-string/jumbo v0, "zen_duration"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_1
    :goto_0
    iput p2, p1, Lcom/android/systemui/qs/tiles/DndTile;->mPreviousSetZenDuration:I

    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DndTile$2;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mIsSettingsUpdated:Z

    return-void
.end method
