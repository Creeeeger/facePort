.class public final synthetic Lcom/android/systemui/qs/external/CustomTile$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/qs/external/CustomTile$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p2, p0, Lcom/android/systemui/qs/external/CustomTile$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/systemui/qs/external/CustomTile$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/android/systemui/qs/external/CustomTile$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;

    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->setToggleState(Z)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/qs/external/CustomTile;

    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/service/quicksettings/Tile;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/qs/external/CustomTile;->applyTileState(Landroid/service/quicksettings/Tile;Z)V

    iget-object v1, v0, Lcom/android/systemui/qs/external/CustomTile;->mServiceManager:Lcom/android/systemui/qs/external/TileServiceManager;

    invoke-virtual {v1}, Lcom/android/systemui/qs/external/TileServiceManager;->isActiveTile()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/systemui/qs/external/CustomTile;->mCustomTileStatePersister:Lcom/android/systemui/qs/external/CustomTileStatePersister;

    check-cast v1, Lcom/android/systemui/qs/external/CustomTileStatePersisterImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/android/systemui/qs/external/CustomTileStatePersisterKt;->writeToString(Landroid/service/quicksettings/Tile;)Ljava/lang/String;

    move-result-object p0

    iget-object v1, v1, Lcom/android/systemui/qs/external/CustomTileStatePersisterImpl;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v0, v0, Lcom/android/systemui/qs/external/CustomTile;->mKey:Lcom/android/systemui/qs/external/TileServiceKey;

    iget-object v0, v0, Lcom/android/systemui/qs/external/TileServiceKey;->string:Ljava/lang/String;

    invoke-interface {v1, v0, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
