.class public final synthetic Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/user/CreateUserActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/user/CreateUserActivity;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/user/CreateUserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda2;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/user/CreateUserActivity;

    packed-switch v0, :pswitch_data_0

    sget v0, Lcom/android/systemui/user/CreateUserActivity;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "CreateUserActivity"

    const-string v1, "Unable to create user"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
