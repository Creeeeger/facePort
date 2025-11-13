.class Lcom/samsung/android/settings/inputmethod/ShowKeyboardButtonPreferenceController$1;
.super Landroid/database/ContentObserver;
.source "ShowKeyboardButtonPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/inputmethod/ShowKeyboardButtonPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/inputmethod/ShowKeyboardButtonPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/inputmethod/ShowKeyboardButtonPreferenceController;Landroid/os/Handler;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/ShowKeyboardButtonPreferenceController$1;->this$0:Lcom/samsung/android/settings/inputmethod/ShowKeyboardButtonPreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    const-string p1, "ShowKeyboardButtonPreferenceController"

    const-string v0, "onChange called"

    .line 61
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/ShowKeyboardButtonPreferenceController$1;->this$0:Lcom/samsung/android/settings/inputmethod/ShowKeyboardButtonPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/inputmethod/ShowKeyboardButtonPreferenceController;->access$000(Lcom/samsung/android/settings/inputmethod/ShowKeyboardButtonPreferenceController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "show_keyboard_button"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 63
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/ShowKeyboardButtonPreferenceController$1;->this$0:Lcom/samsung/android/settings/inputmethod/ShowKeyboardButtonPreferenceController;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/inputmethod/ShowKeyboardButtonPreferenceController;->setChecked(Z)Z

    return-void
.end method
