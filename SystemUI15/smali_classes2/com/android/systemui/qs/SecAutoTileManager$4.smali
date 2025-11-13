.class public final Lcom/android/systemui/qs/SecAutoTileManager$4;
.super Landroid/database/ContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/SecAutoTileManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/SecAutoTileManager;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/SecAutoTileManager$4;->this$0:Lcom/android/systemui/qs/SecAutoTileManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/SecAutoTileManager$4;->this$0:Lcom/android/systemui/qs/SecAutoTileManager;

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecAutoTileManager;->updateA11yQsTiles()V

    return-void
.end method
