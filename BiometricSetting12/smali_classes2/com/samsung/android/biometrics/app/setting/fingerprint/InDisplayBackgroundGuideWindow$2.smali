.class Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow$2;
.super Ljava/lang/Object;
.source "InDisplayBackgroundGuideWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;-><init>(Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;


# direct methods
.method constructor <init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow$2;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow$2;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;->access$100(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;)Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->handleOnUerCancel(I)V

    return-void
.end method
