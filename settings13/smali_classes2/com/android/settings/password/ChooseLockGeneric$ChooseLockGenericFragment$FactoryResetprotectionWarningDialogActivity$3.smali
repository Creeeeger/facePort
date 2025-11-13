.class Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity$3;
.super Landroid/hardware/face/FaceManager$RemovalCallback;
.source "ChooseLockGeneric.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;)V
    .locals 0

    .line 3034
    iput-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity$3;->this$0:Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;

    invoke-direct {p0}, Landroid/hardware/face/FaceManager$RemovalCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemovalError(Landroid/hardware/face/Face;ILjava/lang/CharSequence;)V
    .locals 0

    .line 3037
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Remove Error : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ChooseLockGenericFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRemovalSucceeded(Landroid/hardware/face/Face;I)V
    .locals 0

    const-string p1, "ChooseLockGenericFragment"

    const-string/jumbo p2, "onRemovalSucceeded"

    .line 3042
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3043
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity$3;->this$0:Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "face_screen_lock"

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
