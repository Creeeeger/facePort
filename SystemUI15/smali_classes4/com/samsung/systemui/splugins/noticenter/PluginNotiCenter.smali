.class public interface abstract Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/systemui/splugins/SPlugin;


# annotations
.annotation runtime Lcom/samsung/systemui/splugins/annotations/ProvidesInterface;
    action = "com.samsung.systemui.action.PLUGIN_NOTICENTER"
    version = 0x1f41
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.samsung.systemui.action.PLUGIN_NOTICENTER"

.field public static final MAJOR_VERSION:I = 0x8

.field public static final MINOR_VERSION:I = 0x1

.field public static final VERSION:I = 0x1f41


# virtual methods
.method public abstract dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .annotation runtime Lcom/samsung/systemui/splugins/annotations/Requires;
        target = Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;
        version = 0xfa1
    .end annotation
.end method

.method public abstract enterKeyguard()V
.end method

.method public getVersion()I
    .locals 0

    const/16 p0, 0x1f41

    return p0
.end method

.method public abstract insert(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract requestNotify(Landroid/service/notification/StatusBarNotification;)V
.end method

.method public abstract requestVocHelp(Landroid/os/Bundle;Landroid/service/notification/StatusBarNotification;)V
    .annotation runtime Lcom/samsung/systemui/splugins/annotations/Requires;
        target = Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;
        version = 0xbb9
    .end annotation
.end method

.method public abstract setCallback(Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter$Callback;)V
.end method

.method public abstract unLock()V
.end method

.method public abstract updateSettings(Landroid/os/Bundle;)V
.end method
