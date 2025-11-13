.class Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback$3;
.super Ljava/lang/Object;
.source "SecVolumeLimiterSettings.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback;->showCheckPasswordDialog(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback;)V
    .locals 0

    .line 503
    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback$3;->this$1:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 505
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback$3;->this$1:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback;

    iget-object p1, p1, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->-$$Nest$fgetmPasswordEntry(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    .line 506
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback$3;->this$1:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback;

    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p0, p1}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->-$$Nest$msetNextEnabled(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;Z)V

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
