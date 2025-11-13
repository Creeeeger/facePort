.class public final synthetic Lcom/android/settings/homepage/contextualcards/EligibleCardChecker$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/slice/SliceViewManagerWrapper;

.field public final synthetic f$1:Landroid/net/Uri;

.field public final synthetic f$2:Landroidx/slice/SliceViewManager$SliceCallback;


# direct methods
.method public synthetic constructor <init>(Landroidx/slice/SliceViewManagerWrapper;Landroid/net/Uri;Lcom/android/settings/homepage/contextualcards/EligibleCardChecker$$ExternalSyntheticLambda0;I)V
    .locals 0

    iput p4, p0, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker$$ExternalSyntheticLambda1;->f$0:Landroidx/slice/SliceViewManagerWrapper;

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker$$ExternalSyntheticLambda1;->f$1:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker$$ExternalSyntheticLambda1;->f$2:Landroidx/slice/SliceViewManager$SliceCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker$$ExternalSyntheticLambda1;->f$0:Landroidx/slice/SliceViewManagerWrapper;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker$$ExternalSyntheticLambda1;->f$1:Landroid/net/Uri;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker$$ExternalSyntheticLambda1;->f$2:Landroidx/slice/SliceViewManager$SliceCallback;

    :try_start_0
    invoke-virtual {v0, v1, p0}, Landroidx/slice/SliceViewManagerWrapper;->unregisterSliceCallback(Landroid/net/Uri;Landroidx/slice/SliceViewManager$SliceCallback;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No permission currently: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "EligibleCardChecker"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker$$ExternalSyntheticLambda1;->f$0:Landroidx/slice/SliceViewManagerWrapper;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker$$ExternalSyntheticLambda1;->f$1:Landroid/net/Uri;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker$$ExternalSyntheticLambda1;->f$2:Landroidx/slice/SliceViewManager$SliceCallback;

    new-instance v2, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker$$ExternalSyntheticLambda1;

    check-cast p0, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, p0, v3}, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker$$ExternalSyntheticLambda1;-><init>(Landroidx/slice/SliceViewManagerWrapper;Landroid/net/Uri;Lcom/android/settings/homepage/contextualcards/EligibleCardChecker$$ExternalSyntheticLambda0;I)V

    invoke-static {v2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
