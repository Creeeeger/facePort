.class public final synthetic Lcom/android/systemui/qs/tiles/ScreenRecordTile$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/tiles/ScreenRecordTile;

.field public final synthetic f$1:Lcom/android/systemui/animation/Expandable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/ScreenRecordTile;Lcom/android/systemui/animation/Expandable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ScreenRecordTile$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/tiles/ScreenRecordTile;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/ScreenRecordTile$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/animation/Expandable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenRecordTile$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/tiles/ScreenRecordTile;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/ScreenRecordTile$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/animation/Expandable;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p0, :cond_0

    iget-object v3, v0, Lcom/android/systemui/qs/tiles/ScreenRecordTile;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    move v3, v1

    :goto_0
    new-instance v4, Lcom/android/systemui/qs/tiles/ScreenRecordTile$$ExternalSyntheticLambda1;

    invoke-direct {v4, v0}, Lcom/android/systemui/qs/tiles/ScreenRecordTile$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/tiles/ScreenRecordTile;)V

    iget-object v5, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    iget-object v5, v0, Lcom/android/systemui/qs/tiles/ScreenRecordTile;->mController:Lcom/android/systemui/screenrecord/RecordingController;

    iget-object v6, v0, Lcom/android/systemui/qs/tiles/ScreenRecordTile;->mFlags:Lcom/android/systemui/flags/FeatureFlags;

    invoke-virtual {v5, v6, v4}, Lcom/android/systemui/screenrecord/RecordingController;->createScreenRecordDialog(Lcom/android/systemui/flags/FeatureFlags;Ljava/lang/Runnable;)Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/qs/tiles/ScreenRecordTile$$ExternalSyntheticLambda2;

    invoke-direct {v5, v0, v3, p0, v4}, Lcom/android/systemui/qs/tiles/ScreenRecordTile$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/qs/tiles/ScreenRecordTile;ZLcom/android/systemui/animation/Expandable;Lcom/android/systemui/statusbar/phone/SystemUIDialog;)V

    iget-object p0, v0, Lcom/android/systemui/qs/tiles/ScreenRecordTile;->mKeyguardDismissUtil:Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

    invoke-virtual {p0, v5, v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;->executeWhenUnlocked(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;ZZ)V

    return-void
.end method
