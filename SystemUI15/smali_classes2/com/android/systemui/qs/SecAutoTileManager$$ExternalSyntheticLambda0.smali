.class public final synthetic Lcom/android/systemui/qs/SecAutoTileManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/QSHost$Callback;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/SecAutoTileManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/SecAutoTileManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/SecAutoTileManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/SecAutoTileManager;

    return-void
.end method


# virtual methods
.method public final onTilesChanged()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/SecAutoTileManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/SecAutoTileManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/qs/SecAutoTileManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/SecAutoTileManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/SecAutoTileManager;)V

    iget-object p0, p0, Lcom/android/systemui/qs/SecAutoTileManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
