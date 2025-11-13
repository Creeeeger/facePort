.class public Lcom/samsung/android/settings/theftprotection/NecessaryElementCheckActivity;
.super Landroid/app/Activity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mChecker:Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/theftprotection/NecessaryElementCheckActivity;->mChecker:Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker;

    return-void
.end method


# virtual methods
.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "onActivityResult: requestCode="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", resultCode="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "NecessaryElementCheckActivity"

    invoke-static {v0, p3}, Lcom/samsung/android/settings/theftprotection/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p3, 0x3e8

    if-ne p1, p3, :cond_1

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker;->countCheckItems(Landroid/content/Context;Z)I

    move-result p2

    if-lez p2, :cond_0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence;->values()[Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence;

    move-result-object p1

    const/4 p2, 0x4

    aget-object p1, p1, p2

    iget-object p0, p0, Lcom/samsung/android/settings/theftprotection/NecessaryElementCheckActivity;->mChecker:Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker;->processNecessaryElements(Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence;)V

    goto :goto_0

    :cond_1
    const/16 p3, 0x3e9

    if-ne p1, p3, :cond_3

    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string p3, "identity_check_confirm_child_account"

    const/4 v0, 0x1

    invoke-static {p2, p3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_3
    :goto_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Lcom/samsung/android/settings/theftprotection/NecessaryElementCheckActivity$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/settings/theftprotection/NecessaryElementCheckActivity$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/theftprotection/NecessaryElementCheckActivity;I)V

    new-instance v0, Lcom/samsung/android/settings/theftprotection/NecessaryElementCheckActivity$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/theftprotection/NecessaryElementCheckActivity$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/theftprotection/NecessaryElementCheckActivity;I)V

    iget-object p0, p0, Lcom/samsung/android/settings/theftprotection/NecessaryElementCheckActivity;->mChecker:Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker;

    iput-object p1, p0, Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker;->mDoSuccess:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker;->mDoFail:Ljava/lang/Runnable;

    sget-object p1, Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence;->START_CHECKING:Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker;->processNecessaryElements(Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence;)V

    return-void
.end method
