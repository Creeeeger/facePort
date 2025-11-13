.class public final synthetic Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;

    iput-object p2, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->$r8$lambda$q1WzPYIhaYrd0w9bzMG0CBAi0oA(Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->$r8$lambda$4S51oY8BgCr9KUmYq4qmcVqAaWc(Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
