.class public final synthetic Lcom/android/systemui/qs/tiles/SyncTile$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/tiles/SyncTile;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/SyncTile;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SyncTile$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/tiles/SyncTile;

    iput-boolean p2, p0, Lcom/android/systemui/qs/tiles/SyncTile$$ExternalSyntheticLambda1;->f$1:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SyncTile$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/tiles/SyncTile;

    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/SyncTile$$ExternalSyntheticLambda1;->f$1:Z

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p2

    invoke-static {p0, p2}, Landroid/content/ContentResolver;->setMasterSyncAutomaticallyAsUser(ZI)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    iget-object p2, p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_0

    const p0, 0x7f130081

    goto :goto_0

    :cond_0
    const p0, 0x7f130080

    :goto_0
    invoke-virtual {p2, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iget-object p1, p1, Lcom/android/systemui/qs/tiles/SyncTile;->mAlertDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->sendAnnouncementEvent(Ljava/lang/String;)V

    return-void
.end method
