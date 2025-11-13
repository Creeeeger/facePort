.class public final synthetic Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(ZLandroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper$$ExternalSyntheticLambda1;->f$0:Z

    iput-object p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper$$ExternalSyntheticLambda1;->f$1:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper$$ExternalSyntheticLambda1;->f$0:Z

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper$$ExternalSyntheticLambda1;->f$1:Landroid/app/Activity;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->$r8$lambda$s-C7XtFYFcNnMO61ypb20UVbOQ4(ZLandroid/app/Activity;Landroid/content/DialogInterface;)V

    return-void
.end method
