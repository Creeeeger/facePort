.class public final Landroidx/profileinstaller/ProfileInstallReceiver$ResultDiagnostics;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;


# instance fields
.field public final synthetic this$0:Landroidx/profileinstaller/ProfileInstallReceiver;


# direct methods
.method public constructor <init>(Landroidx/profileinstaller/ProfileInstallReceiver;)V
    .locals 0

    iput-object p1, p0, Landroidx/profileinstaller/ProfileInstallReceiver$ResultDiagnostics;->this$0:Landroidx/profileinstaller/ProfileInstallReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResultReceived(ILjava/lang/Object;)V
    .locals 1

    sget-object v0, Landroidx/profileinstaller/ProfileInstaller;->LOG_DIAGNOSTICS:Landroidx/profileinstaller/ProfileInstaller$2;

    invoke-virtual {v0, p1, p2}, Landroidx/profileinstaller/ProfileInstaller$2;->onResultReceived(ILjava/lang/Object;)V

    iget-object p0, p0, Landroidx/profileinstaller/ProfileInstallReceiver$ResultDiagnostics;->this$0:Landroidx/profileinstaller/ProfileInstallReceiver;

    invoke-virtual {p0, p1}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

    return-void
.end method
