.class public final synthetic Lcom/samsung/android/settings/theftprotection/NecessaryElementCheckActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/settings/theftprotection/NecessaryElementCheckActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/theftprotection/NecessaryElementCheckActivity;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/theftprotection/NecessaryElementCheckActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/theftprotection/NecessaryElementCheckActivity$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/theftprotection/NecessaryElementCheckActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/theftprotection/NecessaryElementCheckActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/samsung/android/settings/theftprotection/NecessaryElementCheckActivity$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/theftprotection/NecessaryElementCheckActivity;

    packed-switch v0, :pswitch_data_0

    sget v0, Lcom/samsung/android/settings/theftprotection/NecessaryElementCheckActivity;->$r8$clinit:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_0
    sget v0, Lcom/samsung/android/settings/theftprotection/NecessaryElementCheckActivity;->$r8$clinit:I

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
