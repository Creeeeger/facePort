.class public final synthetic Lcom/android/systemui/pluginlock/PluginLockManagerImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/pluginlock/PluginLockManagerImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/pluginlock/PluginLockManagerImpl;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/pluginlock/PluginLockManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/pluginlock/PluginLockManagerImpl;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->$r8$lambda$pycnnkSB0oXpy4FB-MD42MJrdh4(Lcom/android/systemui/pluginlock/PluginLockManagerImpl;)V

    return-void

    :pswitch_0
    invoke-static {p0}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->$r8$lambda$Va8O9f3tyvgEysoKjHj_p_mAwl0(Lcom/android/systemui/pluginlock/PluginLockManagerImpl;)V

    return-void

    :pswitch_1
    invoke-static {p0}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->$r8$lambda$ceIVBBQO2uzBkJw-jkqb-xKDujY(Lcom/android/systemui/pluginlock/PluginLockManagerImpl;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
