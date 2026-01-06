.class Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper$2;
.super Ljava/lang/Object;
.source "WorkProfileSysUiClientHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->showLastTryDialog(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;

.field final synthetic val$dismiss:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;Z)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper$2;->this$0:Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;

    iput-boolean p2, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper$2;->val$dismiss:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper$2;->val$dismiss:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper$2;->this$0:Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->access$000(Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;)Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->handleOnUerCancel(I)V

    :cond_0
    return-void
.end method
