.class public final Lcom/android/systemui/settings/brightness/QuickBrightnessSeadView$createDialog$1$1;
.super Ljava/lang/Object;
.source "qb/95038059 db3c75f3dfc1e198c5997313fff67c86ad775b87c3fe11e5e20cca6a5c0102e0"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic $this_createDialog:Landroid/content/Context;

.field public final synthetic this$0:Lcom/android/systemui/settings/brightness/QuickBrightnessSeadView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/brightness/QuickBrightnessSeadView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/QuickBrightnessSeadView$createDialog$1$1;->this$0:Lcom/android/systemui/settings/brightness/QuickBrightnessSeadView;

    iput-object p2, p0, Lcom/android/systemui/settings/brightness/QuickBrightnessSeadView$createDialog$1$1;->$this_createDialog:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object p1, p0, Lcom/android/systemui/settings/brightness/QuickBrightnessSeadView$createDialog$1$1;->this$0:Lcom/android/systemui/settings/brightness/QuickBrightnessSeadView;

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/QuickBrightnessSeadView$createDialog$1$1;->$this_createDialog:Landroid/content/Context;

    sget v1, Lcom/android/systemui/settings/brightness/QuickBrightnessSeadView;->$r8$clinit:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, -0x2

    const-string v1, "notified_ead_camera_use"

    const/4 v2, 0x1

    invoke-static {p1, v1, v2, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/QuickBrightnessSeadView$createDialog$1$1;->this$0:Lcom/android/systemui/settings/brightness/QuickBrightnessSeadView;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/QuickBrightnessSeadView;->dialogCameraInUse:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iput-boolean v2, p0, Lcom/android/systemui/settings/brightness/QuickBrightnessSeadView;->cameraInUse:Z

    return-void
.end method
