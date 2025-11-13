.class public final synthetic Lcom/android/systemui/volume/CsdWarningDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/volume/CsdWarningDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/volume/CsdWarningDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/CsdWarningDialog$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/volume/CsdWarningDialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/volume/CsdWarningDialog$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/volume/CsdWarningDialog;

    iget v0, p0, Lcom/android/systemui/volume/CsdWarningDialog;->mCsdWarning:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/CsdWarningDialog;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->lowerVolumeToRs1()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/CsdWarningDialog;->sendNotification(Z)V

    :cond_0
    return-void
.end method
