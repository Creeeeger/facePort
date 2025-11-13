.class public final synthetic Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;ZI)V
    .locals 0

    iput p3, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    iput-boolean p2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$$ExternalSyntheticLambda2;->f$1:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    iget-boolean p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$$ExternalSyntheticLambda2;->f$1:Z

    invoke-static {v0, p0}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->$r8$lambda$kak-ik6AOL3BZNeE_YyYS59qi0w(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;Z)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    iget-boolean p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$$ExternalSyntheticLambda2;->f$1:Z

    invoke-static {v0, p0}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->$r8$lambda$N7KhQPFRV45eI8R2K9YB9caWuRQ(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;Z)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    iget-boolean p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$$ExternalSyntheticLambda2;->f$1:Z

    invoke-static {v0, p0}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->$r8$lambda$xM0CsGvHpQIaWuMTkFb_XZeuHpw(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;Z)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    iget-boolean p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$$ExternalSyntheticLambda2;->f$1:Z

    invoke-static {v0, p0}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->$r8$lambda$nUB9ZPBD77M30Dj1vIvFpHBriM8(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
