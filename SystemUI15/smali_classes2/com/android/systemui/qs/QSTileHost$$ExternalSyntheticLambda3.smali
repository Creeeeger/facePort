.class public final synthetic Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/qs/QSTileHost;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/QSTileHost;Ljava/lang/String;II)V
    .locals 0

    iput p4, p0, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/qs/QSTileHost;

    iput-object p2, p0, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda3;->f$2:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/qs/QSTileHost;

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iget p0, p0, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda3;->f$2:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda18;

    invoke-direct {v2, v1, p0}, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda18;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/QSTileHost;->changeTileSpecs(Ljava/util/function/Predicate;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/qs/QSTileHost;

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iget p0, p0, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda3;->f$2:I

    iget-object v2, v0, Lcom/android/systemui/qs/QSTileHost;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, v0, Lcom/android/systemui/qs/QSTileHost;->mTilesMap:Lcom/android/systemui/qs/QSTileHost$TilesMap;

    sget v3, Lcom/android/systemui/qs/QSTileHost$TilesMap;->SID_TILE_STATE:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v1}, Lcom/android/systemui/qs/QSTileHost$TilesMap;->getId(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "NONE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "QPBS1002"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "QPBS1004"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/android/systemui/qs/QSTileHost;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object p0, v0, Lcom/android/systemui/qs/QSTileHost;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-boolean p0, Lcom/android/systemui/qs/QSTileHost;->LOGGING_DEBUG:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
