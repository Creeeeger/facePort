.class public final synthetic Lcom/android/systemui/pluginlock/PluginLockManagerImpl$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/KeyguardFoldController$StateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/pluginlock/PluginLockManagerImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/pluginlock/PluginLockManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/pluginlock/PluginLockManagerImpl;

    return-void
.end method


# virtual methods
.method public final onFoldStateChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/pluginlock/PluginLockManagerImpl;

    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->onFolderStateChanged(Z)V

    return-void
.end method
