.class public final Lcom/android/settings/Utils$1;
.super Landroid/hardware/face/FaceManager$RemovalCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/Utils$1;->val$userId:I

    invoke-direct {p0}, Landroid/hardware/face/FaceManager$RemovalCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRemovalError(Landroid/hardware/face/Face;ILjava/lang/CharSequence;)V
    .locals 0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Unable to remove face template for user "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/settings/Utils$1;->val$userId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", error: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Settings"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onRemovalSucceeded(Landroid/hardware/face/Face;I)V
    .locals 0

    if-nez p2, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Enrolled face templates removed for user "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/settings/Utils$1;->val$userId:I

    const-string p2, "Settings"

    invoke-static {p1, p0, p2}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_0
    return-void
.end method
