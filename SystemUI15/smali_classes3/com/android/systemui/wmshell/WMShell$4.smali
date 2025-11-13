.class Lcom/android/systemui/wmshell/WMShell$4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/settings/UserTracker$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/wmshell/WMShell;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wmshell/WMShell;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wmshell/WMShell$4;->this$0:Lcom/android/systemui/wmshell/WMShell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProfilesChanged(Ljava/util/List;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell$4;->this$0:Lcom/android/systemui/wmshell/WMShell;

    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell;->mShell:Lcom/android/wm/shell/sysui/ShellInterface;

    invoke-interface {p0, p1}, Lcom/android/wm/shell/sysui/ShellInterface;->onUserProfilesChanged(Ljava/util/List;)V

    return-void
.end method

.method public final onUserChanged(ILandroid/content/Context;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell$4;->this$0:Lcom/android/systemui/wmshell/WMShell;

    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell;->mShell:Lcom/android/wm/shell/sysui/ShellInterface;

    invoke-interface {p0, p1, p2}, Lcom/android/wm/shell/sysui/ShellInterface;->onUserChanged(ILandroid/content/Context;)V

    return-void
.end method
