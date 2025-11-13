.class Lcom/samsung/android/settings/inputmethod/ShowKeyboardButtonPreferenceController$3;
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

    .line 75
    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/ShowKeyboardButtonPreferenceController$3;->this$0:Lcom/samsung/android/settings/inputmethod/ShowKeyboardButtonPreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    const-string p1, "ShowKeyboardButtonPreferenceController"

    const-string v0, "onChange called"

    .line 78
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/ShowKeyboardButtonPreferenceController$3;->this$0:Lcom/samsung/android/settings/inputmethod/ShowKeyboardButtonPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/inputmethod/ShowKeyboardButtonPreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/inputmethod/ShowKeyboardButtonPreferenceController;)Landroidx/preference/SecSwitchPreference;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/ShowKeyboardButtonPreferenceController$3;->this$0:Lcom/samsung/android/settings/inputmethod/ShowKeyboardButtonPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/inputmethod/ShowKeyboardButtonPreferenceController;->-$$Nest$mgetShowKeyboardButtonPreferenceState(Lcom/samsung/android/settings/inputmethod/ShowKeyboardButtonPreferenceController;)Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method
