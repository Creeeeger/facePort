.class Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$4;
.super Ljava/lang/Object;
.source "SecVolumeLimiterSettings.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->showSetPasswordDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$4;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 321
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$4;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;

    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mUiStage:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$Stage;

    sget-object v0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$Stage;->ConfirmWrong:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$Stage;

    if-ne p1, v0, :cond_0

    .line 322
    sget-object p1, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$Stage;->NeedToConfirm:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$Stage;

    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->mUiStage:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$Stage;

    .line 324
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->-$$Nest$mupdateUi(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
