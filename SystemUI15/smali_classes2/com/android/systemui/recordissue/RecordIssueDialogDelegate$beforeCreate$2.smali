.class public final Lcom/android/systemui/recordissue/RecordIssueDialogDelegate$beforeCreate$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $dialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

.field public final synthetic this$0:Lcom/android/systemui/recordissue/RecordIssueDialogDelegate;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recordissue/RecordIssueDialogDelegate;Lcom/android/systemui/statusbar/phone/SystemUIDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate$beforeCreate$2;->this$0:Lcom/android/systemui/recordissue/RecordIssueDialogDelegate;

    iput-object p2, p0, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate$beforeCreate$2;->$dialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate$beforeCreate$2;->this$0:Lcom/android/systemui/recordissue/RecordIssueDialogDelegate;

    iget-object v0, v0, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate;->traceurMessageSender:Lcom/android/systemui/recordissue/TraceurMessageSender;

    iget-object p0, p0, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate$beforeCreate$2;->$dialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p0

    iget-boolean v1, v0, Lcom/android/systemui/recordissue/TraceurMessageSender;->isBound:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.android.traceur"

    const/high16 v3, 0x100000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.android.traceur.BindableTraceService"

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v0, v0, Lcom/android/systemui/recordissue/TraceurMessageSender;->traceurConnection:Lcom/android/systemui/recordissue/TraceurMessageSender$traceurConnection$1;

    const v2, 0x2000021

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "TraceurMessageSender"

    const-string v1, "failed to bind to Traceur\'s service"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
