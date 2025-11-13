.class public final synthetic Lcom/android/keyguard/KeyguardSliceViewController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/keyguard/KeyguardSliceViewController;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardSliceViewController;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/android/keyguard/KeyguardSliceViewController$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSliceViewController$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/KeyguardSliceViewController;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSliceViewController$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/android/keyguard/KeyguardSliceViewController$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSliceViewController$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/KeyguardSliceViewController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSliceViewController$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast p0, Landroidx/slice/Slice;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSliceViewController;->mObserver:Lcom/android/keyguard/KeyguardSliceViewController$2;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardSliceViewController$2;->onChanged(Ljava/lang/Object;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSliceViewController$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/KeyguardSliceViewController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSliceViewController$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSliceViewController;->mKeyguardSliceUri:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->onBindSlice()Landroidx/slice/Slice;

    move-result-object p0

    new-instance v1, Lcom/android/keyguard/KeyguardSliceViewController$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, v0, p0, v2}, Lcom/android/keyguard/KeyguardSliceViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardSliceViewController;Ljava/lang/Object;I)V

    iget-object p0, v0, Lcom/android/keyguard/KeyguardSliceViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
