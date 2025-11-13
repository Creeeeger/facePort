.class Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment$1;
.super Landroid/text/style/ClickableSpan;
.source "BluetoothAudioTypeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;->linkify(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment$1;->this$0:Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 259
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.samsung.android.forest"

    .line 260
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.samsung.android.forest.OPEN_VOLUMEMONITOR_ONBOARDING"

    .line 261
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment$1;->this$0:Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 263
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment$1;->this$0:Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;->-$$Nest$fgetmScreenId(Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment$1;->this$0:Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->event_device_profiles_setting_audio_type_link:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .line 268
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const/4 v0, 0x1

    .line 269
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 271
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment$1;->this$0:Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$color;->sec_tips_description_link_text_color:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method
