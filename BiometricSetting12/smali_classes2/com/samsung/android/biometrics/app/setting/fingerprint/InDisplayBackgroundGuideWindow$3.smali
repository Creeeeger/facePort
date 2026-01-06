.class Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow$3;
.super Ljava/lang/Object;
.source "InDisplayBackgroundGuideWindow.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;-><init>(Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field downPressed:Z

.field final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;


# direct methods
.method constructor <init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow$3;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow$3;->downPressed:Z

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-eq p2, v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow$3;->downPressed:Z

    if-nez v1, :cond_1

    iput-boolean v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow$3;->downPressed:Z

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow$3;->downPressed:Z

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_3

    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow$3;->downPressed:Z

    if-eqz v1, :cond_3

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow$3;->downPressed:Z

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow$3;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;->access$200(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;)Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->handleOnUerCancel(I)V

    :cond_3
    :goto_0
    return v2
.end method
