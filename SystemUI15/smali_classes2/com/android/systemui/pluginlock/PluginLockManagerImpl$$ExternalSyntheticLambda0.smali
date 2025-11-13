.class public final synthetic Lcom/android/systemui/pluginlock/PluginLockManagerImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/pluginlock/PluginLockManagerImpl;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/pluginlock/PluginLockManagerImpl;II)V
    .locals 0

    iput p3, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/pluginlock/PluginLockManagerImpl;

    iput p2, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl$$ExternalSyntheticLambda0;->f$1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/pluginlock/PluginLockManagerImpl;

    iget p0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, p0}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->$r8$lambda$s1nxL9FvlNZFiw4eK-ZrtuPCnVk(Lcom/android/systemui/pluginlock/PluginLockManagerImpl;I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/pluginlock/PluginLockManagerImpl;

    iget p0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, p0}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->$r8$lambda$R80ELKNBeOBRryCOCI8bdIVoqUA(Lcom/android/systemui/pluginlock/PluginLockManagerImpl;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
